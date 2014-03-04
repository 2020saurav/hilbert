module fa(a,b,cin,s,cout);

	input a;
	input b;
	input cin;
	output s;
	output cout;

	assign {cout,s} = a +b + cin;
endmodule