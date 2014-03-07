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


	initial
		begin
		$readmemb("inputr.bin", st2r);
		$readmemb("inputc.bin", st2c);

		end
	integer i;

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
				
			end
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
	integer j=0;
	always @(j<32)
	begin
	#1
	for(j=0;j<32;j=j+1)
	begin
		$display("(%0d:%0d) + i (%0d:%0d)",st7r[j][15],st7r[j][14:0],st7c[j][15],st7c[j][14:0]);

	end
	end
endmodule