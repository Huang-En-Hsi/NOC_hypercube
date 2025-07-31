`include "defines.v"
module noc (
    input wire clk,
    input wire reset,

    //n0
    input wire [`DATA_WIDTH - 1 : 0]    n0_idata_p0,
    input wire                          n0_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n0_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n0_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n0_odata_p0,
    output reg                          n0_ovalid_p0,
    output reg n0_test_set,

    //n1
    input wire [`DATA_WIDTH - 1 : 0]    n1_idata_p0,
    input wire                          n1_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n1_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n1_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n1_odata_p0,
    output reg                          n1_ovalid_p0,
    output reg n1_test_set,

    //n2
    input wire [`DATA_WIDTH - 1 : 0]    n2_idata_p0,
    input wire                          n2_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n2_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n2_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n2_odata_p0,
    output reg                          n2_ovalid_p0,
    output reg n2_test_set,

    //n3
    input wire [`DATA_WIDTH - 1 : 0]    n3_idata_p0,
    input wire                          n3_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n3_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n3_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n3_odata_p0,
    output reg                          n3_ovalid_p0,
    output reg n3_test_set,

    //n4
    input wire [`DATA_WIDTH - 1 : 0]    n4_idata_p0,
    input wire                          n4_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n4_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n4_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n4_odata_p0,
    output reg                          n4_ovalid_p0,
    output reg n4_test_set,

    //n5
    input wire [`DATA_WIDTH - 1 : 0]    n5_idata_p0,
    input wire                          n5_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n5_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n5_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n5_odata_p0,
    output reg                          n5_ovalid_p0,
    output reg n5_test_set,

    //n6
    input wire [`DATA_WIDTH - 1 : 0]    n6_idata_p0,
    input wire                          n6_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n6_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n6_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n6_odata_p0,
    output reg                          n6_ovalid_p0,
    output reg n6_test_set,

    //n7
    input wire [`DATA_WIDTH - 1 : 0]    n7_idata_p0,
    input wire                          n7_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n7_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n7_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n7_odata_p0,
    output reg                          n7_ovalid_p0,
    output reg n7_test_set,

    //n8
    input wire [`DATA_WIDTH - 1 : 0]    n8_idata_p0,
    input wire                          n8_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n8_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n8_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n8_odata_p0,
    output reg                          n8_ovalid_p0,
    output reg n8_test_set,

    //n9
    input wire [`DATA_WIDTH - 1 : 0]    n9_idata_p0,
    input wire                          n9_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n9_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n9_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n9_odata_p0,
    output reg                          n9_ovalid_p0,
    output reg n9_test_set,

    //n10
    input wire [`DATA_WIDTH - 1 : 0]    n10_idata_p0,
    input wire                          n10_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n10_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n10_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n10_odata_p0,
    output reg                          n10_ovalid_p0,
    output reg n10_test_set,

    //n11
    input wire [`DATA_WIDTH - 1 : 0]    n11_idata_p0,
    input wire                          n11_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n11_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n11_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n11_odata_p0,
    output reg                          n11_ovalid_p0,
    output reg n11_test_set,

    //n12
    input wire [`DATA_WIDTH - 1 : 0]    n12_idata_p0,
    input wire                          n12_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n12_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n12_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n12_odata_p0,
    output reg                          n12_ovalid_p0,
    output reg n12_test_set,

    //n13
    input wire [`DATA_WIDTH - 1 : 0]    n13_idata_p0,
    input wire                          n13_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n13_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n13_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n13_odata_p0,
    output reg                          n13_ovalid_p0,
    output reg n13_test_set,

    //n14
    input wire [`DATA_WIDTH - 1 : 0]    n14_idata_p0,
    input wire                          n14_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n14_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n14_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n14_odata_p0,
    output reg                          n14_ovalid_p0,
    output reg n14_test_set,

    //n15
    input wire [`DATA_WIDTH - 1 : 0]    n15_idata_p0,
    input wire                          n15_ivalid_p0,
    input wire [`VCH_WIDTH_NUM - 1 : 0] n15_ivch_p0,
    output reg [`VCH_WIDTH - 1 : 0]     n15_ordy_p0,
    output reg [`DATA_WIDTH - 1 : 0]    n15_odata_p0,
    output reg                          n15_ovalid_p0,
    output reg n15_test_set,
);

//n0 --> n1  port 0
wire [`DATA_WIDTH-1:0]      n0_odata_1;
wire                        n0_ovalid_1;
wire [`VCH_WIDTH_NUM-1:0]   n0_ovch_1;
wire [`VCH_WIDTH-1:0]       n0_olck_1;
wire [`VCH_WIDTH-1:0]       n0_oack_1;
        
//n0 --> n2 port 1
wire [`DATA_WIDTH-1:0]      n0_odata_2;
wire                        n0_ovalid_2;
wire [`VCH_WIDTH_NUM-1:0]   n0_ovch_2;
wire [`VCH_WIDTH-1:0]       n0_olck_2;
wire [`VCH_WIDTH-1:0]       n0_oack_2; 

//n0 --> n4 port 2
wire [`DATA_WIDTH-1:0]      n0_odata_4;
wire                        n0_ovalid_4;
wire [`VCH_WIDTH_NUM-1:0]   n0_ovch_4;
wire [`VCH_WIDTH-1:0]       n0_olck_4;
wire [`VCH_WIDTH-1:0]       n0_oack_4; 

//n0 --> n8 port 3
wire [`DATA_WIDTH-1:0]      n0_odata_8;
wire                        n0_ovalid_8;
wire [`VCH_WIDTH_NUM-1:0]   n0_ovch_8;
wire [`VCH_WIDTH-1:0]       n0_olck_8;
wire [`VCH_WIDTH-1:0]       n0_oack_8; 

//n0 -> n1 / n4 / n3 / n8

router #(0) n0(
    .clk(clk),
    .reset(reset),

    .idata_0(n1_odata_0),
    .ivalid_0(n1_ovalid_0),
    .ivch_0(n1_ovch_0),
    .oack_0(n0_oack_1),
    .ordy_0(),//x
    .olck_0(n0_olck_1),
    .iack_0(n1_oack_0),
    .ilck_0(n1_olck_0),
    .odata_0(n0_odata_1),
    .ovalid_0(n0_ovalid_1),
    .ovch_0(n0_ovch_1),

    .idata_1(n2_odata_0),
    .ivalid_1(n2_ovalid_0),
    .ivch_1(n2_ovch_0),
    .oack_1(n0_oack_2),
    .ordy_1(),//X
    .olck_1(n0_olck_2),
    .iack_1(n2_olck_0),
    .ilck_1(n2_olck_0),
    .odata_1(n0_odata_2),//
    .ovalid_1(n0_ovalid_2),
    .ovch_1(n0_ovch_2),

    .idata_2(n4_odata_0),
    .ivalid_2(n4_ovalid_0),
    .ivch_2(n4_ovch_0),
    .oack_2(n0_oack_4),
    .ordy_2(),//X
    .olck_2(n0_olck_4),
    .iack_2(n4_oack_0),
    .ilck_2(n4_olck_0),
    .odata_2(n0_odata_4),
    .ovalid_2(n0_ovalid_4),
    .ovch_2(n0_ovch_4),

    .idata_3(n8_odata_0),
    .ivalid_3(n8_ovalid_0),
    .ivch_3(n8_ovch_0),
    .oack_3(n0_oack_8),//X
    .ordy_3(),//X
    .olck_3(n0_olck_8),//X
    .iack_3(n8_oack_0),
    .ilck_3(n8_olck_0),
    .odata_3(n0_odata_8),//X
    .ovalid_3(n0_ovalid_8),//X
    .ovch_3(n0_ovch_8),//X

    .idata_4(n0_idata_p0),
    .ivalid_4(n0_ivalid_p0),
    .ivch_4(n0_ivch_p0),
    .oack_4(),//X
    .ordy_4(n0_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n0_odata_p0),
    .ovalid_4(n0_ovalid_p0),
    .ovch_4(),//X
    .test_set_to_input(n0_test_set)
);

