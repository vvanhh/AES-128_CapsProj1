module gm_2 (in, out);
	input [7:0] in;
	output [7:0] out;
	
	assign out = {in[6:0], 1'b0} ^ (8'h1b & {8{in[7]}});
	
endmodule
