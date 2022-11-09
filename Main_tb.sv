`timescale 1ns / 1ns
`include "Main.sv"

module Main_tb;

// reg hitmiss;
// reg [13:0] tagArrayInCache [7:0] [3:0];
// reg integer set;
// reg [4:0] tag;
// wire [4:0] tagout;

Main uut();

initial begin
    $dumpfile("Main_tb.vcd");
    $dumpvars(0, Main_tb);

    // hitmiss = 1'b1;
    // set = 3'b10;
    // tag = 5'b10001;

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