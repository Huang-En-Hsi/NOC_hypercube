`include "defines.v"
module detect #(parameter ROUTERID=0)(
    input wire clk,
    input wire reset,

    output reg test_set

);

/* 
 * data width 
 *   34 33 32         31 ~ 14     13  12 ---  11 10 9 8 7 6  5 4 3  2 1 0
 * --3 bit type----18 bit data----  vc  ---   `define NUM_NODE 2
`define F_NODE 8
`define T_D_WIDTH 35SRC_Y   SRC_X   DST_Y   DST_X
 */

/* FSM state */  //000 001 010 011 100
`define TD_STATE  3'b000  
`define ACK_STATE 3'b001  
//`define WAIT_FOR_NEXT 3'b010
`define FINISH_STATE  3'b011
`define CHECK_BORDER 3'b100  

reg  [2:0] state;
// reg  [1:0] data_count;
// assign data_count[0] = (faulty_check_e[0] && faulty_check_n[0] && faulty_check_s[0] && faulty_check_w[0]);
// assign data_count[1] = (faulty_check_e[1] && faulty_check_n[1] && faulty_check_s[1] && faulty_check_w[1]);


//TD 6 clk ACK 70 - 7 = 63 BORDER 129 - 81 = 48
always @(posedge clk) begin
    if (reset == 0) begin
        state <= `TD_STATE;
    end else begin
        case (state)
            `TD_STATE: begin
                if (counter >= 6) begin //status 6 clk
                    state <= `ACK_STATE;
                end else begin
                    state <= `TD_STATE;
                end
            end
            `ACK_STATE: begin
                if (counter < 76) begin //test_set 40 clk 60 clk
                    state <= `ACK_STATE;
                end else begin
                    state <= `CHECK_BORDER;
                end
            end
            `CHECK_BORDER: begin
                if (counter >= 76 && counter < (76 + (ROUTERID)*2)) begin
                    state <= `CHECK_BORDER;    
                end else if (counter >= (76 + (ROUTERID)*2)) begin ///用一個訊號來卡它 check_com == 1 則代表其已經回到傳送資料已經回到原點 又或者就用counter來計數
                    state <= `FINISH_STATE;
                end
            end
            `FINISH_STATE: begin
                if (counter >= (76 + (ROUTERID)*2)) begin //test_set == 1'b1
                    state <= `FINISH_STATE;
                end else if (counter == 0)begin
                    state <= `TD_STATE;
                end else begin
                    state <= state;
                end
            end
            default: begin
                state <= state;
            end
        endcase
    end
end

reg [7:0] counter; //
//計數器
always @(posedge clk) begin
    if (reset == 0) begin
        counter <= 5'b0;
    end else begin
        if (test_set == 1'b1) begin
            counter <= counter + 1;
        end else if (test_set == 1'b0) begin
            counter <= counter;    
        end
    end
end

//計算測試時斷結束
always @(*) begin
    if (counter >= (76 + (ROUTERID)*2+10)) begin
        test_set = 1'b0;
    end else begin
        test_set = 1'b1;
    end
end

endmodule
