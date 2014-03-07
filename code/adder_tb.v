module main;

	reg [15:0] a;
	reg [15:0] b;
	wire [15:0] c;
	reg [15:0] data[0:12];
		// numbers have first bit a[9] as sign bit, rest usual integer
	adder add1 (a,b,c);
	integer i;

	initial
		begin
			$readmemb("adder.bin", data);

			for(i=0;i<10; i=i+2)
				begin
					a = data[i];
					b = data[i+1];
					#100
					
					$display("%0d:%0d, %0d:%0d, %0d:%0d",a[15],a[14:0],b[15],b[14:0],c[15],c[14:0]);
					
				end
			$finish;
		end
endmodule