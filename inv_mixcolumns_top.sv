module inv_mixcolumns_top (in, out);
	input [127:0] in;
	output [127:0] out;
	
	inv_mixcolumns imc1(
		.in1(in[127:120]),
		.in2(in[119:112]),
		.in3(in[111:104]),
		.in4(in[103:96]),
		.out1(out[127:120]),
		.out2(out[119:112]),
		.out3(out[111:104]),
		.out4(out[103:96])
	);
	
	inv_mixcolumns imc2(
		.in1(in[95:88]),
		.in2(in[87:80]),
		.in3(in[79:72]),
		.in4(in[71:64]),
		.out1(out[95:88]),
		.out2(out[87:80]),
		.out3(out[79:72]),
		.out4(out[71:64])
	);
	
	inv_mixcolumns imc3(
		.in1(in[63:56]),
		.in2(in[55:48]),
		.in3(in[47:40]),
		.in4(in[39:32]),
		.out1(out[63:56]),
		.out2(out[55:48]),
		.out3(out[47:40]),
		.out4(out[39:32])
	);
	
	inv_mixcolumns imc4(
		.in1(in[31:24]),
		.in2(in[23:16]),
		.in3(in[15:8]),
		.in4(in[7:0]),
		.out1(out[31:24]),
		.out2(out[23:16]),
		.out3(out[15:8]),
		.out4(out[7:0])
	);
	
endmodule
