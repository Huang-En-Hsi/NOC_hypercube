`include "defines.v"
module smallPath(
    input  wire [1:0]  group,
    input  wire [2:0]  len_0_i,
    input  wire [1:0]  len_1_i,
    input  wire [1:0]  len_2_i,
    input  wire [1:0]  data_0_i [0:3],
    input  wire [1:0]  data_1_i [0:2],
    input  wire [1:0]  data_2_i [0:1],
    output reg [1:0]   data_o [0:15]
);

    integer i;
    reg [1:0] data_0_o [0:15];
    reg [1:0] data_1_o [0:7];
    reg [1:0] data_2_o [0:3];


    //用最大步數建表 DIM=4,0102010301020103
    function [1:0] tb;
        input integer index;
        begin
            case (index)
                0 : tb = 2'd0;  1 : tb = 2'd1;
                2 : tb = 2'd0;  3 : tb = 2'd2;
                4 : tb = 2'd0;  5 : tb = 2'd1;
                6 : tb = 2'd0;  7 : tb = 2'd3;
                8 : tb = 2'd0;  9 : tb = 2'd1;
               10 : tb = 2'd0; 11 : tb = 2'd2;
               12 : tb = 2'd0; 13 : tb = 2'd1;
               14 : tb = 2'd0; 15 : tb = 2'd3;
                default: tb = 2'd0;
            endcase
        end
    endfunction

    
    always @(*) begin
        for (i = 0; i < 16; i = i + 1) begin
            if (len_0_i < 4 && i > (1 << len_0_i) - 1)
                data_0_o[i] = 0;
            else if (i==(1 << len_0_i) - 1)
                data_0_o[i] = data_0_i[ len_0_i-1];
            else
                data_0_o[i] = tb(i);
        end

        for (i = 0; i < 8; i = i + 1) begin
            if (len_1_i == 0 || i > (1 << len_1_i) - 1)
                data_1_o[i] = 0;
            else if(i==(1 << len_1_i) - 1)
                data_1_o[i] = data_1_i[len_1_i-1];
            else
                data_1_o[i] = ((tb(i) + data_1_i[0]) > 3) ? 0 : (tb(i) + data_1_i[0]);
            end

        for (i = 0; i < 4; i = i + 1) begin
            if (len_2_i == 0 || i > (1 << len_2_i) - 1)
                data_2_o[i] = 0;
            else if(i==(1 << len_2_i) - 1)
                data_2_o[i] = data_2_i[len_2_i-1];
            else
                data_2_o[i] = ((tb(i) + data_2_i[0]) > 3) ? 0 : (tb(i) + data_2_i[0]);
            end
    end

    always @(*)begin
            for (i = 0; i < 16; i = i + 1) begin
            if(group==1)begin
                data_o[i]=data_0_o[i];
            end
            if(group==2)begin
                if(i>=((1<<len_0_i)-1) && i<15)begin
                    data_o[i]=data_1_o[i-((1<<len_0_i)-1)+1];
                end else begin
                    data_o[i]=data_0_o[i];
                end
            end
            if(group==3)begin
                if(i>=((1<<len_0_i)-1) && i<((1<<len_0_i)-1+(1<<len_1_i)-2))begin//group=2
                    data_o[i]=data_1_o[i-((1<<len_0_i)-1)+1];
                end else if(i>=((1<<len_0_i)-1+(1<<len_1_i)-2) && i<15)begin//group=3
                    data_o[i]=data_2_o[i-((1<<len_0_i)-1+(1<<len_1_i)-2)+1];
                end else begin//group=1
                    data_o[i]=data_0_o[i];
                end
            end
        end
    end
endmodule