//n1 --> n0 port 0
wire [`DATA_WIDTH-1:0]      n1_odata_0;
wire                        n1_ovalid_0;
wire [`VCH_WIDTH_NUM-1:0]   n1_ovch_0;
wire [`VCH_WIDTH-1:0]       n1_olck_0;
wire [`VCH_WIDTH-1:0]       n1_oack_0;

//n1 --> n3 port 1
wire [`DATA_WIDTH-1:0]      n1_odata_3;
wire                        n1_ovalid_3;
wire [`VCH_WIDTH_NUM-1:0]   n1_ovch_3;
wire [`VCH_WIDTH-1:0]       n1_olck_3;
wire [`VCH_WIDTH-1:0]       n1_oack_3;

//n1 --> n5 port 2
wire [`DATA_WIDTH-1:0]      n1_odata_5;
wire                        n1_ovalid_5;
wire [`VCH_WIDTH_NUM-1:0]   n1_ovch_5;
wire [`VCH_WIDTH-1:0]       n1_olck_5;
wire [`VCH_WIDTH-1:0]       n1_oack_5;

//n1 --> n9 port 3
wire [`DATA_WIDTH-1:0]      n1_odata_9;
wire                        n1_ovalid_9;
wire [`VCH_WIDTH_NUM-1:0]   n1_ovch_9;
wire [`VCH_WIDTH-1:0]       n1_olck_9;
wire [`VCH_WIDTH-1:0]       n1_oack_9;

//n1 -> n0/n3/n5/n9

router #(1) n1(
    .clk(clk),
    .reset(reset),

    .idata_0(n0_odata_1),
    .ivalid_0(n0_ovalid_1),
    .ivch_0(n0_ovch_1),
    .oack_0(n1_oack_0),
    .ordy_0(),//X
    .olck_0(n1_olck_0),
    .iack_0(n0_oack_1),
    .ilck_0(n0_olck_1),
    .odata_0(n1_odata_0),
    .ovalid_0(n1_ovalid_0),
    .ovch_0(n1_ovch_0),

    .idata_1(n3_odata_1),
    .ivalid_1(n3_ovalid_1),
    .ivch_1(n3_ovch_1),
    .oack_1(n1_oack_3),
    .ordy_1(),//X
    .olck_1(n1_olck_3),
    .iack_1(n3_oack_1),
    .ilck_1(n3_olck_1),
    .odata_1(n1_odata_3),
    .ovalid_1(n1_ovalid_3),
    .ovch_1(n1_ovch_3),

    .idata_2(n5_odata_1),
    .ivalid_2(n5_ovalid_1),
    .ivch_2(n5_ovch_1),
    .oack_2(n1_oack_5),
    .ordy_2(),//X
    .olck_2(n1_olck_5),
    .iack_2(n5_oack_1),
    .ilck_2(n5_olck_1),
    .odata_2(n1_odata_5),
    .ovalid_2(n1_ovalid_5),
    .ovch_2(n1_ovch_5),

    .idata_3(n9_odata_1),
    .ivalid_3(n9_ovalid_1),
    .ivch_3(n9_ovch_1),
    .oack_3(n1_oack_9),
    .ordy_3(),//X
    .olck_3(n1_olck_9),
    .iack_3(n9_oack_1),
    .ilck_3(n9_olck_1),
    .odata_3(n1_odata_9),
    .ovalid_3(n1_ovalid_9),
    .ovch_3(n1_ovch_9),

    .idata_4(n1_idata_p0),
    .ivalid_4(n1_ivalid_p0),
    .ivch_4(n1_ivch_p0),
    .oack_4(),//X
    .ordy_4(n1_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n1_odata_p0),
    .ovalid_4(n1_ovalid_p0),
    .ovch_4(),//X
    .test_set_to_input(n1_test_set)
);
//n2 --> n3 port 0
wire [`DATA_WIDTH-1:0]      n2_odata_3;
wire                        n2_ovalid_3;
wire [`VCH_WIDTH_NUM-1:0]   n2_ovch_3;
wire [`VCH_WIDTH-1:0]       n2_olck_3;
wire [`VCH_WIDTH-1:0]       n2_oack_3;


//n2 --> n0 port 1
wire [`DATA_WIDTH-1:0]      n2_odata_0;
wire                        n2_ovalid_0;
wire [`VCH_WIDTH_NUM-1:0]   n2_ovch_0;
wire [`VCH_WIDTH-1:0]       n2_olck_0;
wire [`VCH_WIDTH-1:0]       n2_oack_0;

//n2 --> n6 port 2
wire [`DATA_WIDTH-1:0]      n2_odata_6;
wire                        n2_ovalid_6;
wire [`VCH_WIDTH_NUM-1:0]   n2_ovch_6;
wire [`VCH_WIDTH-1:0]       n2_olck_6;
wire [`VCH_WIDTH-1:0]       n2_oack_6;

//n2 --> n10 port 3
wire [`DATA_WIDTH-1:0]      n2_odata_10;
wire                        n2_ovalid_10;
wire [`VCH_WIDTH_NUM-1:0]   n2_ovch_10;
wire [`VCH_WIDTH-1:0]       n2_olck_10;
wire [`VCH_WIDTH-1:0]       n2_oack_10;

//n2 -> n3 n0 n6 n10
router #(2) n2(
    .clk(clk),
    .reset(reset),

    .idata_0(n3_odata_2),
    .ivalid_0(n3_ovalid_2),
    .ivch_0(n3_ovch_2),
    .oack_0(n2_oack_3),//X
    .ordy_0(),//X
    .olck_0(n2_olck_3),//X
    .iack_0(n3_oack_2),
    .ilck_0(n3_olck_2),
    .odata_0(n2_odata_3),//X
    .ovalid_0(n2_ovalid_3),//X
    .ovch_0(n2_ovch_3),//X


    .idata_1(n0_odata_2),
    .ivalid_1(n0_ovalid_2),
    .ivch_1(n0_ovch_2),
    .oack_1(n2_oack_0),
    .ordy_1(),//X
    .olck_1(n2_olck_0),
    .iack_1(n0_oack_2),
    .ilck_1(n0_olck_2),
    .odata_1(n2_odata_0),
    .ovalid_1(n2_ovalid_0),
    .ovch_1(n2_ovch_0),

    .idata_2(n6_odata_2),
    .ivalid_2(n6_ovalid_2),
    .ivch_2(n6_ovch_2),
    .oack_2(n2_oack_6),
    .ordy_2(),//X
    .olck_2(n2_olck_6),
    .iack_2(n6_oack_2),
    .ilck_2(n6_olck_2),
    .odata_2(n2_odata_6),
    .ovalid_2(n2_ovalid_6),
    .ovch_2(n2_ovch_6),

    .idata_3(n10_odata_2),
    .ivalid_3(n10_ovalid_2),
    .ivch_3(n10_ovch_2),
    .oack_3(n2_oack_10),
    .ordy_3(),//X
    .olck_3(n2_olck_10),
    .iack_3(n10_oack_2),
    .ilck_3(n10_olck_2),
    .odata_3(n2_odata_10),
    .ovalid_3(n2_ovalid_10),
    .ovch_3(n2_ovch_10),

    .idata_4(n2_idata_p0),
    .ivalid_4(n2_ivalid_p0),
    .ivch_4(n2_ivch_p0),
    .oack_4(),//X
    .ordy_4(n2_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n2_odata_p0),
    .ovalid_4(n2_ovalid_p0),
    .ovch_4(),//x
    .test_set_to_input(n2_test_set)
);

