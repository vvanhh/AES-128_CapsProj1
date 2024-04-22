module sbox (in, out, sel_en_de);
	input [7:0] in;
	output [7:0] out;
	input sel_en_de;
	
	wire [7:0] w1, w2, w3;
	
	inv_affine invaff1 (
		.in (in),
		.out (w1)
	);
	
	inv_mul_gf2_8 invx8_1 (
		.in (sel_en_de ? in : w1),
		.out (w2)
	);
	
	affine aff1 (
		.in (w2),
		.out (w3)
	);
	
	assign out = sel_en_de ? w3 : w2;
	
endmodule
