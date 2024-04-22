module mul_gf2_2 (in0, in1, out);
	input [1:0] in0, in1;
	output [1:0] out;
	
	assign out[0] = (in0[1] & in1[1]) ^ (in0[0] & in1[0]);
	assign out[1] = (in0[1] & in1[1]) ^ (in0[0] & in1[1]) ^ (in0[1] & in1[0]);
	
endmodule
