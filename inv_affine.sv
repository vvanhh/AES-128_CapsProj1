module inv_affine (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire w_05, w_14, w_36, w_27;
	
	assign w_05 = in[0] ^ in[5];
	assign w_14 = in[1] ^ in[4];
	assign w_27 = in[2] ^ in[7];
	assign w_36 = in[3] ^ in[6];
	
	assign out[0] = w_27 ^ in[5] ^ (1'b1);
	assign out[1] = w_36 ^ in[0];
	assign out[2] = w_14 ^ in[7] ^ (1'b1);
	assign out[3] = w_05 ^ in[2];
	assign out[4] = w_36 ^ in[1];
	assign out[5] = w_27 ^ in[4];
	assign out[6] = w_05 ^ in[3];
	assign out[7] = w_14 ^ in[6];
	
endmodule
