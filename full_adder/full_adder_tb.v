`timescale 1ns/1ps
`include "full_adder.v"

module full_adder_tb;

reg a, b, cin; // input registers for the full adder
wire sum, cout; // output wires for the full adder

// Now we instantiate the full adder module
full_adder fa(.a(a), .b(b), .cin(cin), .total_sum(sum), .cout(cout));

// Now we add the test instructions, which is the truth table for the full adder to verify operation
    initial begin
        
        // Dump waveform for debugging
        $dumpfile("fa_waveform.vcd");
        $dumpvars(0, fa);

        a = 0; b = 0; cin = 0;
        #10;
        a = 0; b = 0; cin = 1;
        #10;
        a = 0; b = 1; cin = 0;
        #10;
        a = 0; b = 1; cin = 1;
        #10;
        a = 1; b = 0; cin = 0;
        #10;
        a = 1; b = 0; cin = 1;
        #10;
        a = 1; b = 1; cin = 0;
        #10;
        a = 1; b = 1; cin = 1;
        #10;
        $finish;
    end
endmodule