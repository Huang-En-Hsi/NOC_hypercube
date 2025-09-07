`include "defines.v"
module genPath(
    input wire  [4:0] num,
    output reg [7:0] data_0_o,
    output reg [5:0] data_1_o,
    output reg [3:0] data_2_o,
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
        m_i = (num>8)?{2'b00,m_0}:m_0+2;
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
        data_0_o[1:0] = 0;
        data_0_o[3:2] = 1;
        data_0_o[5:4] = 2;
        data_0_o[7:6] = 3;

        if(num>8)begin
        data_1_o[1:0] =data_0_o[(7-m_0) -:2];
        data_1_o[3:2] =((7-m_0+2)<=7)?data_0_o[(7-m_0+2) -:2]:0;
        data_1_o[5:4] =((7-m_0+4)<=7)?data_0_o[(7-m_0+4) -:2]:0;

        data_2_o[1:0] = 1;
        data_2_o[3:2] = 2;  
        end else begin
        data_1_o[1:0] = (n_0 > 1) ? n_0 - 1 : 0;
        data_1_o[3:2] = n_0;
        data_1_o[5:4] = (n_0 < 3) ? n_0 + 1 : 0;

        data_2_o[1:0] = ((n_0 + n_1 - 2) > 0 && (n_0 + n_1 - 2) < 4) ? (n_0 + n_1 - 2) : 0;
        data_2_o[3:2] = ((n_0 + n_1 - 1) > 0 && (n_0 + n_1 - 1) < 4) ? (n_0 + n_1 - 1) : 0;  
        end
        
    end

endmodule
