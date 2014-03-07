module multiplier (a,b,c);
	input [15:0] a;
	input [15:0] b;
	output [15:0] c;
	wire [14:0] vala;
	wire [14:0] valb;
	assign vala = a;
	assign valb = b;
	wire signa = a[15];
	wire signb = b[15];
	reg [15:0] c;
	reg [29:0]temp;
	
	always @(*)
	begin
		if(signa==signb)
		begin
			temp <= vala * valb;
			c <= {1'b0,temp[29:15]};
		end
		else
		begin
			temp <= vala * valb;
			c <= {1'b1,temp[29:15]};
		end
	end

endmodule