module rcon (rkey_sel, rcon);
	input [3:0] rkey_sel;
	output [7:0] rcon;
	
	always @(*) begin
		case (rkey_sel)
			4'h0: rcon = 8'h00;
			4'h1: rcon = 8'h01;
			4'h2: rcon = 8'h02;
			4'h3: rcon = 8'h04;
			4'h4: rcon = 8'h08;
			4'h5: rcon = 8'h10;
			4'h6: rcon = 8'h20;
			4'h7: rcon = 8'h40;
			4'h8: rcon = 8'h80;
			4'h9: rcon = 8'h1b;
			4'ha: rcon = 8'h36;
			default: rcon = 8'h00;
		endcase
	end
	
endmodule
