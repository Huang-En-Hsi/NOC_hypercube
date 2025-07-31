`include "defines.v"
module findPower (
  input  wire [4:0] num_i,
  output reg  [2:0] n_o,
  output reg  [2:0] m_o
);

    always @(*) begin
      if (num_i[4] == 1'b1) begin
            n_o = 3'd4;
        m_o = num_i[3:0];
        end else if (num_i[3] == 1'b1) begin
            n_o = 3'd3;
          m_o = {1'b0,num_i[2:0]};
        end else if (num_i[2] == 1'b1) begin
            n_o = 3'd2;
            m_o = {1'b0, num_i[1:0]};
        end else if (num_i[1] == 1'b1) begin
            n_o = 3'd1;
            m_o = {2'b00, num_i[0]};
        end else begin
            n_o = 3'd0;
            m_o = 3'b000;
        end
    end

endmodule