//n3 --> n2 port 0
wire [`DATA_WIDTH-1:0]      n3_odata_2;
wire                        n3_ovalid_2;
wire [`VCH_WIDTH_NUM-1:0]   n3_ovch_2;
wire [`VCH_WIDTH-1:0]       n3_olck_2;
wire [`VCH_WIDTH-1:0]       n3_oack_2;
//n3 --> n1 port 1
wire [`DATA_WIDTH-1:0]      n3_odata_1;
wire                        n3_ovalid_1;
wire [`VCH_WIDTH_NUM-1:0]   n3_ovch_1;
wire [`VCH_WIDTH-1:0]       n3_olck_1;
wire [`VCH_WIDTH-1:0]       n3_oack_1;
//n3 --> n7 port 2
wire [`DATA_WIDTH-1:0]      n3_odata_7;
wire                        n3_ovalid_7;
wire [`VCH_WIDTH_NUM-1:0]   n3_ovch_7;
wire [`VCH_WIDTH-1:0]       n3_olck_7;
wire [`VCH_WIDTH-1:0]       n3_oack_7;
//n3 --> n11 port 3
wire [`DATA_WIDTH-1:0]      n3_odata_11;
wire                        n3_ovalid_11;
wire [`VCH_WIDTH_NUM-1:0]   n3_ovch_11;
wire [`VCH_WIDTH-1:0]       n3_olck_11;
wire [`VCH_WIDTH-1:0]       n3_oack_11;
//n3 -> n2/n1/n7/n11
router #(3) n3(
    .clk(clk),
    .reset(reset),

    .idata_0(n2_odata_3),
    .ivalid_0(n2_ovalid_3),
    .ivch_0(n2_ovch_3),
    .oack_0(n3_oack_2),//X
    .ordy_0(),//X
    .olck_0(n3_olck_2),//X
    .iack_0(n2_oack_3),
    .ilck_0(n2_olck_3),
    .odata_0(n3_odata_2),//X
    .ovalid_0(n3_ovalid_2),//X
    .ovch_0(n3_ovch_2),//X

    .idata_1(n1_odata_3),//.idata_1(),
    .ivalid_1(n1_ovalid_3),
    .ivch_1(n1_ovch_3),
    .oack_1(n3_oack_1),
    .ordy_1(),//X
    .olck_1(n3_olck_1),
    .iack_1(n1_oack_3),
    .ilck_1(n1_olck_3),
    .odata_1(n3_odata_1),
    .ovalid_1(n3_ovalid_1),
    .ovch_1(n3_ovch_1),

    .idata_2(n7_odata_3),
    .ivalid_2(n7_ovalid_3),
    .ivch_2(n7_ovch_3),
    .oack_2(n3_oack_7),
    .ordy_2(),//X
    .olck_2(n3_olck_7),
    .iack_2(n7_oack_3),
    .ilck_2(n7_olck_3),
    .odata_2(n3_odata_7),
    .ovalid_2(n3_ovalid_7),
    .ovch_2(n3_ovch_7),

    .idata_3(n11_odata_3),
    .ivalid_3(n11_ovalid_3),
    .ivch_3(n11_ovch_3),
    .oack_3(n3_oack_11),
    .ordy_3(),
    .olck_3(n3_olck_11),
    .iack_3(n11_oack_3),
    .ilck_3(n11_olck_3),
    .odata_3(n3_odata_11),
    .ovalid_3(n3_ovalid_11),
    .ovch_3(n3_ovch_11),

    .idata_4(n3_idata_p0),
    .ivalid_4(n3_ivalid_p0),
    .ivch_4(n3_ivch_p0),
    .oack_4(),//X
    .ordy_4(n3_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n3_odata_p0),
    .ovalid_4(n3_ovalid_p0),
    .ovch_4(),//X
    .test_set_to_input(n3_test_set)
);

//n4 --> n5 port 0
wire [`DATA_WIDTH-1:0]      n4_odata_5;
wire                        n4_ovalid_5;
wire [`VCH_WIDTH_NUM-1:0]   n4_ovch_5;
wire [`VCH_WIDTH-1:0]       n4_olck_5;
wire [`VCH_WIDTH-1:0]       n4_oack_5;
//n4 --> n6 port 1
wire [`DATA_WIDTH-1:0]      n4_odata_6;
wire                        n4_ovalid_6;
wire [`VCH_WIDTH_NUM-1:0]   n4_ovch_6;
wire [`VCH_WIDTH-1:0]       n4_olck_6;
wire [`VCH_WIDTH-1:0]       n4_oack_6;
//n4 --> n0 port 2
wire [`DATA_WIDTH-1:0]      n4_odata_0;
wire                        n4_ovalid_0;
wire [`VCH_WIDTH_NUM-1:0]   n4_ovch_0;
wire [`VCH_WIDTH-1:0]       n4_olck_0;
wire [`VCH_WIDTH-1:0]       n4_oack_0;
//n4 --> n12 port3
wire [`DATA_WIDTH-1:0]      n4_odata_12;
wire                        n4_ovalid_12;
wire [`VCH_WIDTH_NUM-1:0]   n4_ovch_12;
wire [`VCH_WIDTH-1:0]       n4_olck_12;
wire [`VCH_WIDTH-1:0]       n4_oack_12;
//n4 -> n5/n6/n0/n12
router #(4) n4(
    .clk(clk),
    .reset(reset),

    .idata_0(n5_odata_4),
    .ivalid_0(n5_ovalid_4),
    .ivch_0(n5_ovch_4),
    .oack_0(n4_oack_5),//X
    .ordy_0(),//X
    .olck_0(n4_olck_5),//X
    .iack_0(n5_oack_4),
    .ilck_0(n5_olck_4),
    .odata_0(n4_odata_5),//X
    .ovalid_0(n4_ovalid_5),//X
    .ovch_0(n4_ovch_5),//X

    .idata_1(n6_odata_4),
    .ivalid_1(n6_ovalid_4),
    .ivch_1(n6_ovch_4),
    .oack_1(n4_oack_6),
    .ordy_1(),//X
    .olck_1(n4_olck_6),
    .iack_1(n6_oack_4),
    .ilck_1(n6_olck_4),
    .odata_1(n4_odata_6),
    .ovalid_1(n4_ovalid_6),
    .ovch_1(n4_ovch_6),

    .idata_2(n0_odata_4),
    .ivalid_2(n0_ovalid_4),
    .ivch_2(n0_ovch_4),
    .oack_2(n4_oack_0),
    .ordy_2(),//X
    .olck_2(n4_olck_0),
    .iack_2(n0_oack_4),
    .ilck_2(n0_olck_4),
    .odata_2(n4_odata_0),
    .ovalid_2(n4_ovalid_0),
    .ovch_2(n4_ovch_0),

    .idata_3(n12_odata_4),
    .ivalid_3(n12_ovalid_4),
    .ivch_3(n12_ovch_4),
    .oack_3(n4_oack_12),
    .ordy_3(),//X
    .olck_3(n4_olck_12),
    .iack_3(n12_oack_4),
    .ilck_3(n12_olck_4),
    .odata_3(n4_odata_12),
    //.odata_3(),
    .ovalid_3(n4_ovalid_12),
    .ovch_3(n4_ovch_12),

    .idata_4(n4_idata_p0),
    .ivalid_4(n4_ivalid_p0),
    .ivch_4(n4_ivch_p0),
    .oack_4(),//X
    .ordy_4(n4_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n4_odata_p0),
    .ovalid_4(n4_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n4_test_set)
);

