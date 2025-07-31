`include "defines.v"
module rtcomp #(parameter  ROUTERID = 0)(
    input wire clk,
    input wire reset,
    input wire test_mode,
    input wire [1:0] ivch, // 00 01 10 11
    input wire en, // 為了判斷是否為第一筆資料
    input wire [`DATA_WIDTH-1:0] idata,
    output reg [`DATA_WIDTH-1:0] odata,
    output reg [2:0] port,
    output reg [1:0] ovch // 00 01 10 11
);

wire [4:0] num;
assign num = (idata[`NUM_MSB:`NUM_LSB]<<1);//num*2
//genPath output  (input smallPath)
    wire  [1:0] data_0_o [0:3];
    wire  [1:0] data_1_o [0:2];
    wire  [1:0] data_2_o [0:1];
    wire  [2:0] len_0_o;
    wire  [1:0] len_1_o;
    wire  [1:0] len_2_o;
    wire  [1:0] group;
//smallPath ouput 
    wire  [1:0] path [0:15];
    genPath genpath (
            .num(num),
            .data_0_o(data_0_o),
            .data_1_o(data_1_o),
            .data_2_o(data_2_o),
            .len_0_o(len_0_o),
            .len_1_o(len_1_o),
            .len_2_o(len_2_o),
            .group(group)
        );
        smallPath smallpath (
            .group(group),
            .len_0_i(len_0_o),
            .len_1_i(len_1_o),
            .len_2_i(len_2_o),
            .data_0_i(data_0_o),
            .data_1_i(data_1_o),
            .data_2_i(data_2_o),
            .data_o(path)
        );

/*首先，由於資料是以negedge clk傳遞，在過程中，資料會先傳達到inputc.v中的所有需要data的地方，
  此時，rtcomp也會接收到dst_addr（特別是header flit因為資料在此），若是在clk = 0 同時 header flit傳
  進來時，沒有將路徑計算好（未用邏輯電路），當下一個clk進來時，header flit的資料將會遺失改變成其他的資料*/
    reg  [2:0] port0;
    reg  [2:0] port1;
    reg  [1:0] ovch0; 
    reg  [1:0] ovch1;

    assign port = en ? port0 : port1;
    assign ovch = en ? ovch0 : ovch1;
    
    always @(posedge clk) begin
        if (reset == 0) begin
            port1 <= 3'b0;
            ovch1 <= 2'b0;
        end else if (en) begin
            port1 <= port0;
            ovch1 <= ovch0;
        end
    end

integer i,j;
wire [3:0] idx;
wire [4:0] idx_port;
wire [5:0] idx_rdata;//wirt data
assign idx = idata[`IDX_MSB:`IDX_LSB];
assign idx_port=(idx<<1);
assign idx_rdata=(idx<<2);
/*
`DATA_MSB~18 (32 bit) wirt path
1 0 用來進行test
17~2 (16 bit) wirt ROUTERID
若16bit不夠寫走過的ROUTERID，會將剩下的寫到下一個封包
*/
always@(*)begin
    ovch = ivch;
    odata=idata;
    if(en)begin
        if(idx==0 && idata[`DATA_MSB:`DATA_LSB]==50'b0)begin//判斷是否是來源且是第一筆資料，只能處理偶數
            for(i=0,j=`DATA_MSB;i<16;i=i+1,j=j-2)begin
                    odata[j -: 2]=path[i];
            end
            port0=odata[`DATA_MSB-idx_port -:2];
            odata[`IDX_MSB:`IDX_LSB]=idx+1;//idx
            
        end else if(idx==(num-1)) begin
                port0=4;
                if(17 - idx_rdata >= 5)begin
                    odata[17-idx_rdata -: 4]=ROUTERID;
                end
        end else begin
            port0=idata[`DATA_MSB-idx_port -: 2];
            if(17 - idx_rdata >= 5)begin
                odata[17-idx_rdata -: 4]=ROUTERID;
            end
            odata[`IDX_MSB:`IDX_LSB]=idx+1;
        end
    end else begin
        odata[`DATA_MSB-idx_rdata -: 4]=ROUTERID;
        odata[`IDX_MSB:`IDX_LSB]=idx+1;
    end
    
end
endmodule