module gm_e (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w2, w3, w4;
	
	gm_4 ex8 (
		.in (in),
		.out (w1)
	);
	
	gm_2 ex9 (
		.in (w1),
		.out (w2)
	);
	 
	gm_4 ex10 (
		.in (in),
		.out (w3)
	);
	
	gm_2 ex11 (
		.in (in),
		.out (w4)
	);
	
	assign out = w2 ^ w3 ^ w4;
	
endmodule
