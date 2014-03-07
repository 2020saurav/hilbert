module main;

	reg x=0;
	reg y=0;
	reg data[0:800];
	//reg clk=0;

	wire z;
	gate1 dut (x,y,z);

	//always #10 clk = ~clk;
	integer i;

	initial begin
		$readmemb("abcd.c", data);
		for ( i =0; i<15; i = i+2)
			begin
				
				x = data[i];
				y = data[i+1];
				#10
				$display("Time: %0t, A: %0d AND B: %0d = C:%d",$time, x,y,z);
			
			end
			$finish;
	end

	
endmodule