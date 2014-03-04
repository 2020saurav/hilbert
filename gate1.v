module gate1( a,b,c);

	
	input a;
	input b;
	output c;
	reg c;
	

	always @(a or b)
		begin
		 c <= a & b;
		end 

endmodule