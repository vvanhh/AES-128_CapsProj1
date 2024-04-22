module gm_b (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w2;
	
	gm_9 ex3 (
		.in (in),
		.out (w1)
	);
	
	gm_2 ex4 (
		.in (in),
		.out (w2)
	);
	
	assign out = w1 ^ w2;
	
endmodule
