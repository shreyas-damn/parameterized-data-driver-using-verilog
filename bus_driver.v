`timescale 1ns/1ps
module datadriver #(parameter width = 8)(
    input [width-1:0]din,
    input d_en,
    output reg [width-1:0]dout
);
always @(*) begin
    if(d_en == 1'b1) begin
        dout = din;
    end
    else begin
        //dout = {width{1'bx}};
        dout = {width{1'bx}};
    end
end
endmodule