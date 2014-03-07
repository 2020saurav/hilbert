module butterfly_tb;


	reg [15:0] xir;
	reg [15:0] xic;
	reg [15:0] xjr;
	reg [15:0] xjc;

	wire [15:0] yir;
	wire [15:0] yic;
	wire [15:0] yjr;
	wire [15:0] yjc;

	reg [15:0] data [0:100];





	reg [4:0] i;
	reg [4:0] j;
	reg [2:0] stage;

	butterfly but (xir, xic, xjr, xjc, stage, i, j, yir, yic, yjr, yjc);

	initial
	begin
		$readmemb("testdata.bin", data);
		xir <= data[0];
		xic <= data[1];
		xjr <= data[2];
		xjc <= data[3];
		stage <= data[4];
		i <= data[5];
		j <= data[6];
		#1000
		$display("(%0d:%0d) + i(%0d:%0d) -> (%0d:%0d) + i(%0d:%0d)\n", xir[15], xir[14:0], xic[15],xic[14:0], yir[15], yir[14:0], yic[15],yic[14:0]);
		$display("(%0d:%0d) + i(%0d:%0d) -> (%0d:%0d) + i(%0d:%0d)\n", xjr[15], xjr[14:0], xjc[15],xjc[14:0], yjr[15], yjr[14:0], yjc[15],yjc[14:0]);
		$display("Stage: %0d, i: %0d, j%0d\n ", stage, i, j);	
	end
endmodule