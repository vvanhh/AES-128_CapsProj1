module gm_9 (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w2;
	
	gm_4 ex1 (
		.in (in),
		.out (w1)
	);
	
	gm_2 ex2 (
		.in (w1),
		.out (w2)
	);
	
	assign out = w2 ^ in;
	
endmodule