//n5 --> n4 port 0
wire [`DATA_WIDTH-1:0]      n5_odata_4;
wire                        n5_ovalid_4;
wire [`VCH_WIDTH_NUM-1:0]   n5_ovch_4;
wire [`VCH_WIDTH-1:0]       n5_olck_4;
wire [`VCH_WIDTH-1:0]       n5_oack_4;
//n5 --> n7 port 1
wire [`DATA_WIDTH-1:0]      n5_odata_7;
wire                        n5_ovalid_7;
wire [`VCH_WIDTH_NUM-1:0]   n5_ovch_7;
wire [`VCH_WIDTH-1:0]       n5_olck_7;
wire [`VCH_WIDTH-1:0]       n5_oack_7;
//n5 --> n1 port 2
wire [`DATA_WIDTH-1:0]      n5_odata_1;
wire                        n5_ovalid_1;
wire [`VCH_WIDTH_NUM-1:0]   n5_ovch_1;
wire [`VCH_WIDTH-1:0]       n5_olck_1;
wire [`VCH_WIDTH-1:0]       n5_oack_1;
//n5 --> n13 port 3
wire [`DATA_WIDTH-1:0]      n5_odata_13;
wire                        n5_ovalid_13;
wire [`VCH_WIDTH_NUM-1:0]   n5_ovch_13;
wire [`VCH_WIDTH-1:0]       n5_olck_13;
wire [`VCH_WIDTH-1:0]       n5_oack_13;
//n5 -> n4/n7/n1/n13
router #(5) n5(
    .clk(clk),
    .reset(reset),

    .idata_0(n4_odata_5),
    .ivalid_0(n4_ovalid_5),
    .ivch_0(n4_ovch_5),
    .oack_0(n5_oack_4),//X
    .ordy_0(),//X
    .olck_0(n5_olck_4),//X
    .iack_0(n4_oack_5),
    .ilck_0(n4_olck_5),
    .odata_0(n5_odata_4),//X
    .ovalid_0(n5_ovalid_4),//X
    .ovch_0(n5_ovch_4),//X

    .idata_1(n7_odata_5),
    .ivalid_1(n7_ovalid_5),
    .ivch_1(n7_ovch_5),
    .oack_1(n5_oack_7),//X
    .ordy_1(),//X
    .olck_1(n5_olck_7),//X
    .iack_1(n7_oack_5),
    .ilck_1(n7_olck_5),
    .odata_1(n5_odata_7),//X
    .ovalid_1(n5_ovalid_7),//X
    .ovch_1(n5_ovch_7),//X

    .idata_2(n1_odata_5),
    .ivalid_2(n1_ovalid_5),
    .ivch_2(n1_ovch_5),
    .oack_2(n5_oack_1),
    .ordy_2(),//X
    .olck_2(n5_olck_1),
    .iack_2(n1_oack_5),
    .ilck_2(n1_olck_5),
    .odata_2(n5_odata_1),
    .ovalid_2(n5_ovalid_1),
    .ovch_2(n5_ovch_1),

    .idata_3(n13_odata_5),
    .ivalid_3(n13_ovalid_5),
    .ivch_3(n13_ovch_5),
    .oack_3(n5_oack_13),
    .ordy_3(),//X
    .olck_3(n5_olck_13),
    .iack_3(n13_oack_5),
    .ilck_3(n13_olck_5),
    .odata_3(n5_odata_13),
    .ovalid_3(n5_ovalid_13),
    .ovch_3(n5_ovch_13),

    .idata_4(n5_idata_p0),
    .ivalid_4(n5_ivalid_p0),
    .ivch_4(n5_ivch_p0),
    .oack_4(),//X
    .ordy_4(n5_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n5_odata_p0),
    .ovalid_4(n5_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n5_test_set)
    
);

//n6 --> n7 port 0
wire [`DATA_WIDTH-1:0]      n6_odata_7;
wire                        n6_ovalid_7;
wire [`VCH_WIDTH_NUM-1:0]   n6_ovch_7;
wire [`VCH_WIDTH-1:0]       n6_olck_7;
wire [`VCH_WIDTH-1:0]       n6_oack_7;
//n6 --> n4 port 1
wire [`DATA_WIDTH-1:0]      n6_odata_4;
wire                        n6_ovalid_4;
wire [`VCH_WIDTH_NUM-1:0]   n6_ovch_4;
wire [`VCH_WIDTH-1:0]       n6_olck_4;
wire [`VCH_WIDTH-1:0]       n6_oack_4;
//n6 --> n2 port 2
wire [`DATA_WIDTH-1:0]      n6_odata_2;
wire                        n6_ovalid_2;
wire [`VCH_WIDTH_NUM-1:0]   n6_ovch_2;
wire [`VCH_WIDTH-1:0]       n6_olck_2;
wire [`VCH_WIDTH-1:0]       n6_oack_2;
//n6 --> n14 port 3
wire [`DATA_WIDTH-1:0]      n6_odata_14;
wire                        n6_ovalid_14;
wire [`VCH_WIDTH_NUM-1:0]   n6_ovch_14;
wire [`VCH_WIDTH-1:0]       n6_olck_14;
wire [`VCH_WIDTH-1:0]       n6_oack_14;
//n6 -> n7/n4/n2/n14

router #(6) n6(
    .clk(clk),
    .reset(reset),

    .idata_0(n7_odata_6),
    .ivalid_0(n7_ovalid_6),
    .ivch_0(n7_ovch_6),
    .oack_0(n6_oack_7),
    .ordy_0(),//X
    .olck_0(n6_olck_7),
    .iack_0(n7_oack_6),
    .ilck_0(n7_olck_6),
    .odata_0(n6_odata_7),
    .ovalid_0(n6_ovalid_7),
    .ovch_0(n6_ovch_7),

    .idata_1(n4_odata_6),
    .ivalid_1(n4_ovalid_6),
    .ivch_1(n4_ovch_6),
    .oack_1(n6_oack_4),
    .ordy_1(),//X
    .olck_1(n6_olck_4),
    .iack_1(n4_oack_6),
    .ilck_1(n4_olck_6),
    .odata_1(n6_odata_4),
    .ovalid_1(n6_ovalid_4),
    .ovch_1(n6_ovch_4),

    .idata_2(n2_odata_6),
    .ivalid_2(n2_ovalid_6),
    .ivch_2(n2_ovch_6),
    .oack_2(n6_oack_2),
    .ordy_2(),//X
    .olck_2(n6_olck_2),
    .iack_2(n2_oack_6),
    .ilck_2(n2_oack_6),
    .odata_2(n6_odata_2),
    .ovalid_2(n6_ovalid_2),
    .ovch_2(n6_ovch_2),

    .idata_3(n14_odata_6),
    .ivalid_3(n14_ovalid_6),
    .ivch_3(n14_ovch_6),
    .oack_3(n6_oack_14),//X
    .ordy_3(),//X
    .olck_3(n6_olck_14),//X
    .iack_3(n14_oack_6),
    .ilck_3(n14_olck_6),
    .odata_3(n6_odata_14),//X
    .ovalid_3(n6_ovalid_14),//X
    .ovch_3(n6_ovch_14),//X

    .idata_4(n6_idata_p0),
    .ivalid_4(n6_ivalid_p0),
    .ivch_4(n6_ivch_p0),
    .oack_4(),//X
    .ordy_4(n6_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n6_odata_p0),
    .ovalid_4(n6_ovalid_p0),
    .ovch_4(),//X
    .test_set_to_input(n6_test_set)
);

