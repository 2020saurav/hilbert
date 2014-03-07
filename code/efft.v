module efft;

	reg [15:0] st2r[0:31];
	reg [15:0] st2c[0:31];
	reg [15:0] st3r[0:31];
	reg [15:0] st3c[0:31];
	reg [15:0] st4r[0:31];
	reg [15:0] st4c[0:31];
	reg [15:0] st5r[0:31];
	reg [15:0] st5c[0:31];
	reg [15:0] st6r[0:31];
	reg [15:0] st6c[0:31];
	reg [15:0] st7r[0:31];
	reg [15:0] st7c[0:31];


	wire [15:0] wst2r[0:31];
	wire [15:0] wst2c[0:31];
	wire [15:0] wst3r[0:31];
	wire [15:0] wst3c[0:31];
	wire [15:0] wst4r[0:31];
	wire [15:0] wst4c[0:31];
	wire [15:0] wst5r[0:31];
	wire [15:0] wst5c[0:31];
	wire [15:0] wst6r[0:31];
	wire [15:0] wst6c[0:31];
	wire [15:0] wst7r[0:31];
	wire [15:0] wst7c[0:31];

	

	//integer i=0;
	//integer stage =1;
	//integer j;
	reg [4:0] i2;
	reg [4:0] j2;
	reg [4:0] i3;
	reg [4:0] j3;
	reg [4:0] i4;
	reg [4:0] j4;
	reg [4:0] i5;
	reg [4:0] j5;
	reg [4:0] i6;
	reg [4:0] j6;
	//reg [2:0] stage=2;
	//reg clk =0;
	integer t2;
	integer t3;
	integer t4;
	integer t5;
	integer t6;
	

	integer y=0;



	reg [15:0] xi2r;
	reg [15:0] xi2c;
	reg [15:0] xj2r;
	reg [15:0] xj2c;

	wire [15:0] wyi2r;
	wire [15:0] wyi2c;
	wire [15:0] wyj2r;
	wire [15:0] wyj2c;

	reg [15:0] xi3r;
	reg [15:0] xi3c;
	reg [15:0] xj3r;
	reg [15:0] xj3c;

	wire [15:0] wyi3r;
	wire [15:0] wyi3c;
	wire [15:0] wyj3r;
	wire [15:0] wyj3c;

	reg [15:0] xi4r;
	reg [15:0] xi4c;
	reg [15:0] xj4r;
	reg [15:0] xj4c;

	wire [15:0] wyi4r;
	wire [15:0] wyi4c;
	wire [15:0] wyj4r;
	wire [15:0] wyj4c;

	reg [15:0] xi5r;
	reg [15:0] xi5c;
	reg [15:0] xj5r;
	reg [15:0] xj5c;

	wire [15:0] wyi5r;
	wire [15:0] wyi5c;
	wire [15:0] wyj5r;
	wire [15:0] wyj5c;

	reg [15:0] xi6r;
	reg [15:0] xi6c;
	reg [15:0] xj6r;
	reg [15:0] xj6c;

	wire [15:0] wyi6r;
	wire [15:0] wyi6c;
	wire [15:0] wyj6r;
	wire [15:0] wyj6c;

	reg [15:0] xi7r;
	reg [15:0] xi7c;
	reg [15:0] xj7r;
	reg [15:0] xj7c;

	wire [15:0] wyi7r;
	wire [15:0] wyi7c;
	wire [15:0] wyj7r;
	wire [15:0] wyj7c;

	butterfly but2 (xi2r, xi2c, xj2r, xj2c, 2, i2, j2, wyi3r, wyi3c, wyj3r, wyj3c);
	butterfly but3 (xi3r, xi3c, xj3r, xj3c, 3, i3, j3, wyi4r, wyi4c, wyj4r, wyj4c);
	butterfly but4 (xi4r, xi4c, xj4r, xj4c, 4, i4, j4, wyi5r, wyi5c, wyj5r, wyj5c);
	butterfly but5 (xi5r, xi5c, xj5r, xj5c, 5, i5, j5, wyi6r, wyi6c, wyj6r, wyj6c);
	butterfly but6 (xi6r, xi6c, xj6r, xj6c, 6, i6, j6, wyi7r, wyi7c, wyj7r, wyj7c);

	
				 assign wst2r[0] = st2r[0];
				 assign wst2c[0] = st2c[0];
				 assign wst2r[1] = st2r[1];
				 assign wst2c[1] = st2c[1];
				 assign wst2r[2] = st2r[2];
				 assign wst2c[2] = st2c[2];
				 assign wst2r[3] = st2r[3];
				 assign wst2c[3] = st2c[3];
				 assign wst2r[4] = st2r[4];
				 assign wst2c[4] = st2c[4];
				 assign wst2r[5] = st2r[5];
				 assign wst2c[5] = st2c[5];
				 assign wst2r[6] = st2r[6];
				 assign wst2c[6] = st2c[6];
				 assign wst2r[7] = st2r[7];
				 assign wst2c[7] = st2c[7];
				 assign wst2r[8] = st2r[8];
				 assign wst2c[8] = st2c[8];
				 assign wst2r[9] = st2r[9];
				 assign wst2c[9] = st2c[9];
				 assign wst2r[10] = st2r[10];
				 assign wst2c[10] = st2c[10];
				 assign wst2r[11] = st2r[11];
				 assign wst2c[11] = st2c[11];
				 assign wst2r[12] = st2r[12];
				 assign wst2c[12] = st2c[12];
				 assign wst2r[13] = st2r[13];
				 assign wst2c[13] = st2c[13];
				 assign wst2r[14] = st2r[14];
				 assign wst2c[14] = st2c[14];
				 assign wst2r[15] = st2r[15];
				 assign wst2c[15] = st2c[15];
				 assign wst2r[16] = st2r[16];
				 assign wst2c[16] = st2c[16];
				 assign wst2r[17] = st2r[17];
				 assign wst2c[17] = st2c[17];
				 assign wst2r[18] = st2r[18];
				 assign wst2c[18] = st2c[18];
				 assign wst2r[19] = st2r[19];
				 assign wst2c[19] = st2c[19];
				 assign wst2r[20] = st2r[20];
				 assign wst2c[20] = st2c[20];
				 assign wst2r[21] = st2r[21];
				 assign wst2c[21] = st2c[21];
				 assign wst2r[22] = st2r[22];
				 assign wst2c[22] = st2c[22];
				 assign wst2r[23] = st2r[23];
				 assign wst2c[23] = st2c[23];
				 assign wst2r[24] = st2r[24];
				 assign wst2c[24] = st2c[24];
				 assign wst2r[25] = st2r[25];
				 assign wst2c[25] = st2c[25];
				 assign wst2r[26] = st2r[26];
				 assign wst2c[26] = st2c[26];
				 assign wst2r[27] = st2r[27];
				 assign wst2c[27] = st2c[27];
				 assign wst2r[28] = st2r[28];
				 assign wst2c[28] = st2c[28];
				 assign wst2r[29] = st2r[29];
				 assign wst2c[29] = st2c[29];
				 assign wst2r[30] = st2r[30];
				 assign wst2c[30] = st2c[30];
				 assign wst2r[31] = st2r[31];
				 assign wst2c[31] = st2c[31];
				
	

	initial
		begin
		$readmemb("inputr.bin", st2r);
		$readmemb("inputc.bin", st2c);

		end
		

	
		
	 	always @(*)
		begin
			for(y=0; y<32; y= y+1)
			begin
				
				 st2r[y] <= wst2r[y];
				 st2c[y] <= wst2c[y];
				 st3r[y] <= wst3r[y];
				 st3c[y] <= wst3c[y];
				 st4r[y] <= wst4r[y];
				 st4c[y] <= wst4c[y];
				 st5r[y] <= wst5r[y];
				 st5c[y] <= wst5c[y];
				 st6r[y] <= wst6r[y];
				 st6c[y] <= wst6c[y];
				 st7r[y] <= wst7r[y];
				 st7c[y] <= wst7c[y];


				//$display("%0d\n",wst2r[3]);
				
			end
		end
		
	//	always #100 stage <= stage +1;


	
	


	
	integer boxstart2;
	integer boxstart3;
	integer boxstart4;
	integer boxstart5;
	integer boxstart6;

	integer boxsize2;
	integer boxsize3;
	integer boxsize4;
	integer boxsize5;
	integer boxsize6;
	
	integer k2;
	integer k3;
	integer k4;
	integer k5;
	integer k6;
	
