module inv_mul_gf2_8 (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire [7:0] w1, w6;
	wire [3:0] w2, w3, w4, w5;
	
	impmap map1 (
		.in (in),
		.out (w1)
	);
	
	square sqr1 (
		.in (w1[7:4]),
		.out (w2)
	);
	
	mul_lambda xlambda1 (
		.in (w2),
		.out (w3)
	);
	
	mul_gf2_4 x4_1 (
		.in0 (w1[7:4] ^ w1[3:0]),
		.in1 (w1[3:0]),
		.out (w4)
	);
	
	inv_mul_gf2_4 invx4_1 (
		.in (w3 ^ w4),
		.out (w5)
	);
	
	mul_gf2_4 x4_2(
		.in0 (w5),
		.in1 (w1[7:4]),
		.out (w6[7:4])
	);
	
	mul_gf2_4 x4_3 (
		.in0 (w5),
		.in1 (w1[7:4] ^ w1[3:0]),
		.out (w6[3:0])
	);
	
	inv_impmap invmap1 (
		.in (w6),
		.out (out)
	);
	
endmodule
