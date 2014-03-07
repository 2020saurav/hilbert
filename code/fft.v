module fft;

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
	reg [15:0] st8r[0:31];
	reg [15:0] st8c[0:31];
	reg [15:0] st9r[0:31];
	reg [15:0] st9c[0:31];
	reg [15:0] st10r[0:31];
	reg [15:0] st10c[0:31];
	reg [15:0] st11r[0:31];
	reg [15:0] st11c[0:31];
	reg [15:0] st12r[0:31];
	reg [15:0] st12c[0:31];
	reg [15:0] st13r[0:31];
	reg [15:0] st13c[0:31];
	reg [15:0] st14r[0:31];
	reg [15:0] st14c[0:31];



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
	wire [15:0] wst8r[0:31];
	wire [15:0] wst8c[0:31];
	wire [15:0] wst9r[0:31];
	wire [15:0] wst9c[0:31];
	wire [15:0] wst10r[0:31];
	wire [15:0] wst10c[0:31];
	wire [15:0] wst11r[0:31];
	wire [15:0] wst11c[0:31];
	wire [15:0] wst12r[0:31];
	wire [15:0] wst12c[0:31];
	wire [15:0] wst13r[0:31];
	wire [15:0] wst13c[0:31];
	wire [15:0] wst14r[0:31];
	wire [15:0] wst14c[0:31];


	assign wst8r[0] = st8r[0];
	assign wst8r[1] = st8r[1];
	assign wst8r[2] = st8r[2];
	assign wst8r[3] = st8r[3];
	assign wst8r[4] = st8r[4];
	assign wst8r[5] = st8r[5];
	assign wst8r[6] = st8r[6];
	assign wst8r[7] = st8r[7];
	assign wst8r[8] = st8r[8];
	assign wst8r[9] = st8r[9];
	assign wst8r[10] = st8r[10];
	assign wst8r[11] = st8r[11];
	assign wst8r[12] = st8r[12];
	assign wst8r[13] = st8r[13];
	assign wst8r[14] = st8r[14];
	assign wst8r[15] = st8r[15];
	assign wst8r[16] = st8r[16];
	assign wst8r[17] = st8r[17];
	assign wst8r[18] = st8r[18];
	assign wst8r[19] = st8r[19];
	assign wst8r[20] = st8r[20];
	assign wst8r[21] = st8r[21];
	assign wst8r[22] = st8r[22];
	assign wst8r[23] = st8r[23];
	assign wst8r[24] = st8r[24];
	assign wst8r[25] = st8r[25];
	assign wst8r[26] = st8r[26];
	assign wst8r[27] = st8r[27];
	assign wst8r[28] = st8r[28];
	assign wst8r[29] = st8r[29];
	assign wst8r[30] = st8r[30];
	assign wst8r[31] = st8r[31];

	assign wst8c[0] = st8c[0];
	assign wst8c[1] = st8c[1];
	assign wst8c[2] = st8c[2];
	assign wst8c[3] = st8c[3];
	assign wst8c[4] = st8c[4];
	assign wst8c[5] = st8c[5];
	assign wst8c[6] = st8c[6];
	assign wst8c[7] = st8c[7];
	assign wst8c[8] = st8c[8];
	assign wst8c[9] = st8c[9];
	assign wst8c[10] = st8c[10];
	assign wst8c[11] = st8c[11];
	assign wst8c[12] = st8c[12];
	assign wst8c[13] = st8c[13];
	assign wst8c[14] = st8c[14];
	assign wst8c[15] = st8c[15];
	assign wst8c[16] = st8c[16];
	assign wst8c[17] = st8c[17];
	assign wst8c[18] = st8c[18];
	assign wst8c[19] = st8c[19];
	assign wst8c[20] = st8c[20];
	assign wst8c[21] = st8c[21];
	assign wst8c[22] = st8c[22];
	assign wst8c[23] = st8c[23];
	assign wst8c[24] = st8c[24];
	assign wst8c[25] = st8c[25];
	assign wst8c[26] = st8c[26];
	assign wst8c[27] = st8c[27];
	assign wst8c[28] = st8c[28];
	assign wst8c[29] = st8c[29];
	assign wst8c[30] = st8c[30];
	assign wst8c[31] = st8c[31];



			 assign wst9r[0] = st8r[0];
			 assign wst9r[1] = st8r[16];
			 assign wst9r[2] = st8r[8];
			 assign wst9r[3] = st8r[24];
			 assign wst9r[4] = st8r[4];
			 assign wst9r[5] = st8r[20];
			 assign wst9r[6] = st8r[12];
			 assign wst9r[7] = st8r[28];
			 assign wst9r[8] = st8r[2];
			 assign wst9r[9] = st8r[18];
			 assign wst9r[10] = st8r[10];
			 assign wst9r[11] = st8r[26];
			 assign wst9r[12] = st8r[6];
			 assign wst9r[13] = st8r[22];
			 assign wst9r[14] = st8r[14];
			 assign wst9r[15] = st8r[30];
			 assign wst9r[16] = st8r[1];
			 assign wst9r[17] = st8r[17];
			 assign wst9r[18] = st8r[9];
			 assign wst9r[19] = st8r[25];
			 assign wst9r[20] = st8r[5];
			 assign wst9r[21] = st8r[21];
			 assign wst9r[22] = st8r[13];
			 assign wst9r[23] = st8r[29];
			 assign wst9r[24] = st8r[3];
			 assign wst9r[25] = st8r[19];
			 assign wst9r[26] = st8r[11];
			 assign wst9r[27] = st8r[27];
			 assign wst9r[28] = st8r[7];
			 assign wst9r[29] = st8r[23];
			 assign wst9r[30] = st8r[15];
			 assign wst9r[31] = st8r[31];
			 assign wst9c[0] = st8c[0];
			 assign wst9c[1] = st8c[16];
			 assign wst9c[2] = st8c[8];
			 assign wst9c[3] = st8c[24];
			 assign wst9c[4] = st8c[4];
			 assign wst9c[5] = st8c[20];
			 assign wst9c[6] = st8c[12];
			 assign wst9c[7] = st8c[28];
			 assign wst9c[8] = st8c[2];
			 assign wst9c[9] = st8c[18];
			 assign wst9c[10] = st8c[10];
			 assign wst9c[11] = st8c[26];
			 assign wst9c[12] = st8c[6];
			 assign wst9c[13] = st8c[22];
			 assign wst9c[14] = st8c[14];
			 assign wst9c[15] = st8c[30];
			 assign wst9c[16] = st8c[1];
			 assign wst9c[17] = st8c[17];
			 assign wst9c[18] = st8c[9];
			 assign wst9c[19] = st8c[25];
			 assign wst9c[20] = st8c[5];
			 assign wst9c[21] = st8c[21];
			 assign wst9c[22] = st8c[13];
			 assign wst9c[23] = st8c[29];
			 assign wst9c[24] = st8c[3];
			 assign wst9c[25] = st8c[19];
			 assign wst9c[26] = st8c[11];
			 assign wst9c[27] = st8c[27];
			 assign wst9c[28] = st8c[7];
			 assign wst9c[29] = st8c[23];
			 assign wst9c[30] = st8c[15];
			 assign wst9c[31] = st8c[31];


	initial
		begin
		$readmemb("inputr.bin", st2r);
		$readmemb("inputc.bin", st2c);

		end

	integer i;
	integer j;
	integer k;



	always @(*)
		begin
			for(i=0; i<32; i= i+1)
			begin
				st3r[i] <= wst3r[i];
				st3c[i] <= wst3c[i];
				st4r[i] <= wst4r[i];
				st4c[i] <= wst4c[i];
				st5r[i] <= wst5r[i];
				st5c[i] <= wst5c[i];
				st6r[i] <= wst6r[i];
				st6c[i] <= wst6c[i];
				st7r[i] <= wst7r[i];
				st7c[i] <= wst7c[i];

				st8r[i] <= wst8r[i];
				st8c[i] <= wst8c[i];
				st9r[i] <= wst9r[i];
				st9c[i] <= wst9c[i];
				st10r[i] <= wst10r[i];
				st10c[i] <= wst10c[i];
				st11r[i] <= wst11r[i];
				st11c[i] <= wst11c[i];
				st12r[i] <= wst12r[i];
				st12c[i] <= wst12c[i];
				st13r[i] <= wst13r[i];
				st13c[i] <= wst13c[i];
				st14r[i] <= wst14r[i];
				st14c[i] <= wst14c[i];

			end

			st8r[0] <= 0;
			st8c[0] <= 0;
			st8r[16] <= 0;
			st8c[16] <= 0;
	
			
			for(j=1;j<16;j=j+1)
			begin
	
				st8r[j] <= {~wst7r[j][15], wst7r[j][14:0]};
				st8c[j] <= wst7c[j];
	
			end
	
			
	
			for(k=17;k<32;k=k+1)
			begin
	
				st8r[k] <= wst7r[k];
				st8c[k] <=  {~wst7c[k][15], wst7c[k][14:0]};
			end

			

		end

	always @(*)
		begin 


			 st9r[0] <= st8r[0];
			 st9r[1] <= st8r[16];
			 st9r[2] <= st8r[8];
			 st9r[3] <= st8r[24];
			 st9r[4] <= st8r[4];
			 st9r[5] <= st8r[20];
			 st9r[6] <= st8r[12];
			 st9r[7] <= st8r[28];
			 st9r[8] <= st8r[2];
			 st9r[9] <= st8r[18];
			 st9r[10] <= st8r[10];
			 st9r[11] <= st8r[26];
			 st9r[12] <= st8r[6];
			 st9r[13] <= st8r[22];
			 st9r[14] <= st8r[14];
			 st9r[15] <= st8r[30];
			 st9r[16] <= st8r[1];
			 st9r[17] <= st8r[17];
			 st9r[18] <= st8r[9];
			 st9r[19] <= st8r[25];
			 st9r[20] <= st8r[5];
			 st9r[21] <= st8r[21];
			 st9r[22] <= st8r[13];
			 st9r[23] <= st8r[29];
			 st9r[24] <= st8r[3];
			 st9r[25] <= st8r[19];
			 st9r[26] <= st8r[11];
			 st9r[27] <= st8r[27];
			 st9r[28] <= st8r[7];
			 st9r[29] <= st8r[23];
			 st9r[30] <= st8r[15];
			 st9r[31] <= st8r[31];
			 st9c[0] <= st8c[0];
			 st9c[1] <= st8c[16];
			 st9c[2] <= st8c[8];
			 st9c[3] <= st8c[24];
			 st9c[4] <= st8c[4];
			 st9c[5] <= st8c[20];
			 st9c[6] <= st8c[12];
			 st9c[7] <= st8c[28];
			 st9c[8] <= st8c[2];
			 st9c[9] <= st8c[18];
			 st9c[10] <= st8c[10];
			 st9c[11] <= st8c[26];
			 st9c[12] <= st8c[6];
			 st9c[13] <= st8c[22];
			 st9c[14] <= st8c[14];
			 st9c[15] <= st8c[30];
			 st9c[16] <= st8c[1];
			 st9c[17] <= st8c[17];
			 st9c[18] <= st8c[9];
			 st9c[19] <= st8c[25];
			 st9c[20] <= st8c[5];
			 st9c[21] <= st8c[21];
			 st9c[22] <= st8c[13];
			 st9c[23] <= st8c[29];
			 st9c[24] <= st8c[3];
			 st9c[25] <= st8c[19];
			 st9c[26] <= st8c[11];
			 st9c[27] <= st8c[27];
			 st9c[28] <= st8c[7];
			 st9c[29] <= st8c[23];
			 st9c[30] <= st8c[15];
			 st9c[31] <= st8c[31];
			 
		end



	butterfly but2_0(st2r[0],st2c[0],st2r[1],st2c[1],2,0,1,wst3r[0],wst3c[0],wst3r[1],wst3c[1]);
	butterfly but2_2(st2r[2],st2c[2],st2r[3],st2c[3],2,2,3,wst3r[2],wst3c[2],wst3r[3],wst3c[3]);
	butterfly but2_4(st2r[4],st2c[4],st2r[5],st2c[5],2,4,5,wst3r[4],wst3c[4],wst3r[5],wst3c[5]);
	butterfly but2_6(st2r[6],st2c[6],st2r[7],st2c[7],2,6,7,wst3r[6],wst3c[6],wst3r[7],wst3c[7]);
	butterfly but2_8(st2r[8],st2c[8],st2r[9],st2c[9],2,8,9,wst3r[8],wst3c[8],wst3r[9],wst3c[9]);
	butterfly but2_10(st2r[10],st2c[10],st2r[11],st2c[11],2,10,11,wst3r[10],wst3c[10],wst3r[11],wst3c[11]);
	butterfly but2_12(st2r[12],st2c[12],st2r[13],st2c[13],2,12,13,wst3r[12],wst3c[12],wst3r[13],wst3c[13]);
	butterfly but2_14(st2r[14],st2c[14],st2r[15],st2c[15],2,14,15,wst3r[14],wst3c[14],wst3r[15],wst3c[15]);
	butterfly but2_16(st2r[16],st2c[16],st2r[17],st2c[17],2,16,17,wst3r[16],wst3c[16],wst3r[17],wst3c[17]);
	butterfly but2_18(st2r[18],st2c[18],st2r[19],st2c[19],2,18,19,wst3r[18],wst3c[18],wst3r[19],wst3c[19]);
	butterfly but2_20(st2r[20],st2c[20],st2r[21],st2c[21],2,20,21,wst3r[20],wst3c[20],wst3r[21],wst3c[21]);
	butterfly but2_22(st2r[22],st2c[22],st2r[23],st2c[23],2,22,23,wst3r[22],wst3c[22],wst3r[23],wst3c[23]);
	butterfly but2_24(st2r[24],st2c[24],st2r[25],st2c[25],2,24,25,wst3r[24],wst3c[24],wst3r[25],wst3c[25]);
	butterfly but2_26(st2r[26],st2c[26],st2r[27],st2c[27],2,26,27,wst3r[26],wst3c[26],wst3r[27],wst3c[27]);
	butterfly but2_28(st2r[28],st2c[28],st2r[29],st2c[29],2,28,29,wst3r[28],wst3c[28],wst3r[29],wst3c[29]);
	butterfly but2_30(st2r[30],st2c[30],st2r[31],st2c[31],2,30,31,wst3r[30],wst3c[30],wst3r[31],wst3c[31]);
	
	butterfly but3_0(st3r[0],st3c[0],st3r[2],st3c[2],3,0,2,wst4r[0],wst4c[0],wst4r[2],wst4c[2]);
	butterfly but3_1(st3r[1],st3c[1],st3r[3],st3c[3],3,1,3,wst4r[1],wst4c[1],wst4r[3],wst4c[3]);
	butterfly but3_4(st3r[4],st3c[4],st3r[6],st3c[6],3,4,6,wst4r[4],wst4c[4],wst4r[6],wst4c[6]);
	butterfly but3_5(st3r[5],st3c[5],st3r[7],st3c[7],3,5,7,wst4r[5],wst4c[5],wst4r[7],wst4c[7]);
	butterfly but3_8(st3r[8],st3c[8],st3r[10],st3c[10],3,8,10,wst4r[8],wst4c[8],wst4r[10],wst4c[10]);
	butterfly but3_9(st3r[9],st3c[9],st3r[11],st3c[11],3,9,11,wst4r[9],wst4c[9],wst4r[11],wst4c[11]);
	butterfly but3_12(st3r[12],st3c[12],st3r[14],st3c[14],3,12,14,wst4r[12],wst4c[12],wst4r[14],wst4c[14]);
	butterfly but3_13(st3r[13],st3c[13],st3r[15],st3c[15],3,13,15,wst4r[13],wst4c[13],wst4r[15],wst4c[15]);
	butterfly but3_16(st3r[16],st3c[16],st3r[18],st3c[18],3,16,18,wst4r[16],wst4c[16],wst4r[18],wst4c[18]);
	butterfly but3_17(st3r[17],st3c[17],st3r[19],st3c[19],3,17,19,wst4r[17],wst4c[17],wst4r[19],wst4c[19]);
	butterfly but3_20(st3r[20],st3c[20],st3r[22],st3c[22],3,20,22,wst4r[20],wst4c[20],wst4r[22],wst4c[22]);
	butterfly but3_21(st3r[21],st3c[21],st3r[23],st3c[23],3,21,23,wst4r[21],wst4c[21],wst4r[23],wst4c[23]);
	butterfly but3_24(st3r[24],st3c[24],st3r[26],st3c[26],3,24,26,wst4r[24],wst4c[24],wst4r[26],wst4c[26]);
	butterfly but3_25(st3r[25],st3c[25],st3r[27],st3c[27],3,25,27,wst4r[25],wst4c[25],wst4r[27],wst4c[27]);
	butterfly but3_28(st3r[28],st3c[28],st3r[30],st3c[30],3,28,30,wst4r[28],wst4c[28],wst4r[30],wst4c[30]);
	butterfly but3_29(st3r[29],st3c[29],st3r[31],st3c[31],3,29,31,wst4r[29],wst4c[29],wst4r[31],wst4c[31]);
	
	butterfly but4_0(st4r[0],st4c[0],st4r[4],st4c[4],4,0,4,wst5r[0],wst5c[0],wst5r[4],wst5c[4]);
	butterfly but4_1(st4r[1],st4c[1],st4r[5],st4c[5],4,1,5,wst5r[1],wst5c[1],wst5r[5],wst5c[5]);
	butterfly but4_2(st4r[2],st4c[2],st4r[6],st4c[6],4,2,6,wst5r[2],wst5c[2],wst5r[6],wst5c[6]);
	butterfly but4_3(st4r[3],st4c[3],st4r[7],st4c[7],4,3,7,wst5r[3],wst5c[3],wst5r[7],wst5c[7]);
	butterfly but4_8(st4r[8],st4c[8],st4r[12],st4c[12],4,8,12,wst5r[8],wst5c[8],wst5r[12],wst5c[12]);
	butterfly but4_9(st4r[9],st4c[9],st4r[13],st4c[13],4,9,13,wst5r[9],wst5c[9],wst5r[13],wst5c[13]);
	butterfly but4_10(st4r[10],st4c[10],st4r[14],st4c[14],4,10,14,wst5r[10],wst5c[10],wst5r[14],wst5c[14]);
	butterfly but4_11(st4r[11],st4c[11],st4r[15],st4c[15],4,11,15,wst5r[11],wst5c[11],wst5r[15],wst5c[15]);
	butterfly but4_16(st4r[16],st4c[16],st4r[20],st4c[20],4,16,20,wst5r[16],wst5c[16],wst5r[20],wst5c[20]);
	butterfly but4_17(st4r[17],st4c[17],st4r[21],st4c[21],4,17,21,wst5r[17],wst5c[17],wst5r[21],wst5c[21]);
	butterfly but4_18(st4r[18],st4c[18],st4r[22],st4c[22],4,18,22,wst5r[18],wst5c[18],wst5r[22],wst5c[22]);
	butterfly but4_19(st4r[19],st4c[19],st4r[23],st4c[23],4,19,23,wst5r[19],wst5c[19],wst5r[23],wst5c[23]);
	butterfly but4_24(st4r[24],st4c[24],st4r[28],st4c[28],4,24,28,wst5r[24],wst5c[24],wst5r[28],wst5c[28]);
	butterfly but4_25(st4r[25],st4c[25],st4r[29],st4c[29],4,25,29,wst5r[25],wst5c[25],wst5r[29],wst5c[29]);
	butterfly but4_26(st4r[26],st4c[26],st4r[30],st4c[30],4,26,30,wst5r[26],wst5c[26],wst5r[30],wst5c[30]);
	butterfly but4_27(st4r[27],st4c[27],st4r[31],st4c[31],4,27,31,wst5r[27],wst5c[27],wst5r[31],wst5c[31]);
	
	butterfly but5_0(st5r[0],st5c[0],st5r[8],st5c[8],5,0,8,wst6r[0],wst6c[0],wst6r[8],wst6c[8]);
	butterfly but5_1(st5r[1],st5c[1],st5r[9],st5c[9],5,1,9,wst6r[1],wst6c[1],wst6r[9],wst6c[9]);
	butterfly but5_2(st5r[2],st5c[2],st5r[10],st5c[10],5,2,10,wst6r[2],wst6c[2],wst6r[10],wst6c[10]);
	butterfly but5_3(st5r[3],st5c[3],st5r[11],st5c[11],5,3,11,wst6r[3],wst6c[3],wst6r[11],wst6c[11]);
	butterfly but5_4(st5r[4],st5c[4],st5r[12],st5c[12],5,4,12,wst6r[4],wst6c[4],wst6r[12],wst6c[12]);
	butterfly but5_5(st5r[5],st5c[5],st5r[13],st5c[13],5,5,13,wst6r[5],wst6c[5],wst6r[13],wst6c[13]);
	butterfly but5_6(st5r[6],st5c[6],st5r[14],st5c[14],5,6,14,wst6r[6],wst6c[6],wst6r[14],wst6c[14]);
	butterfly but5_7(st5r[7],st5c[7],st5r[15],st5c[15],5,7,15,wst6r[7],wst6c[7],wst6r[15],wst6c[15]);
	butterfly but5_16(st5r[16],st5c[16],st5r[24],st5c[24],5,16,24,wst6r[16],wst6c[16],wst6r[24],wst6c[24]);
	butterfly but5_17(st5r[17],st5c[17],st5r[25],st5c[25],5,17,25,wst6r[17],wst6c[17],wst6r[25],wst6c[25]);
	butterfly but5_18(st5r[18],st5c[18],st5r[26],st5c[26],5,18,26,wst6r[18],wst6c[18],wst6r[26],wst6c[26]);
	butterfly but5_19(st5r[19],st5c[19],st5r[27],st5c[27],5,19,27,wst6r[19],wst6c[19],wst6r[27],wst6c[27]);
	butterfly but5_20(st5r[20],st5c[20],st5r[28],st5c[28],5,20,28,wst6r[20],wst6c[20],wst6r[28],wst6c[28]);
	butterfly but5_21(st5r[21],st5c[21],st5r[29],st5c[29],5,21,29,wst6r[21],wst6c[21],wst6r[29],wst6c[29]);
	butterfly but5_22(st5r[22],st5c[22],st5r[30],st5c[30],5,22,30,wst6r[22],wst6c[22],wst6r[30],wst6c[30]);
	butterfly but5_23(st5r[23],st5c[23],st5r[31],st5c[31],5,23,31,wst6r[23],wst6c[23],wst6r[31],wst6c[31]);
	
	butterfly but6_0(st6r[0],st6c[0],st6r[16],st6c[16],6,0,16,wst7r[0],wst7c[0],wst7r[16],wst7c[16]);
	butterfly but6_1(st6r[1],st6c[1],st6r[17],st6c[17],6,1,17,wst7r[1],wst7c[1],wst7r[17],wst7c[17]);
	butterfly but6_2(st6r[2],st6c[2],st6r[18],st6c[18],6,2,18,wst7r[2],wst7c[2],wst7r[18],wst7c[18]);
	butterfly but6_3(st6r[3],st6c[3],st6r[19],st6c[19],6,3,19,wst7r[3],wst7c[3],wst7r[19],wst7c[19]);
	butterfly but6_4(st6r[4],st6c[4],st6r[20],st6c[20],6,4,20,wst7r[4],wst7c[4],wst7r[20],wst7c[20]);
	butterfly but6_5(st6r[5],st6c[5],st6r[21],st6c[21],6,5,21,wst7r[5],wst7c[5],wst7r[21],wst7c[21]);
	butterfly but6_6(st6r[6],st6c[6],st6r[22],st6c[22],6,6,22,wst7r[6],wst7c[6],wst7r[22],wst7c[22]);
	butterfly but6_7(st6r[7],st6c[7],st6r[23],st6c[23],6,7,23,wst7r[7],wst7c[7],wst7r[23],wst7c[23]);
	butterfly but6_8(st6r[8],st6c[8],st6r[24],st6c[24],6,8,24,wst7r[8],wst7c[8],wst7r[24],wst7c[24]);
	butterfly but6_9(st6r[9],st6c[9],st6r[25],st6c[25],6,9,25,wst7r[9],wst7c[9],wst7r[25],wst7c[25]);
	butterfly but6_10(st6r[10],st6c[10],st6r[26],st6c[26],6,10,26,wst7r[10],wst7c[10],wst7r[26],wst7c[26]);
	butterfly but6_11(st6r[11],st6c[11],st6r[27],st6c[27],6,11,27,wst7r[11],wst7c[11],wst7r[27],wst7c[27]);
	butterfly but6_12(st6r[12],st6c[12],st6r[28],st6c[28],6,12,28,wst7r[12],wst7c[12],wst7r[28],wst7c[28]);
	butterfly but6_13(st6r[13],st6c[13],st6r[29],st6c[29],6,13,29,wst7r[13],wst7c[13],wst7r[29],wst7c[29]);
	butterfly but6_14(st6r[14],st6c[14],st6r[30],st6c[30],6,14,30,wst7r[14],wst7c[14],wst7r[30],wst7c[30]);
	butterfly but6_15(st6r[15],st6c[15],st6r[31],st6c[31],6,15,31,wst7r[15],wst7c[15],wst7r[31],wst7c[31]);
	
	
  //  butterfly but2_0(st2r[0],st2c[0],st2r[1],st2c[1],2,0,1,wst3r[0],wst3c[0],wst3r[1],wst3c[1]);


	butterfly but9_0(st9r[0],st9c[0],st9r[1],st9c[1],2,0,1,wst10r[0],wst10c[0],wst10r[1],wst10c[1]);
	
	butterfly but9_2(st9r[2],st9c[2],st9r[3],st9c[3],2,2,3,wst10r[2],wst10c[2],wst10r[3],wst10c[3]);
	butterfly but9_4(st9r[4],st9c[4],st9r[5],st9c[5],2,4,5,wst10r[4],wst10c[4],wst10r[5],wst10c[5]);
	butterfly but9_6(st9r[6],st9c[6],st9r[7],st9c[7],2,6,7,wst10r[6],wst10c[6],wst10r[7],wst10c[7]);
	butterfly but9_8(st9r[8],st9c[8],st9r[9],st9c[9],2,8,9,wst10r[8],wst10c[8],wst10r[9],wst10c[9]);
	butterfly but9_10(st9r[10],st9c[10],st9r[11],st9c[11],2,10,11,wst10r[10],wst10c[10],wst10r[11],wst10c[11]);
	butterfly but9_12(st9r[12],st9c[12],st9r[13],st9c[13],2,12,13,wst10r[12],wst10c[12],wst10r[13],wst10c[13]);
	butterfly but9_14(st9r[14],st9c[14],st9r[15],st9c[15],2,14,15,wst10r[14],wst10c[14],wst10r[15],wst10c[15]);
	butterfly but9_16(st9r[16],st9c[16],st9r[17],st9c[17],2,16,17,wst10r[16],wst10c[16],wst10r[17],wst10c[17]);
	butterfly but9_18(st9r[18],st9c[18],st9r[19],st9c[19],2,18,19,wst10r[18],wst10c[18],wst10r[19],wst10c[19]);
	butterfly but9_20(st9r[20],st9c[20],st9r[21],st9c[21],2,20,21,wst10r[20],wst10c[20],wst10r[21],wst10c[21]);
	butterfly but9_22(st9r[22],st9c[22],st9r[23],st9c[23],2,22,23,wst10r[22],wst10c[22],wst10r[23],wst10c[23]);
	butterfly but9_24(st9r[24],st9c[24],st9r[25],st9c[25],2,24,25,wst10r[24],wst10c[24],wst10r[25],wst10c[25]);
	butterfly but9_26(st9r[26],st9c[26],st9r[27],st9c[27],2,26,27,wst10r[26],wst10c[26],wst10r[27],wst10c[27]);
	butterfly but9_28(st9r[28],st9c[28],st9r[29],st9c[29],2,28,29,wst10r[28],wst10c[28],wst10r[29],wst10c[29]);
	butterfly but9_30(st9r[30],st9c[30],st9r[31],st9c[31],2,30,31,wst10r[30],wst10c[30],wst10r[31],wst10c[31]);

	butterfly but10_0(st10r[0],st10c[0],st10r[2],st10c[2],3,0,2,wst11r[0],wst11c[0],wst11r[2],wst11c[2]);
	butterfly but10_1(st10r[1],st10c[1],st10r[3],st10c[3],3,1,3,wst11r[1],wst11c[1],wst11r[3],wst11c[3]);
	butterfly but10_4(st10r[4],st10c[4],st10r[6],st10c[6],3,4,6,wst11r[4],wst11c[4],wst11r[6],wst11c[6]);
	butterfly but10_5(st10r[5],st10c[5],st10r[7],st10c[7],3,5,7,wst11r[5],wst11c[5],wst11r[7],wst11c[7]);
	butterfly but10_8(st10r[8],st10c[8],st10r[10],st10c[10],3,8,10,wst11r[8],wst11c[8],wst11r[10],wst11c[10]);
	butterfly but10_9(st10r[9],st10c[9],st10r[11],st10c[11],3,9,11,wst11r[9],wst11c[9],wst11r[11],wst11c[11]);
	butterfly but10_12(st10r[12],st10c[12],st10r[14],st10c[14],3,12,14,wst11r[12],wst11c[12],wst11r[14],wst11c[14]);
	butterfly but10_13(st10r[13],st10c[13],st10r[15],st10c[15],3,13,15,wst11r[13],wst11c[13],wst11r[15],wst11c[15]);
	butterfly but10_16(st10r[16],st10c[16],st10r[18],st10c[18],3,16,18,wst11r[16],wst11c[16],wst11r[18],wst11c[18]);
	butterfly but10_17(st10r[17],st10c[17],st10r[19],st10c[19],3,17,19,wst11r[17],wst11c[17],wst11r[19],wst11c[19]);
	butterfly but10_20(st10r[20],st10c[20],st10r[22],st10c[22],3,20,22,wst11r[20],wst11c[20],wst11r[22],wst11c[22]);
	butterfly but10_21(st10r[21],st10c[21],st10r[23],st10c[23],3,21,23,wst11r[21],wst11c[21],wst11r[23],wst11c[23]);
	butterfly but10_24(st10r[24],st10c[24],st10r[26],st10c[26],3,24,26,wst11r[24],wst11c[24],wst11r[26],wst11c[26]);
	butterfly but10_25(st10r[25],st10c[25],st10r[27],st10c[27],3,25,27,wst11r[25],wst11c[25],wst11r[27],wst11c[27]);
	butterfly but10_28(st10r[28],st10c[28],st10r[30],st10c[30],3,28,30,wst11r[28],wst11c[28],wst11r[30],wst11c[30]);
	butterfly but10_29(st10r[29],st10c[29],st10r[31],st10c[31],3,29,31,wst11r[29],wst11c[29],wst11r[31],wst11c[31]);
	
	butterfly but11_0(st11r[0],st11c[0],st11r[4],st11c[4],4,0,4,wst12r[0],wst12c[0],wst12r[4],wst12c[4]);
	butterfly but11_1(st11r[1],st11c[1],st11r[5],st11c[5],4,1,5,wst12r[1],wst12c[1],wst12r[5],wst12c[5]);
	butterfly but11_2(st11r[2],st11c[2],st11r[6],st11c[6],4,2,6,wst12r[2],wst12c[2],wst12r[6],wst12c[6]);
	butterfly but11_3(st11r[3],st11c[3],st11r[7],st11c[7],4,3,7,wst12r[3],wst12c[3],wst12r[7],wst12c[7]);
	butterfly but11_8(st11r[8],st11c[8],st11r[12],st11c[12],4,8,12,wst12r[8],wst12c[8],wst12r[12],wst12c[12]);
	butterfly but11_9(st11r[9],st11c[9],st11r[13],st11c[13],4,9,13,wst12r[9],wst12c[9],wst12r[13],wst12c[13]);
	butterfly but11_10(st11r[10],st11c[10],st11r[14],st11c[14],4,10,14,wst12r[10],wst12c[10],wst12r[14],wst12c[14]);
	butterfly but11_11(st11r[11],st11c[11],st11r[15],st11c[15],4,11,15,wst12r[11],wst12c[11],wst12r[15],wst12c[15]);
	butterfly but11_16(st11r[16],st11c[16],st11r[20],st11c[20],4,16,20,wst12r[16],wst12c[16],wst12r[20],wst12c[20]);
	butterfly but11_17(st11r[17],st11c[17],st11r[21],st11c[21],4,17,21,wst12r[17],wst12c[17],wst12r[21],wst12c[21]);
	butterfly but11_18(st11r[18],st11c[18],st11r[22],st11c[22],4,18,22,wst12r[18],wst12c[18],wst12r[22],wst12c[22]);
	butterfly but11_19(st11r[19],st11c[19],st11r[23],st11c[23],4,19,23,wst12r[19],wst12c[19],wst12r[23],wst12c[23]);
	butterfly but11_24(st11r[24],st11c[24],st11r[28],st11c[28],4,24,28,wst12r[24],wst12c[24],wst12r[28],wst12c[28]);
	butterfly but11_25(st11r[25],st11c[25],st11r[29],st11c[29],4,25,29,wst12r[25],wst12c[25],wst12r[29],wst12c[29]);
	butterfly but11_26(st11r[26],st11c[26],st11r[30],st11c[30],4,26,30,wst12r[26],wst12c[26],wst12r[30],wst12c[30]);
	butterfly but11_27(st11r[27],st11c[27],st11r[31],st11c[31],4,27,31,wst12r[27],wst12c[27],wst12r[31],wst12c[31]);
	
	butterfly but12_0(st12r[0],st12c[0],st12r[8],st12c[8],5,0,8,wst13r[0],wst13c[0],wst13r[8],wst13c[8]);
	butterfly but12_1(st12r[1],st12c[1],st12r[9],st12c[9],5,1,9,wst13r[1],wst13c[1],wst13r[9],wst13c[9]);
	butterfly but12_2(st12r[2],st12c[2],st12r[10],st12c[10],5,2,10,wst13r[2],wst13c[2],wst13r[10],wst13c[10]);
	butterfly but12_3(st12r[3],st12c[3],st12r[11],st12c[11],5,3,11,wst13r[3],wst13c[3],wst13r[11],wst13c[11]);
	butterfly but12_4(st12r[4],st12c[4],st12r[12],st12c[12],5,4,12,wst13r[4],wst13c[4],wst13r[12],wst13c[12]);
	butterfly but12_5(st12r[5],st12c[5],st12r[13],st12c[13],5,5,13,wst13r[5],wst13c[5],wst13r[13],wst13c[13]);
	butterfly but12_6(st12r[6],st12c[6],st12r[14],st12c[14],5,6,14,wst13r[6],wst13c[6],wst13r[14],wst13c[14]);
	butterfly but12_7(st12r[7],st12c[7],st12r[15],st12c[15],5,7,15,wst13r[7],wst13c[7],wst13r[15],wst13c[15]);
	butterfly but12_16(st12r[16],st12c[16],st12r[24],st12c[24],5,16,24,wst13r[16],wst13c[16],wst13r[24],wst13c[24]);
	butterfly but12_17(st12r[17],st12c[17],st12r[25],st12c[25],5,17,25,wst13r[17],wst13c[17],wst13r[25],wst13c[25]);
	butterfly but12_18(st12r[18],st12c[18],st12r[26],st12c[26],5,18,26,wst13r[18],wst13c[18],wst13r[26],wst13c[26]);
	butterfly but12_19(st12r[19],st12c[19],st12r[27],st12c[27],5,19,27,wst13r[19],wst13c[19],wst13r[27],wst13c[27]);
	butterfly but12_20(st12r[20],st12c[20],st12r[28],st12c[28],5,20,28,wst13r[20],wst13c[20],wst13r[28],wst13c[28]);
	butterfly but12_21(st12r[21],st12c[21],st12r[29],st12c[29],5,21,29,wst13r[21],wst13c[21],wst13r[29],wst13c[29]);
	butterfly but12_22(st12r[22],st12c[22],st12r[30],st12c[30],5,22,30,wst13r[22],wst13c[22],wst13r[30],wst13c[30]);
	butterfly but12_23(st12r[23],st12c[23],st12r[31],st12c[31],5,23,31,wst13r[23],wst13c[23],wst13r[31],wst13c[31]);
	
	butterfly but13_0(st13r[0],st13c[0],st13r[16],st13c[16],6,0,16,wst14r[0],wst14c[0],wst14r[16],wst14c[16]);
	butterfly but13_1(st13r[1],st13c[1],st13r[17],st13c[17],6,1,17,wst14r[1],wst14c[1],wst14r[17],wst14c[17]);
	butterfly but13_2(st13r[2],st13c[2],st13r[18],st13c[18],6,2,18,wst14r[2],wst14c[2],wst14r[18],wst14c[18]);
	butterfly but13_3(st13r[3],st13c[3],st13r[19],st13c[19],6,3,19,wst14r[3],wst14c[3],wst14r[19],wst14c[19]);
	butterfly but13_4(st13r[4],st13c[4],st13r[20],st13c[20],6,4,20,wst14r[4],wst14c[4],wst14r[20],wst14c[20]);
	butterfly but13_5(st13r[5],st13c[5],st13r[21],st13c[21],6,5,21,wst14r[5],wst14c[5],wst14r[21],wst14c[21]);
	butterfly but13_6(st13r[6],st13c[6],st13r[22],st13c[22],6,6,22,wst14r[6],wst14c[6],wst14r[22],wst14c[22]);
	butterfly but13_7(st13r[7],st13c[7],st13r[23],st13c[23],6,7,23,wst14r[7],wst14c[7],wst14r[23],wst14c[23]);
	butterfly but13_8(st13r[8],st13c[8],st13r[24],st13c[24],6,8,24,wst14r[8],wst14c[8],wst14r[24],wst14c[24]);
	butterfly but13_9(st13r[9],st13c[9],st13r[25],st13c[25],6,9,25,wst14r[9],wst14c[9],wst14r[25],wst14c[25]);
	butterfly but13_10(st13r[10],st13c[10],st13r[26],st13c[26],6,10,26,wst14r[10],wst14c[10],wst14r[26],wst14c[26]);
	butterfly but13_11(st13r[11],st13c[11],st13r[27],st13c[27],6,11,27,wst14r[11],wst14c[11],wst14r[27],wst14c[27]);
	butterfly but13_12(st13r[12],st13c[12],st13r[28],st13c[28],6,12,28,wst14r[12],wst14c[12],wst14r[28],wst14c[28]);
	butterfly but13_13(st13r[13],st13c[13],st13r[29],st13c[29],6,13,29,wst14r[13],wst14c[13],wst14r[29],wst14c[29]);
	butterfly but13_14(st13r[14],st13c[14],st13r[30],st13c[30],6,14,30,wst14r[14],wst14c[14],wst14r[30],wst14c[30]);
	butterfly but13_15(st13r[15],st13c[15],st13r[31],st13c[31],6,15,31,wst14r[15],wst14c[15],wst14r[31],wst14c[31]);
	

	integer z=0;
	always @(z<32)
	begin
	#100
	for(z=0;z<32;z=z+1)
	begin

		if(st14c[z][15]==1)
			$display("-%0d  ", st14c[z][14:5]);
		else
			$display("%0d  ", st14c[z][14:5]);
		
	end
	end



endmodule