// use a clock if it poops
	always @( *)

	 	begin
	
		
			
			// $display("Stage 2jsdnkjvn,s");
				boxstart2 = 0;
				boxsize2 = 1;
				while(boxsize2+boxstart2 < 32)
					begin
						for(k2=0;k2<boxsize2; k2=k2+1)
						// clock may be required here
						begin
						#1
							i2 <= boxstart2 + k2;

						
							#1
							t2 = i2%2;
						#1
							
							if(t2<1)
								begin
								
						#1			j2 <= i2 + 1;
								
								end
							else
								begin
								
						#1			j2 <= i2 - 1;
								
								end

						
								
								
						#1	xi2r <= wst2r[i2];
						#1	xi2c <= wst2c[i2];
						#1	xj2r <= wst2r[j2];
						#1	xj2c <= wst2c[j2];
							
							
						#1	st3r[i2] <= wyi3r;
						#1	st3c[i2] <= wyi3c;
						#1	st3r[j2] <= wyj3r;
						#1	st3c[j2] <= wyj3c;
						 
						//$display("i%0d j%0d", i, j);
						#1;
						end
						#1
						boxstart2 = boxstart2 + 2;

					end

		end
		always @( *)
		begin
			

			
				 
				boxstart3 = 0;
				boxsize3 = 2**(3-2);
				while(boxsize3+boxstart3 < 32)
					begin
						for(k3=0;k3<boxsize3; k3=k3+1)
						// clock may be required here
						begin
						#2	i3 <= boxstart3 + k3;
							
						#2	t3 = i3%(2**(3-1));
							
							if(t3<(2**(3-2)))
								begin
						#2			j3 <= i3 + (2**(3-2));
								end
							else
								begin
						#2			j3 <= i3 - (2**(3-2));
								end

								
						#2	xi3r <= wst3r[i3];
						#2	xi3c <= wst3c[i3];
						#2	xj3r <= wst3r[j3];
						#2	xj3c <= wst3c[j3];
							
						#2	st4r[i3] <= wyi4r;
						#2	st4c[i3] <= wyi4c;
						#2	st4r[j3] <= wyj4r;
						#2	st4c[j3] <= wyj4c;
							
							

							

						end
					#2	boxstart3 = boxstart3 + (2**(3-1));

					end
		end
		always @( *)
		begin

			

			
				boxstart4 = 0;
				boxsize4 = 2**(4-2);
				while(boxsize4+boxstart4 < 32)
					begin
						for(k4=0;k4<boxsize4; k4=k4+1)
						// clock may be required here
						begin
						#3	i4 <= boxstart4 + k4;
							
						#3	t4 = i4%(2**(4-1));
							
							if(t4<(2**(4-2)))
								begin
						#3			j4 <= i4 + (2**(4-2));
								end
							else
								begin
						#3			j4 <= i4 - (2**(4-2));
								end

								
						#3	xi4r <= wst4r[i4];
						#3	xi4c <= wst4c[i4];
						#3	xj4r <= wst4r[j4];
						#3	xj4c <= wst4c[j4];
							
						#3	st5r[i4] <= wyi5r;
						#3	st5c[i4] <= wyi5c;
						#3	st5r[j4] <= wyj5r;
						#3	st5c[j4] <= wyj5c;

									
							

						end
					#3	boxstart4 = boxstart4 + (2**(4-1));

					end
		end
		always @( *)
		begin

			

			
				boxstart5 = 0;
				boxsize5 = 2**(5-2);
				while(boxsize5+boxstart5 < 32)
					begin
						for(k5=0;k5<boxsize5; k5=k5+1)
						// clock may be required here
						begin
					#4		i5 <= boxstart5 + k5;
							
					#4		t5 = i5%(2**(5-1));
							
							if(t5<(2**(5-2)))
								begin
					#4				j5 <= i5 + (2**(5-2));
								end
							else
								begin
					#4				j5 <= i5 - (2**(5-2));
								end

								
					#4		xi5r <= wst5r[i5];
					#4		xi5c <= wst5c[i5];
					#4		xj5r <= wst5r[j5];
					#4		xj5c <= wst5c[j5];
								
					#4		st6r[i5] <= wyi6r;
					#4		st6c[i5] <= wyi6c;
					#4		st6r[j5] <= wyj6r;
					#4		st6c[j5] <= wyj6c;

							

							
							

						end
					#4	boxstart5 = boxstart5 + (2**(5-1));

					end
		end
		always @( *)
		begin

			
			
			
				boxstart6 = 0;
				boxsize6 = 2**(6-2);
				while(boxsize6+boxstart6 < 32)
					begin
						for(k6=0;k6<boxsize6; k6=k6+1)
						// clock may be required here
						begin
					#5		i6 <= boxstart6 + k6;
							

					#5		t6 = i6%(2**(6-1));
							
							if(t6<(2**(6-2)))
								begin
					#5				j6 <= i6 + (2**(6-2));
								end
							else
								begin
					#5				j6 <= i6 - (2**(6-2));
								end


					#5		xi6r <= wst6r[i6];
					#5		xi6c <= wst6c[i6];
					#5		xj6r <= wst6r[j6];
					#5		xj6c <= wst6c[j6];
							
					#5		st7r[i6] <= wyi7r;
					#5		st7c[i6] <= wyi7c;
					#5		st7r[j6] <= wyj7r;
					#5		st7c[j6] <= wyj7c;
							

							

						end
					#5	boxstart6 = boxstart6 + (2**(6-1));

					end

		end

		
		

integer z=0;
always @(*)
	begin
		#1000
		for(z=0;z<32;z=z+1)
			begin
				//$display ("Stage:%0d", stage);
		//		$display ("VAL: %0d", wst2r[3]);	
				$display("(%0d:%0d) + i (%0d:%0d)",st3r[z][15],st3r[z][14:0],st4c[z][15],st4c[z][14:0]);
		
			end
	end


endmodule