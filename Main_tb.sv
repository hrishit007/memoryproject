`timescale 1ns / 1ns
`include "Main.sv"

module Main_tb;

// reg hitmiss;
// reg [13:0] tagArrayInCache [7:0] [3:0];
// reg integer set;
// reg [4:0] tag;
// wire [4:0] tagout;
reg [11:0] memoryAddress;
integer writeData;
reg readEnable,writeEnable;

Main uut(memoryAddress,writeData,readEnable,writeEnable);

initial begin
    $dumpfile("Main_tb.vcd");
    $dumpvars(0, Main_tb);
    #20;

    // hitmiss = 1'b1;
    // set = 3'b10;
    // tag = 5'b10001;
    memoryAddress=12'b000000100010;// 2,2 writemiss
    writeData=3;
    readEnable=1'b0;
    writeEnable=1'b1;

    #20;
    memoryAddress=12'b000000100000;//2,0 writehit
    writeData=6;
    readEnable=1'b0;
    writeEnable=1'b1;

    #20;
    memoryAddress=12'b000000100010;// 2,2 readhit
    writeData=3;
    readEnable=1'b1;
    writeEnable=1'b0;

    #20;
    memoryAddress=12'b000001000010;//  4,2 readmiss
    // writeData=3;
    readEnable=1'b1;
    writeEnable=1'b0;

    #20;
    memoryAddress=12'b000010100010;// 10,2 writemiss with way_number 1
    writeData=30;
    readEnable=1'b0;
    writeEnable=1'b1;

    #20;
    memoryAddress=12'b000100100010;// 18,2 readmiss with way_number 2
    // writeData=3;
    readEnable=1'b1;
    writeEnable=1'b0;

    #20;
    memoryAddress=12'b000110100010;// 26,2 readmiss with way_number 3
    // writeData=3;
    readEnable=1'b1;
    writeEnable=1'b0;

    #20;
    memoryAddress=12'b001100100010;// 50,2 readmiss with way_number 0
    // writeData=3;
    readEnable=1'b1;
    writeEnable=1'b0;

    #20;
    memoryAddress=12'b011100100010;// 114,2 writemiss with way_number 1
    writeData=77;
    readEnable=1'b0;
    writeEnable=1'b1;

    #20;

    // hitmiss = 
    // set =
    // tag = 
    /*tagArrayInCache[][] <= 
    tagArrayInCache[][] <= 
    tagArrayInCache[][] <= 
    tagArrayInCache[][] <= 
    tagArrayInCache[][] <= */

end
endmodule