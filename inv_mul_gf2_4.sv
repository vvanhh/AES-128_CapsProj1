module inv_mul_gf2_4 (in, out);
	input [3:0] in;
	output [3:0] out;
	
	wire w_321, w_320, w_310, w_210;
	wire w_30, w_21, w_31, w_20;
	
	assign w_321 = in[3] & in[2] & in[1];
	assign w_320 = in[3] & in[2] & in[0];
	assign w_310 = in[3] & in[0] & in[1];
	assign w_210 = in[0] & in[2] & in[1];
	
	assign w_30 = in[3] & in[0];
	assign w_31 = in[3] & in[1];
	assign w_20 = in[2] & in[0];
	assign w_21 = in[2] & in[1];
	
	assign out[3] = in[3] ^ w_321 ^ w_30 ^ in[2];
	assign out[2] = w_321 ^ w_320 ^ w_30 ^ in[2] ^ w_21;
	assign out[1] = in[3] ^ w_321 ^ w_310 ^ in[2] ^ w_20 ^ in[1];
	assign out[0] = w_321 ^ w_320 ^ w_31 ^ w_310 ^ w_30 ^ in[2] ^ w_21 ^ w_210 ^ in[1] ^ in[0];
	
endmodule
