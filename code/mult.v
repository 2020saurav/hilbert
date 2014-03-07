module mult (a,b,c);
	input [9:0] a;
	input [9:0] b;
	output [9:0] c;
	wire [8:0] vala;
	wire [8:0] valb;
	assign vala = a;
	assign valb = b;
	wire signa = a[9];
	wire signb = b[9];
	reg [9:0] c;
	reg [17:0]temp;
	
	always @(*)
	begin
		if(signa==signb)
		begin
			temp <= vala * valb;
			c <= {1'b0,temp[17:9]};
		end
		else
		begin
			temp <= vala * valb;
			c <= {1'b1,temp[17:9]};
		end
	end

endmodule