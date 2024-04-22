module inv_mixcolumns (in1, in2, in3, in4, out1, out2, out3, out4);
	input [7:0] in1, in2, in3, in4;
	output [7:0] out1, out2, out3, out4;
	
	wire [7:0] w9_in1, w9_in2, w9_in3, w9_in4;
	wire [7:0] wb_in1, wb_in2, wb_in3, wb_in4;
	wire [7:0] we_in1, we_in2, we_in3, we_in4;
	wire [7:0] wd_in1, wd_in2, wd_in3, wd_in4;
	
	gm_9 gm9_in1 (
		.in (in1),
		.out (w9_in1)
	);
	
	gm_9 gm9_in2 (
		.in (in2),
		.out (w9_in2)
	);
	
	gm_9 gm9_in3 (
		.in (in3),
		.out (w9_in3)
	);
	
	gm_9 gm9_in4 (
		.in (in4),
		.out (w9_in4)
	);
	
	gm_e gme_in1 (
		.in (in1),
		.out (we_in1)
	);
	
	gm_e gme_in2 (
		.in (in2),
		.out (we_in2)
	);
	
	gm_e gme_in3 (
		.in (in3),
		.out (we_in3)
	);
	
	gm_e gme_in4 (
		.in (in4),
		.out (we_in4)
	);
	
	gm_b gmb_in1 (
		.in (in1),
		.out (wb_in1)
	);
	
	gm_b gmb_in2 (
		.in (in2),
		.out (wb_in2)
	);
	
	gm_b gmb_in3 (
		.in (in3),
		.out (wb_in3)
	);
	
	gm_b gmb_in4 (
		.in (in4),
		.out (wb_in4)
	);
	
	gm_d gmd_in1 (
		.in (in1),
		.out (wd_in1)
	);
	
	gm_d gmd_in2 (
		.in (in2),
		.out (wd_in2)
	);
	
	gm_d gmd_in3 (
		.in (in3),
		.out (wd_in3)
	);
	
	gm_d gmd_in4 (
		.in (in4),
		.out (wd_in4)
	);
	
	assign out1 = we_in1 ^ wb_in2 ^ wd_in3 ^ w9_in4;
	assign out2 = w9_in1 ^ we_in2 ^ wb_in3 ^ wd_in4;
	assign out3 = wd_in1 ^ w9_in2 ^ we_in3 ^ wb_in4;
	assign out4 = wb_in1 ^ wd_in2 ^ w9_in3 ^ we_in4;
	
endmodule
