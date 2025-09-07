`include "defines.v"
module smallPath(
    input  wire [1:0]  group,
    input  wire [2:0]  len_0_i,
    input  wire [1:0]  len_1_i,
    input  wire [1:0]  len_2_i,
    input  wire [7:0]  data_0_i,
    input  wire [5:0]  data_1_i,
    input  wire [3:0]  data_2_i,
    output reg [31:0]   data_o
);

    reg [31:0] data_0_o;
    reg [15:0] data_1_o;
    reg [7:0] data_2_o;

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

    integer i;
    
    always @(*) begin
        for (i = 0; i < 16; i = i + 1) begin
            if (len_0_i < 4 && i > (1 << len_0_i) - 1)
                data_0_o[(i<<1) +:2] = 2'b0;
            else if (i==(1 << len_0_i) - 1)
                data_0_o[(i<<1) +:2] = data_0_i[ ((len_0_i<<1)-2) +:2];
            else
                data_0_o[(i<<1) +:2] = tb(i);
        end

        for (i = 0; i < 8; i = i + 1) begin
            if (len_1_i == 0 || i > (1 << len_1_i) - 1)
                data_1_o[(i<<1) +:2] = 2'b0;
            else if(i==(1 << len_1_i) - 1)
                data_1_o[(i<<1) +:2] = data_1_i[((len_1_i<<1)-2) +:2];
            else
                data_1_o[(i<<1) +:2] = ((tb(i) + data_1_i[0 +:2]) > 3) ? 0 : (tb(i) + data_1_i[0 +:2]);
            end

        for (i = 0; i < 4; i = i + 1) begin
            if (len_2_i == 0 || i > (1 << len_2_i) - 1)
                data_2_o[(i<<1) +:2] = 2'b0;
            else if(i==(1 << len_2_i) - 1)
                data_2_o[(i<<1) +:2] = data_2_i[(len_2_i<<1)-2 +:2];
            else
                data_2_o[(i<<1) +:2] = ((tb(i) + data_2_i[0 +:2]) > 3) ? 0 : (tb(i) + data_2_i[0 +:2]);
            end
    end
    /* verilator lint_off LATCH */
    always @(*)begin
        for (i = 0; i < 32; i = i + 2) begin
            if(group==1)begin
                data_o[i +:2]=data_0_o[i +:2];
            end else if(group==2)begin
                if(i>=(((1<<len_0_i)-1)<<1) && i<=(((1<<len_0_i)+(1<<len_1_i)-1)<<1))begin
                    data_o[i +:2]=(i==14 || i==(((1<<len_0_i)+(1<<len_1_i)-1)<<1))?3:
                    (i>14)?data_1_o[(i-((1<<len_0_i)<<1)) +:2]:
                    data_1_o[(i-(((1<<len_0_i)-1)<<1))+2 +:2];
                end else begin
                    data_o[i +:2]=data_0_o[i +:2];
                end
            end else if(group==3)begin
                if(i>=(((1<<len_0_i)-1)<<1) && i<(((1<<len_0_i)+(1<<len_1_i)-1)<<1))begin//group=2
                    data_o[i +:2]=(i==14)?3:data_1_o[(i-((1<<len_0_i)<<1)) +:2];
                end else if(i>=(((1<<len_0_i)+(1<<len_1_i)-1)<<1) && i<=(((1<<len_0_i)+(1<<len_1_i)+len_2_i-1)<<1))begin//group=3
                    data_o[i +:2]=(i==(((1<<len_0_i)+(1<<len_1_i)+len_2_i-1)<<1))?3:data_2_o[i-(((1<<len_0_i)+(1<<len_1_i)-1)<<1)+2 +:2];
                end else begin//group=1
                    data_o[i +:2]=data_0_o[i +:2];
                end
            end else begin
                data_o = 32'b0;
            end
        end
    end
endmodule