//n7 --> n6 port 0
wire [`DATA_WIDTH-1:0]      n7_odata_6;
wire                        n7_ovalid_6;
wire [`VCH_WIDTH_NUM-1:0]   n7_ovch_6;
wire [`VCH_WIDTH-1:0]       n7_olck_6;
wire [`VCH_WIDTH-1:0]       n7_oack_6;
//n7 --> n5 port 1
wire [`DATA_WIDTH-1:0]      n7_odata_5;
wire                        n7_ovalid_5;
wire [`VCH_WIDTH_NUM-1:0]   n7_ovch_5;
wire [`VCH_WIDTH-1:0]       n7_olck_5;
wire [`VCH_WIDTH-1:0]       n7_oack_5;
//n7 --> n3 port 2
wire [`DATA_WIDTH-1:0]      n7_odata_3;
wire                        n7_ovalid_3;
wire [`VCH_WIDTH_NUM-1:0]   n7_ovch_3;
wire [`VCH_WIDTH-1:0]       n7_olck_3;
wire [`VCH_WIDTH-1:0]       n7_oack_3;
//n7 --> n15 port 3
wire [`DATA_WIDTH-1:0]      n7_odata_15;
wire                        n7_ovalid_15;
wire [`VCH_WIDTH_NUM-1:0]   n7_ovch_15;
wire [`VCH_WIDTH-1:0]       n7_olck_15;
wire [`VCH_WIDTH-1:0]       n7_oack_15;
//n7 -> 6 5 3 15
router #(7) n7(
    .clk(clk),
    .reset(reset),

    .idata_0(n6_odata_7),
    .ivalid_0(n6_ovalid_7),
    .ivch_0(n6_ovch_7),
    .oack_0(n7_oack_6),
    .ordy_0(),//X
    .olck_0(n7_olck_6),
    .iack_0(n6_oack_7),
    .ilck_0(n6_olck_7),
    .odata_0(n7_odata_6),
    .ovalid_0(n7_ovalid_6),
    .ovch_0(n7_ovch_6),

    .idata_1(n5_odata_7),
    .ivalid_1(n5_ovalid_7),
    .ivch_1(n5_ovch_7),
    .oack_1(n7_oack_5),
    .ordy_1(),//X
    .olck_1(n7_olck_5),
    .iack_1(n5_oack_7),
    .ilck_1(n5_olck_7),
    .odata_1(n7_odata_5),
    .ovalid_1(n7_ovalid_5),
    .ovch_1(n7_ovch_5),

    .idata_2(n3_odata_7),
    .ivalid_2(n3_ovalid_7),
    .ivch_2(n3_ovch_7),
    .oack_2(n7_oack_3),
    .ordy_2(),//X
    .olck_2(n7_olck_3),
    .iack_2(n3_oack_7),
    .ilck_2(n3_olck_7),
    .odata_2(n7_odata_3),
    .ovalid_2(n7_ovalid_3),
    .ovch_2(n7_ovch_3),

    .idata_3(n15_odata_7),
    .ivalid_3(n15_ovalid_7),
    .ivch_3(n15_ovch_7),
    .oack_3(n7_oack_15),
    .ordy_3(),//X
    .olck_3(n7_olck_15),
    .iack_3(n15_oack_7),
    .ilck_3(n15_olck_7),
    .odata_3(n7_odata_15),
    .ovalid_3(n7_ovalid_15),
    .ovch_3(n7_ovch_15),

    .idata_4(n7_idata_p0),
    .ivalid_4(n7_ivalid_p0),
    .ivch_4(n7_ivch_p0),
    .oack_4(),//X
    .ordy_4(n7_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n7_odata_p0),
    .ovalid_4(n7_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n7_test_set)
);

//n8 --> n9 port 0
wire [`DATA_WIDTH-1:0]      n8_odata_9;
wire                        n8_ovalid_9;
wire [`VCH_WIDTH_NUM-1:0]   n8_ovch_9;
wire [`VCH_WIDTH-1:0]       n8_olck_9;
wire [`VCH_WIDTH-1:0]       n8_oack_9;
//n8 --> n10 port 1
wire [`DATA_WIDTH-1:0]      n8_odata_10;
wire                        n8_ovalid_10;
wire [`VCH_WIDTH_NUM-1:0]   n8_ovch_10;
wire [`VCH_WIDTH-1:0]       n8_olck_10;
wire [`VCH_WIDTH-1:0]       n8_oack_10;
//n8 --> n12 port 2
wire [`DATA_WIDTH-1:0]      n8_odata_12;
wire                        n8_ovalid_12;
wire [`VCH_WIDTH_NUM-1:0]   n8_ovch_12;
wire [`VCH_WIDTH-1:0]       n8_olck_12;
wire [`VCH_WIDTH-1:0]       n8_oack_12;
//n8 --> n0 port 3
wire [`DATA_WIDTH-1:0]      n8_odata_0;
wire                        n8_ovalid_0;
wire [`VCH_WIDTH_NUM-1:0]   n8_ovch_0;
wire [`VCH_WIDTH-1:0]       n8_olck_0;
wire [`VCH_WIDTH-1:0]       n8_oack_0;
//n8 -> 9 10 12 0
router #(8) n8(
    .clk(clk),
    .reset(reset),

    .idata_0(n9_odata_8),
    .ivalid_0(n9_ovalid_8),
    .ivch_0(n9_ovch_8),
    .oack_0(n8_oack_9),
    .ordy_0(),//X
    .olck_0(n8_olck_9),
    .iack_0(n9_oack_8),
    .ilck_0(n9_olck_8),
    .odata_0(n8_odata_9),
    .ovalid_0(n8_ovalid_9),
    .ovch_0(n8_ovch_9),

    .idata_1(n10_odata_8),
    .ivalid_1(n10_ovalid_8),
    .ivch_1(n10_ovch_8),
    .oack_1(n8_oack_10),
    .ordy_1(),//X
    .olck_1(n8_olck_10),
    .iack_1(n10_oack_8),
    .ilck_1(n10_olck_8),
    .odata_1(n8_odata_10),
    .ovalid_1(n8_ovalid_10),
    .ovch_1(n8_ovch_10),

    .idata_2(n12_odata_8),
    .ivalid_2(n12_ovalid_8),
    .ivch_2(n12_ovch_8),
    .oack_2(n8_oack_12),
    .ordy_2(),//X
    .olck_2(n8_olck_12),
    .iack_2(n12_oack_8),
    .ilck_2(n12_olck_8),
    .odata_2(n8_odata_12),
    .ovalid_2(n8_ovalid_12),
    .ovch_2(n8_ovch_12),

    .idata_3(n0_odata_8),
    .ivalid_3(n0_ovalid_8),
    .ivch_3(n0_ovch_8),
    .oack_3(n8_oack_0),
    .ordy_3(),//X
    .olck_3(n8_olck_0),
    .iack_3(n0_oack_8),
    .ilck_3(n0_olck_8),
    .odata_3(n8_odata_0),
    .ovalid_3(n8_ovalid_0),
    .ovch_3(n8_ovch_0),

    .idata_4(n8_idata_p0),
    .ivalid_4(n8_ivalid_p0),
    .ivch_4(n8_ivch_p0),
    .oack_4(),//X
    .ordy_4(n8_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n8_odata_p0),
    .ovalid_4(n8_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n8_test_set)
);

//n9 --> n8 port 0
wire [`DATA_WIDTH-1:0]      n9_odata_8;
wire                        n9_ovalid_8;
wire [`VCH_WIDTH_NUM-1:0]   n9_ovch_8;
wire [`VCH_WIDTH-1:0]       n9_olck_8;
wire [`VCH_WIDTH-1:0]       n9_oack_8;
//n9 --> n11 port 1
wire [`DATA_WIDTH-1:0]      n9_odata_11;
wire                        n9_ovalid_11;
wire [`VCH_WIDTH_NUM-1:0]   n9_ovch_11;
wire [`VCH_WIDTH-1:0]       n9_olck_11;
wire [`VCH_WIDTH-1:0]       n9_oack_11;
//n9 --> n13 port 2
wire [`DATA_WIDTH-1:0]      n9_odata_13;
wire                        n9_ovalid_13;
wire [`VCH_WIDTH_NUM-1:0]   n9_ovch_13;
wire [`VCH_WIDTH-1:0]       n9_olck_13;
wire [`VCH_WIDTH-1:0]       n9_oack_13;
//n9 --> n1 port 3
wire [`DATA_WIDTH-1:0]      n9_odata_1;
wire                        n9_ovalid_1;
wire [`VCH_WIDTH_NUM-1:0]   n9_ovch_1;
wire [`VCH_WIDTH-1:0]       n9_olck_1;
wire [`VCH_WIDTH-1:0]       n9_oack_1;
//n9 -> 8 11 13 1
router #(9) n9(
    .clk(clk),
    .reset(reset),

    .idata_0(n8_odata_9),
    .ivalid_0(n8_ovalid_9),
    .ivch_0(n8_ovch_9),
    .oack_0(n9_oack_8),
    .ordy_0(),//X
    .olck_0(n9_olck_8),
    .iack_0(n8_oack_9),
    .ilck_0(n8_olck_9),
    .odata_0(n9_odata_8),
    .ovalid_0(n9_ovalid_8),
    .ovch_0(n9_ovch_8),

    .idata_1(n11_odata_9),
    .ivalid_1(n11_ovalid_9),
    .ivch_1(n11_ovch_9),
    .oack_1(n9_oack_11),
    .ordy_1(),//X
    .olck_1(n9_olck_11),
    .iack_1(n11_oack_9),
    .ilck_1(n11_olck_9),
    .odata_1(n9_odata_11),
    .ovalid_1(n9_ovalid_11),
    .ovch_1(n9_ovch_11),

    .idata_2(n13_odata_9),
    .ivalid_2(n13_ovalid_9),
    .ivch_2(n13_ovch_9),
    .oack_2(n9_oack_13),
    .ordy_2(),//X
    .olck_2(n9_olck_13),
    .iack_2(n13_oack_9),
    .ilck_2(n13_olck_9),
    .odata_2(n9_odata_13),
    .ovalid_2(n9_ovalid_13),
    .ovch_2(n9_ovch_13),

    .idata_3(n1_odata_9),
    .ivalid_3(n1_ovalid_9),
    .ivch_3(n1_ovch_9),
    .oack_3(n9_oack_1),
    .ordy_3(),//X
    .olck_3(n9_olck_1),
    .iack_3(n1_oack_9),
    .ilck_3(n1_olck_9),
    .odata_3(n9_odata_1),
    .ovalid_3(n9_ovalid_1),
    .ovch_3(n9_ovch_1),

    .idata_4(n9_idata_p0),
    .ivalid_4(n9_ivalid_p0),
    .ivch_4(n9_ivch_p0),
    .oack_4(),//X
    .ordy_4(n9_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n9_odata_p0),
    .ovalid_4(n9_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n9_test_set)
);

