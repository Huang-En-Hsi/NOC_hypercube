/* 
 data width 
77~75      |74 73     |72~68     |67~64       |63~0
type(3bits)|vch(2bits)|num(5bits)|index(4bits)|先存router path ，走過的path存ROUTERID (4*16bits)
63~61      |60 59     |58~54     |53~50       |49~0 (49~18path)
 */

//
`define DATA_WIDTH      64               

`define VCH_LSB         59                  
`define VCH_MSB         60 

`define TYPE_LSB        61                 
`define TYPE_MSB        63  

`define NUM_LSB         54
`define NUM_MSB         58

`define IDX_LSB         50
`define IDX_MSB         53

`define DATA_LSB        0
`define DATA_MSB        49

/* flit type *///需要嗎?
`define TYPEW           3      
`define TYPE_NONE       3'b000  //0
`define TYPE_HEAD       3'b001  //1
`define TYPE_TAIL       3'b010  //2
`define TYPE_HEADTAIL   3'b011  //3
`define TYPE_DATA       3'b100  //4

`define TYPE_ACK        3'b101  //5
`define TYPE_ACK_BACK   3'b110  //6
`define TYPE_TEST       3'b111  //7

/* virtaul channel -VC*/
`define VCH_WIDTH 4 //第 0 1 2 3 通道
`define VCH_WIDTH_NUM 2 // 00 01 10 11

/* port */
`define PORT_NUM 3
`define PORT 5

/* fifo */
`define PACKET_LEN 5
