module gm_d (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w2, w3;
	
	gm_4 ex5 (
		.in (in),
		.out (w1)
	);
	
	gm_2 ex6 (
		.in (w1),
		.out (w2)
	);
	 
	gm_4 ex7 (
		.in (in),
		.out (w3)
	);
	 

assign out = w2 ^ w3 ^ in;
 
endmodule