//n10 --> n11 port 0
wire [`DATA_WIDTH-1:0]      n10_odata_11;
wire                        n10_ovalid_11;
wire [`VCH_WIDTH_NUM-1:0]   n10_ovch_11;
wire [`VCH_WIDTH-1:0]       n10_olck_11;
wire [`VCH_WIDTH-1:0]       n10_oack_11;
//n10 --> n8 port 1
wire [`DATA_WIDTH-1:0]      n10_odata_8;
wire                        n10_ovalid_8;
wire [`VCH_WIDTH_NUM-1:0]   n10_ovch_8;
wire [`VCH_WIDTH-1:0]       n10_olck_8;
wire [`VCH_WIDTH-1:0]       n10_oack_8;
//n10 --> n14 port 2
wire [`DATA_WIDTH-1:0]      n10_odata_14;
wire                        n10_ovalid_14;
wire [`VCH_WIDTH_NUM-1:0]   n10_ovch_14;
wire [`VCH_WIDTH-1:0]       n10_olck_14;
wire [`VCH_WIDTH-1:0]       n10_oack_14;
//n10 --> n2 port 3
wire [`DATA_WIDTH-1:0]      n10_odata_2;
wire                        n10_ovalid_2;
wire [`VCH_WIDTH_NUM-1:0]   n10_ovch_2;
wire [`VCH_WIDTH-1:0]       n10_olck_2;
wire [`VCH_WIDTH-1:0]       n10_oack_2;
//n10 -> 11 8 14 2
router #(10) n10(
    .clk(clk),
    .reset(reset),

    .idata_0(n11_odata_10),
    .ivalid_0(n11_ovalid_10),
    .ivch_0(n11_ovch_10),
    .oack_0(n10_oack_11),
    .ordy_0(),//X
    .olck_0(n10_olck_11),
    .iack_0(n11_oack_10),
    .ilck_0(n11_olck_10),
    .odata_0(n10_odata_11),
    .ovalid_0(n10_ovalid_11),
    .ovch_0(n10_ovch_11),

    .idata_1(n8_odata_10),
    .ivalid_1(n8_ovalid_10),
    .ivch_1(n8_ovch_10),
    .oack_1(n10_oack_8),
    .ordy_1(),//X
    .olck_1(n10_olck_8),
    .iack_1(n8_oack_10),
    .ilck_1(n8_olck_10),
    .odata_1(n10_odata_8),
    .ovalid_1(n10_ovalid_8),
    .ovch_1(n10_ovch_8),

    .idata_2(n14_odata_10),
    .ivalid_2(n14_ovalid_10),
    .ivch_2(n14_ovch_10),
    .oack_2(n10_oack_14),
    .ordy_2(),//X
    .olck_2(n10_olck_14),
    .iack_2(n14_oack_10),
    .ilck_2(n14_olck_10),
    .odata_2(n10_odata_14),
    .ovalid_2(n10_ovalid_14),
    .ovch_2(n10_ovch_14),

    .idata_3(n2_odata_10),
    .ivalid_3(n2_ovalid_10),
    .ivch_3(n2_ovch_10),
    .oack_3(n10_oack_2),
    .ordy_3(),//X
    .olck_3(n10_olck_2),
    .iack_3(n2_oack_10),
    .ilck_3(n2_olck_10),
    .odata_3(n10_odata_2),
    .ovalid_3(n10_ovalid_2),
    .ovch_3(n10_ovch_2),

    .idata_4(n10_idata_p0),
    .ivalid_4(n10_ivalid_p0),
    .ivch_4(n10_ivch_p0),
    .oack_4(),//X
    .ordy_4(n10_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n10_odata_p0),
    .ovalid_4(n10_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n10_test_set)
);

//n11 --> n10 port 0
wire [`DATA_WIDTH-1:0]      n11_odata_10;
wire                        n11_ovalid_10;
wire [`VCH_WIDTH_NUM-1:0]   n11_ovch_10;
wire [`VCH_WIDTH-1:0]       n11_olck_10;
wire [`VCH_WIDTH-1:0]       n11_oack_10;
//n11 --> n9 port 1
wire [`DATA_WIDTH-1:0]      n11_odata_9;
wire                        n11_ovalid_9;
wire [`VCH_WIDTH_NUM-1:0]   n11_ovch_9;
wire [`VCH_WIDTH-1:0]       n11_olck_9;
wire [`VCH_WIDTH-1:0]       n11_oack_9;
//n11 --> n15 port 2
wire [`DATA_WIDTH-1:0]      n11_odata_15;
wire                        n11_ovalid_15;
wire [`VCH_WIDTH_NUM-1:0]   n11_ovch_15;
wire [`VCH_WIDTH-1:0]       n11_olck_15;
wire [`VCH_WIDTH-1:0]       n11_oack_15;
//n11 --> n3 port 3
wire [`DATA_WIDTH-1:0]      n11_odata_3;
wire                        n11_ovalid_3;
wire [`VCH_WIDTH_NUM-1:0]   n11_ovch_3;
wire [`VCH_WIDTH-1:0]       n11_olck_3;
wire [`VCH_WIDTH-1:0]       n11_oack_3;
//n11 - 10 9 15 3
router #(11) n11(
    .clk(clk),
    .reset(reset),

    .idata_0(n10_odata_11),
    .ivalid_0(n10_ovalid_11),
    .ivch_0(n10_ovch_11),
    .oack_0(n11_oack_10),
    .ordy_0(),//X
    .olck_0(n11_olck_10),
    .iack_0(n10_oack_11),
    .ilck_0(n10_olck_11),
    .odata_0(n11_odata_10),
    .ovalid_0(n11_ovalid_10),
    .ovch_0(n11_ovch_10),

    .idata_1(n9_odata_11),
    .ivalid_1(n9_ovalid_11),
    .ivch_1(n9_ovch_11),
    .oack_1(n11_oack_9),//X
    .ordy_1(),//X
    .olck_1(n11_olck_9),//X
    .iack_1(n9_oack_11),
    .ilck_1(n9_olck_11),
    .odata_1(n11_odata_9),//X
    .ovalid_1(n11_ovalid_9),//X
    .ovch_1(n11_ovch_9),//X

    .idata_2(n15_odata_11),
    .ivalid_2(n15_ovalid_11),
    .ivch_2(n15_ovch_11),
    .oack_2(n11_oack_15),
    .ordy_2(),//X
    .olck_2(n11_olck_15),
    .iack_2(n15_oack_11),
    .ilck_2(n15_olck_11),
    .odata_2(n11_odata_15),
    .ovalid_2(n11_ovalid_15),
    .ovch_2(n11_ovch_15),

    .idata_3(n3_odata_11),
    .ivalid_3(n3_ovalid_11),
    .ivch_3(n3_ovch_11),
    .oack_3(n11_oack_3),
    .ordy_3(),//X
    .olck_3(n11_olck_3),
    .iack_3(n3_oack_11),
    .ilck_3(n3_olck_11),
    .odata_3(n11_odata_3),
    .ovalid_3(n11_ovalid_3),
    .ovch_3(n11_ovch_3),

    .idata_4(n11_idata_p0),
    .ivalid_4(n11_ivalid_p0),
    .ivch_4(n11_ivch_p0),
    .oack_4(),//X
    .ordy_4(n11_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n11_odata_p0),
    .ovalid_4(n11_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n11_test_set)
);

