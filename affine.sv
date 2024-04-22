module affine (in, out);
	input [7:0] in;
	output [7:0] out;
	
	wire w_0123, w_4567, w_2345, w_0167;
	
	assign w_0123 = in[0] ^ in[1] ^ in[2] ^ in[3];
	assign w_4567 = in[4] ^ in[5] ^ in[6] ^ in[7];
	assign w_2345 = in[2] ^ in[3] ^ in[4] ^ in[5];
	assign w_0167 = in[0] ^ in[1] ^ in[6] ^ in[7];
	
	assign out[0] = in[0] ^ w_4567 ^ (1'b1);
	assign out[1] = in[5] ^ w_0167 ^ (1'b1);
	assign out[2] = in[2] ^ w_0167;
	assign out[3] = in[7] ^ w_0123;
	assign out[4] = in[4] ^ w_0123;
	assign out[5] = in[1] ^ w_2345 ^ (1'b1);
	assign out[6] = in[6] ^ w_2345 ^ (1'b1);
	assign out[7] = in[3] ^ w_4567;
	
endmodule
