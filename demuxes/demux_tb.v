`timescale 1ps/1ps
`include "demux_1to2.v" // include the demux module

module demux_tb;
// variables for 1 to 2 demux
reg a; // input to the demux
reg sel; // selection input
wire out0; // output 0
wire out1; // output 1

// instantiate the demux
demux_1to2 d1(.a(a), .sel(sel), .out0(out0), .out1(out1));

initial begin
    // dump waveform for debugging
    $dumpfile("demux.vcd");
    $dumpvars(0, demux_tb);

    $display("Testing 1 to 2 demux");
    $monitor("a=%b sel=%b | out0=%b out1=%b", a, sel, out0, out1);
    a = 1'b0; sel = 1'b0;
    a = 1'b1; sel = 1'b0;
    a = 1'b0; sel = 1'b1;
    a = 1'b1; sel = 1'b1;  
    
    $display("\nTesting 1 to 4 demux");
    $monitor("a=%b sel=%b | out0=%b out1=%b out2=%b out3=%b", a, sel, out0, out1, out2, out3);
    a = 1'b0; sel = 2'b00;
    a = 1'b1; sel = 2'b00;
    a = 1'b0; sel = 2'b01;
    a = 1'b1; sel = 2'b01;
    a = 1'b0; sel = 2'b10;
    a = 1'b1; sel = 2'b10;
    a = 1'b0; sel = 2'b11;
    a = 1'b1; sel = 2'b11;

    $display("\nTesting 1 to 8 demux");
    $monitor("a=%b sel=%b | out0=%b out1=%b out2=%b out3=%b out4=%b out5=%b out6=%b out7=%b", a, sel, out0, out1, out2, out3, out4, out5, out6, out7);
    a = 1'b0; sel = 3'b000;
    a = 1'b1; sel = 3'b000;
    a = 1'b0; sel = 3'b001;
    a = 1'b1; sel = 3'b001;
    a = 1'b0; sel = 3'b010;
    a = 1'b1; sel = 3'b010;
    a = 1'b0; sel = 3'b011;
    a = 1'b1; sel = 3'b011;
    a = 1'b0; sel = 3'b100;
    a = 1'b1; sel = 3'b100;
    a = 1'b0; sel = 3'b101;
    a = 1'b1; sel = 3'b101;
    a = 1'b0; sel = 3'b110;
    a = 1'b1; sel = 3'b110;
    a = 1'b0; sel = 3'b111;
    a = 1'b1; sel = 3'b111;
    
    $finish;
end

endmodule