//n12 --> n13 port 0
wire [`DATA_WIDTH-1:0]      n12_odata_13;
wire                        n12_ovalid_13;
wire [`VCH_WIDTH_NUM-1:0]   n12_ovch_13;
wire [`VCH_WIDTH-1:0]       n12_olck_13;
wire [`VCH_WIDTH-1:0]       n12_oack_13;
//n12 --> n14 port 1
wire [`DATA_WIDTH-1:0]      n12_odata_14;
wire                        n12_ovalid_14;
wire [`VCH_WIDTH_NUM-1:0]   n12_ovch_14;
wire [`VCH_WIDTH-1:0]       n12_olck_14;
wire [`VCH_WIDTH-1:0]       n12_oack_14;
//n12 --> n8 port 2
wire [`DATA_WIDTH-1:0]      n12_odata_8;
wire                        n12_ovalid_8;
wire [`VCH_WIDTH_NUM-1:0]   n12_ovch_8;
wire [`VCH_WIDTH-1:0]       n12_olck_8;
wire [`VCH_WIDTH-1:0]       n12_oack_8;
//n12 --> n4 port 3
wire [`DATA_WIDTH-1:0]      n12_odata_4;
wire                        n12_ovalid_4;
wire [`VCH_WIDTH_NUM-1:0]   n12_ovch_4;
wire [`VCH_WIDTH-1:0]       n12_olck_4;
wire [`VCH_WIDTH-1:0]       n12_oack_4;
//n12 - 13 14 8 4
router #(12) n12(
    .clk(clk),
    .reset(reset),

    .idata_0(n13_odata_12),
    .ivalid_0(n13_ovalid_12),
    .ivch_0(n13_ovch_12),
    .oack_0(n12_oack_13),
    .ordy_0(),//X
    .olck_0(n12_olck_13),
    .iack_0(n13_oack_12),
    .ilck_0(n13_olck_12),
    .odata_0(n12_odata_13),
    .ovalid_0(n12_ovalid_13),
    .ovch_0(n12_ovch_13),

    .idata_1(n14_odata_12),
    .ivalid_1(n14_ovalid_12),
    .ivch_1(n14_ovch_12),
    .oack_1(n12_oack_14),
    .ordy_1(),//X
    .olck_1(n12_olck_14),
    .iack_1(n14_oack_12),
    .ilck_1(n14_olck_12),
    .odata_1(n12_odata_14),
    .ovalid_1(n12_ovalid_14),
    .ovch_1(n12_ovch_14),

    .idata_2(n8_odata_12),
    .ivalid_2(n8_ovalid_12),
    .ivch_2(n8_ovch_12),
    .oack_2(n12_oack_8),
    .ordy_2(),//X
    .olck_2(n12_olck_8),
    .iack_2(n8_oack_12),
    .ilck_2(n8_olck_12),
    .odata_2(n12_odata_8),
    .ovalid_2(n12_ovalid_8),
    .ovch_2(n12_ovch_8),

    .idata_3(n4_odata_12),
    .ivalid_3(n4_ovalid_12),
    .ivch_3(n4_ovch_12),
    .oack_3(n12_oack_4),
    .ordy_3(),//X
    .olck_3(n12_olck_4),
    .iack_3(n4_oack_12),
    .ilck_3(n4_olck_12),
    .odata_3(n12_odata_4),
    .ovalid_3(n12_ovalid_4),
    .ovch_3(n12_ovch_4),

    .idata_4(n12_idata_p0),
    .ivalid_4(n12_ivalid_p0),
    .ivch_4(n12_ivch_p0),
    .oack_4(),//X
    .ordy_4(n12_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n12_odata_p0),
    .ovalid_4(n12_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n12_test_set)
);

//n13 --> n12 port 0
wire [`DATA_WIDTH-1:0]      n13_odata_12;
wire                        n13_ovalid_12;
wire [`VCH_WIDTH_NUM-1:0]   n13_ovch_12;
wire [`VCH_WIDTH-1:0]       n13_olck_12;
wire [`VCH_WIDTH-1:0]       n13_oack_12;
//n13 --> n15 port 1
wire [`DATA_WIDTH-1:0]      n13_odata_15;
wire                        n13_ovalid_15;
wire [`VCH_WIDTH_NUM-1:0]   n13_ovch_15;
wire [`VCH_WIDTH-1:0]       n13_olck_15;
wire [`VCH_WIDTH-1:0]       n13_oack_15;
//n13 --> n9 port 2
wire [`DATA_WIDTH-1:0]      n13_odata_9;
wire                        n13_ovalid_9;
wire [`VCH_WIDTH_NUM-1:0]   n13_ovch_9;
wire [`VCH_WIDTH-1:0]       n13_olck_9;
wire [`VCH_WIDTH-1:0]       n13_oack_9;
//n13 --> n5 port 3
wire [`DATA_WIDTH-1:0]      n13_odata_5;
wire                        n13_ovalid_5;
wire [`VCH_WIDTH_NUM-1:0]   n13_ovch_5;
wire [`VCH_WIDTH-1:0]       n13_olck_5;
wire [`VCH_WIDTH-1:0]       n13_oack_5;
//13 - 12 15 9 5
router #(13) n13(
    .clk(clk),
    .reset(reset),

    .idata_0(n12_odata_13),
    .ivalid_0(n12_ovalid_13),
    .ivch_0(n12_ovch_13),
    .oack_0(n13_oack_12),
    .ordy_0(),//X
    .olck_0(n13_olck_12),
    .iack_0(n12_oack_13),
    .ilck_0(n12_olck_13),
    // .odata_0(n13_odata_12),
    // .ovalid_0(n13_ovalid_12),
    // .ovch_0(n13_ovch_12),
    .odata_0(n13_odata_12),
    .ovalid_0(n13_ovalid_12),
    .ovch_0(n13_ovch_12),

    .idata_1(n15_odata_13),
    .ivalid_1(n15_ovalid_13),
    .ivch_1(n15_ovch_13),
    .oack_1(n13_oack_15),
    .ordy_1(),//X
    .olck_1(n13_olck_15),
    .iack_1(n15_oack_13),
    .ilck_1(n15_olck_13),
    // .odata_1(n13_odata_15),
    // .ovalid_1(n13_ovalid_15),
    // .ovch_1(n13_ovch_15),
    .odata_1(n13_odata_15),
    .ovalid_1(n13_ovalid_15),
    .ovch_1(n13_ovch_15),

    .idata_2(n9_odata_13),
    .ivalid_2(n9_ovalid_13),
    .ivch_2(n9_ovch_13),
    .oack_2(n13_oack_9),
    .ordy_2(),//X
    .olck_2(n13_olck_9),
    .iack_2(n9_oack_13),
    .ilck_2(n9_olck_13),
    .odata_2(n13_odata_9),
    .ovalid_2(n13_ovalid_9),
    .ovch_2(n13_ovch_9),

    .idata_3(n5_odata_13),
    .ivalid_3(n5_ovalid_13),
    .ivch_3(n5_ovch_13),
    .oack_3(n13_oack_5),
    .ordy_3(),//X
    .olck_3(n13_olck_5),
    .iack_3(n5_oack_13),
    .ilck_3(n5_olck_13),
    .odata_3(n13_odata_5),
    .ovalid_3(n13_ovalid_5),
    .ovch_3(n13_ovch_5),

    .idata_4(n13_idata_p0),
    .ivalid_4(n13_ivalid_p0),
    .ivch_4(n13_ivch_p0),
    .oack_4(),//X
    .ordy_4(n13_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n13_odata_p0),
    .ovalid_4(n13_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n13_test_set)
);

