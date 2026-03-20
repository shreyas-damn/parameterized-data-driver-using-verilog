`timescale 1ns/1ps
module datadriver_tb();
localparam width = 8;
reg [width-1:0] din_tb;
reg d_en_tb;
wire [width-1:0]dout_tb;

datadriver #(.width(width)) DUT( 
    .din(din_tb),
    .d_en(d_en_tb),
    .dout(dout_tb)
);

initial begin
    $dumpfile("sim.vcd");
    $dumpvars(0,datadriver_tb);
    $monitor("Time = %0t | d_en = %b | din = %b | dout = %b", $time, d_en_tb, din_tb, dout_tb );
    d_en_tb = 0; din_tb = 00000000; #10;
    d_en_tb = 1; din_tb = 00000001; #10;
    d_en_tb = 0; din_tb = 00000000; #10;
    d_en_tb = 1; din_tb = 00000010; #10;
    d_en_tb = 0; din_tb = 00000000; #10;
    d_en_tb = 1; din_tb = 00000100; #10;
    $finish;
end

endmodule