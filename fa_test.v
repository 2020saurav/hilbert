module main;

	reg a;
	reg b;
	reg cin;

	wire s;
	wire cout;

	integer i;

	fa dut(a,b,cin,s,cout);

	initial begin
		a=0;
		b=0;
		cin=0;
	end

	always @(a,b,cin)
		begin
			for (i=0; i<8; i = i+1)
				begin
					#10 // 10ns
					{a,b,cin} = i;
					//#10 // wait 10 ns after input change
				//$display("Time: %0t, %0d %0d %0d %0d%0d",$time, a,b,cin, s,cout);
				$monitor( "%t ns: a + b + cin = %b + %b + %b = cout sum = %b %b",
                                                 $time, a, b, cin, cout, s );	
				end
		end
endmodule