//n14 --> n15 port 0
wire [`DATA_WIDTH-1:0]      n14_odata_15;
wire                        n14_ovalid_15;
wire [`VCH_WIDTH_NUM-1:0]   n14_ovch_15;
wire [`VCH_WIDTH-1:0]       n14_olck_15;
wire [`VCH_WIDTH-1:0]       n14_oack_15;
//n14 --> n12 port 1
wire [`DATA_WIDTH-1:0]      n14_odata_12;
wire                        n14_ovalid_12;
wire [`VCH_WIDTH_NUM-1:0]   n14_ovch_12;
wire [`VCH_WIDTH-1:0]       n14_olck_12;
wire [`VCH_WIDTH-1:0]       n14_oack_12;
//n14 --> n10 port 2
wire [`DATA_WIDTH-1:0]      n14_odata_10;
wire                        n14_ovalid_10;
wire [`VCH_WIDTH_NUM-1:0]   n14_ovch_10;
wire [`VCH_WIDTH-1:0]       n14_olck_10;
wire [`VCH_WIDTH-1:0]       n14_oack_10;
//n14 --> n6 port 3
wire [`DATA_WIDTH-1:0]      n14_odata_6;
wire                        n14_ovalid_6;
wire [`VCH_WIDTH_NUM-1:0]   n14_ovch_6;
wire [`VCH_WIDTH-1:0]       n14_olck_6;
wire [`VCH_WIDTH-1:0]       n14_oack_6;
//14 - 15 12 10 6
router #(14) n14(
    .clk(clk),
    .reset(reset),

    .idata_0(n15_odata_14),
    .ivalid_0(n15_ovalid_14),
    .ivch_0(n15_ovch_14),
    .oack_0(n14_oack_15),
    .ordy_0(),//X
    .olck_0(n14_olck_15),
    .iack_0(n15_oack_14),
    .ilck_0(n15_olck_14),
    .odata_0(n14_odata_15),
    .ovalid_0(n14_ovalid_15),
    .ovch_0(n14_ovch_15),

    .idata_1(n12_odata_14),
    .ivalid_1(n12_ovalid_14),
    .ivch_1(n12_ovch_14),
    .oack_1(n14_oack_12),
    .ordy_1(),//X
    .olck_1(n14_olck_12),
    .iack_1(n12_oack_14),
    .ilck_1(n12_olck_14),
    .odata_1(n14_odata_12),
    .ovalid_1(n14_ovalid_12),
    .ovch_1(n14_ovch_12),

    .idata_2(n10_odata_14),
    .ivalid_2(n10_ovalid_14),
    .ivch_2(n10_ovch_14),
    .oack_2(n14_oack_10),
    .ordy_2(),//X
    .olck_2(n14_olck_10),
    .iack_2(n10_oack_14),
    .ilck_2(n10_olck_14),
    .odata_2(n14_odata_10),
    .ovalid_2(n14_ovalid_10),
    .ovch_2(n14_ovch_10),

    .idata_3(n6_odata_14),
    .ivalid_3(n6_ovalid_14),
    .ivch_3(n6_ovch_14),
    .oack_3(n14_oack_6),
    .ordy_3(),//X
    .olck_3(n14_olck_6),
    .iack_3(n6_oack_14),
    .ilck_3(n6_olck_14),
    .odata_3(n14_odata_6),
    .ovalid_3(n14_ovalid_6),
    .ovch_3(n14_ovch_6),

    .idata_4(n14_idata_p0),
    .ivalid_4(n14_ivalid_p0),
    .ivch_4(n14_ivch_p0),
    .oack_4(),//X
    .ordy_4(n14_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n14_odata_p0),
    .ovalid_4(n14_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n14_test_set)
);

//n15 --> n14 port 0
wire [`DATA_WIDTH-1:0]      n15_odata_14;
wire                        n15_ovalid_14;
wire [`VCH_WIDTH_NUM-1:0]   n15_ovch_14;
wire [`VCH_WIDTH-1:0]       n15_olck_14;
wire [`VCH_WIDTH-1:0]       n15_oack_14;
//n15 --> n13 port 1
wire [`DATA_WIDTH-1:0]      n15_odata_13;
wire                        n15_ovalid_13;
wire [`VCH_WIDTH_NUM-1:0]   n15_ovch_13;
wire [`VCH_WIDTH-1:0]       n15_olck_13;
wire [`VCH_WIDTH-1:0]       n15_oack_13;
//n15 --> n11 port 2
wire [`DATA_WIDTH-1:0]      n15_odata_11;
wire                        n15_ovalid_11;
wire [`VCH_WIDTH_NUM-1:0]   n15_ovch_11;
wire [`VCH_WIDTH-1:0]       n15_olck_11;
wire [`VCH_WIDTH-1:0]       n15_oack_11;
//n15 --> n7 port 3
wire [`DATA_WIDTH-1:0]      n15_odata_7;
wire                        n15_ovalid_7;
wire [`VCH_WIDTH_NUM-1:0]   n15_ovch_7;
wire [`VCH_WIDTH-1:0]       n15_olck_7;
wire [`VCH_WIDTH-1:0]       n15_oack_7;
//15 - 14 13 11 7
router #(15) n15(
    .clk(clk),
    .reset(reset),

    .idata_0(n14_odata_15),
    .ivalid_0(n14_ovalid_15),
    .ivch_0(n14_ovch_15),
    .oack_0(n15_oack_14),
    .ordy_0(),//X
    .olck_0(n15_olck_14),
    .iack_0(n14_oack_15),
    .ilck_0(n14_olck_15),
    .odata_0(n15_odata_14),
    .ovalid_0(n15_ovalid_14),
    .ovch_0(n15_ovch_14),

    .idata_1(n13_odata_15),
    .ivalid_1(n13_ovalid_15),
    .ivch_1(n13_ovch_15),
    .oack_1(n15_oack_13),
    .ordy_1(),//X
    .olck_1(n15_olck_13),
    .iack_1(n13_oack_15),
    .ilck_1(n13_olck_15),
    .odata_1(n15_odata_13),
    .ovalid_1(n15_ovalid_13),
    .ovch_1(n15_ovch_13),

    .idata_2(n11_odata_15),
    .ivalid_2(n11_ovalid_15),
    .ivch_2(n11_ovch_15),
    .oack_2(n15_oack_11),
    .ordy_2(),//X
    .olck_2(n15_olck_11),
    .iack_2(n11_oack_15),
    .ilck_2(n11_olck_15),
    .odata_2(n15_odata_11),
    .ovalid_2(n15_ovalid_11),
    .ovch_2(n15_ovch_11),

    .idata_3(n7_odata_15),
    .ivalid_3(n7_ovalid_15),
    .ivch_3(n7_ovch_15),
    .oack_3(n15_oack_7),
    .ordy_3(),//X
    .olck_3(n15_olck_7),
    .iack_3(n7_oack_15),
    .ilck_3(n7_olck_15),
    .odata_3(n15_odata_7),
    .ovalid_3(n15_ovalid_7),
    .ovch_3(n15_ovch_7),

    .idata_4(n15_idata_p0),
    .ivalid_4(n15_ivalid_p0),
    .ivch_4(n15_ivch_p0),
    .oack_4(),//X
    .ordy_4(n15_ordy_p0),
    .olck_4(),//X
    .iack_4(4'b1111),
    .ilck_4(4'b0000),
    .odata_4(n15_odata_p0),
    .ovalid_4(n15_ovalid_p0),
    .ovch_4(),
    .test_set_to_input(n15_test_set)
);

endmodule

