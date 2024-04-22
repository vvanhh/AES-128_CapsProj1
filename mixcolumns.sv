module mixcolumns (in1, in2, in3, in4, out1, out2, out3, out4);
	input [7:0] in1, in2, in3, in4;
	output [7:0] out1, out2, out3, out4;
	
	wire [7:0] w12, w23, w34, w41;
	
	gm_2 w12(.in(in1 ^ in2), .out(w12));
	gm_2 w23(.in(in2 ^ in3), .out(w23));
	gm_2 w34(.in(in3 ^ in4), .out(w34));
	gm_2 w41(.in(in4 ^ in1), .out(w41));
	
	assign out1 = w12 ^ in2 ^ in3 ^ in4;
	assign out2 = w23 ^ in1 ^ in3 ^ in4;
	assign out3 = w34 ^ in1 ^ in2 ^ in4;
	assign out4 = w41 ^ in1 ^ in2 ^ in3;
	
endmodule
