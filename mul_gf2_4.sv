module mul_gf2_4 (in0, in1, out);
	input [3:0] in0, in1;
	output [3:0] out;
	
	wire [1:0] w1, w2, w3, w4;
	
	mul_gf2_2 x1 (
		.in0 (in0[3:2]),
		.in1 (in1[3:2]),
		.out (w1)
	);
	
	mul_gf2_2 x2 (
		.in0 (in0[3:2] ^ in0 [1:0]),
		.in1 (in1[3:2] ^ in1 [1:0]),
		.out (w2)
	);
	
	mul_gf2_2 x3 (
		.in0 (in0[1:0]),
		.in1 (in1[1:0]),
		.out (w3)
	);
	
	mul_phi xphi1(
		.in (w1),
		.out (w4)
	);
	
	assign out[3:2] = w2 ^ w3;
	assign out[1:0] = w3 ^ w4;
	
endmodule
