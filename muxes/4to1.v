// Implementing a 4 to 1 mux 
module 4to1_mux(
    input a, b, c, d // normal inputs
    input [1:0] sel, // the selection input is a 2 bit wide input
    output out, // output 
);

always @(*) begin
    case(sel)
        2'b00 : out = a; // if sel is 00 then output will be a
        2'b01 : out = b; // if sel is 01 then output will be b
        2'b10 : out = c; // if sel is 10 then output will be c
        2'b11 : out = d; // if sel is 11 then output will be d
    endcase
end
endmodule