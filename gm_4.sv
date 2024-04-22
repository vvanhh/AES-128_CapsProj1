module gm_4 (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w2;
	
	gm_2 gm_2_1(
	.in (in),
	.out (w1)
	);
	
	gm_2 gm_2_2(
	.in (w1),
	.out (w2)
	);
	
	assign out = w2;
	
endmodule
