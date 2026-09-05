// Implementing a 2 to 1 mux 
module 2to1_mux(
    input a, b, // normal inputs
    input sel, // the selection input
    output out, // output 
);

 // if sel is 1 then output will be b else output will be a
assign out = sel ? b : a; 

endmodule