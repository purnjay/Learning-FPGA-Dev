`include "demux_1to4.v"

module demux_1to8(
    input a, // input to the demux
    input [2:0] sel, // selection input
    output [7:0] out // outputs 0-7
);

wire carry0, carry1, carry2, carry3; // wires to connect the 1 to 4 demuxes

// using 3, 1 to 4 demuxes to implement a 1 to 8 demux
demux_1to4 d1(.a(a), .sel(sel[0:1]), .out0(carry0), .out1(carry1), .out2(carry2), .out3(carry3));
demux_1to4 d2(.a(carry0), .sel(sel[2]), .out0(out[0]), .out1(out[1]), .out2(out[2]), .out3(out[3]));
demux_1to4 d3(.a(carry1), .sel(sel[2]), .out0(out[4]), .out1(out[5]), .out2(out[6]), .out3(out[7]));

endmodule