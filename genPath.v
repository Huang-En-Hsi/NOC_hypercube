`include "defines.v"
module genPath(
    input wire  [4:0] num,
    output reg  [1:0] data_0_o [0:3],
    output reg  [1:0] data_1_o [0:2],
    output reg  [1:0] data_2_o [0:1],
    output reg  [2:0] len_0_o,
    output reg  [1:0] len_1_o,
    output reg  [1:0] len_2_o,
    output reg  [1:0] group
);

    wire [2:0] n_0, n_1;
    wire [2:0] m_0, m_1;

    reg [4:0] m_i;

    findPower u_fp0 (
        .num_i(num),
        .n_o(n_0),
        .m_o(m_0)
    );

    always @(*) begin
        m_i = m_0 + 2;
    end

    findPower u_fp1 (
      .num_i(m_i),
        .n_o(n_1),
        .m_o(m_1)
    );

    always @(*) begin
        if (m_0 == 0) begin
            group = 1;
            len_0_o = n_0;
            len_1_o = 0;
            len_2_o = 0;
        end else if (m_0 != 0 && m_1 == 0) begin
            group = 2;
            len_0_o = n_0;
            len_1_o = n_1;
            len_2_o = 0;
        end else begin
            group = 3;
            len_0_o = n_0;
            len_1_o = n_1;
            len_2_o = m_1;
        end
    end

    always @(*) begin
        data_0_o[0] = 0;
        data_0_o[1] = 1;
        data_0_o[2] = 2;
        data_0_o[3] = 3;

        data_1_o[0] = (n_0 > 1) ? n_0 - 1 : 0;
        data_1_o[1] = n_0;
        data_1_o[2] = (n_0 < 3) ? n_0 + 1 : 0;

        data_2_o[0] = ((n_0 + n_1 - 2) > 0 && (n_0 + n_1 - 2) < 4) ? (n_0 + n_1 - 2) : 0;
        data_2_o[1] = ((n_0 + n_1 - 1) > 0 && (n_0 + n_1 - 1) < 4) ? (n_0 + n_1 - 1) : 0;
    end

endmodule

/*module findPower (
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
*/
