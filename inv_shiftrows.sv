module inv_shiftrows (in, out);
	input [127:0] in;
	output [127:0] out;
	
	// first row (r = 0) is not shifted
	assign out[127:120] = in[127:120];
	assign out[95:88] = in[95:88];
	assign out[63:56] = in[63:56];
   assign out[31:24] = in[31:24];
	
	// second row (r = 1) is cyclically right shifted by 1 offset
   assign out[119:112] = in[23:16];
   assign out[87:80] = in[119:112];
   assign out[55:48] = in[87:80];
   assign out[23:16] = in[55:48];
	
	// third row (r = 2) is cyclically right shifted by 2 offsets
   assign out[111:104] = in[47:40];
   assign out[79:72] = in[15:8];
   assign out[47:40] = in[111:104];
   assign out[15:8] = in[79:72];
	
	// fourth row (r = 3) is cyclically right shifted by 3 offsets
   assign out[103:96] = in[71:64];
   assign out[71:64] = in[39:32];
   assign out[39:32] = in[7:0];
   assign out[7:0] = in[103:96];
	
endmodule
