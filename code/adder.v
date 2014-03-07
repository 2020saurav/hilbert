module adder (a,b,c);
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

	always @(*)
	begin
		if(signa==signb)
		begin
			c <= vala + valb;
			c[15] <= signb;
		end
		else if(vala > valb)
		begin
			c <= vala - valb;
			c[15] <= signa;
		end
		else
		begin
			c <= valb - vala;
			c[15] <= signb;
		end
	end

endmodule