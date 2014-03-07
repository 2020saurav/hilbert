module multiplier_tb;

	reg [15:0] a;
	reg [15:0] b;

	wire [15:0] c;

	reg [15:0] data [0:100];
	//reg clk =0;
	//always #1000000 clk = ~clk;

	multiplier mul1(a,b,c);

	integer i;

	initial 
		begin
			$readmemb("mult.bin",data);

			for (i=0; i<10; i=i+2)
				begin
					a = data[i];
					b = data[i+1];
					#100
					$display("%0d:%0d, %0d:%0d, %0d:%0d",a[15],a[14:0],b[15],b[14:0],c[15],c[14:0]);
				end
			$finish;
		end
endmodule

		