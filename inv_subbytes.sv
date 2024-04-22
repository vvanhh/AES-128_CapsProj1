module inv_subbytes (in, out);
	input [127:0] in;
	output [127:0] out;
	
	genvar i;
	generate 
		for (i = 0; i < 128; i = i + 8) begin: inv_subbytes
			sbox invsbox(in[i +:8], out[i +:8], (1'b0));
		end
	endgenerate
	
endmodule
