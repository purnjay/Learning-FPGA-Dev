module rcN_adder #(parameter N = 8)
(
    input [N - 1:0] a, b,
    input cin,
    output [N - 1:0] sum,
    output cout
);

wire [N - 1:0] carry_out;  

generate 
    genvar i; 
    for (i = 0; i < N; i = i + 1) begin: adder 
        assign cin = (i == 0) ? cin : carry_out[i - 1];
        full_adder fa (.a(a[i]), .b(b[i]), .cin(cin), .sum(sum[i]), .cout(carry_out[i]));
    end
endgenerate
    
endmodule
