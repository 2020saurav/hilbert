module butterfly(xir, xic, xjr, xjc, stage, i, j, yir, yic, yjr, yjc);

	input [15:0] xir;
	input [15:0] xic;
	input [15:0] xjr;
	input [15:0] xjc;

	output [15:0] yir;
	output [15:0] yic;
	output [15:0] yjr;
	output [15:0] yjc;

	// temporary for yi and yj.
	wire [15:0] tir; 
	wire [15:0] tic;
	wire [15:0] tjr;
	wire [15:0] tjc;

	input [4:0] i;
	input [4:0] j;
	input [2:0] stage;

	reg [15:0] negxjr;
	reg [15:0] negxjc;

	wire [15:0] wnegxjr;
	wire [15:0] wnegxjc;
	


	reg [15:0] twiddler [0:31];
	reg [15:0] twiddlei [0:31];

	reg [15:0] v1;
	reg [15:0] v2;
	reg [15:0] v3;
	reg [15:0] v4;
	reg [15:0] v5;
	reg [15:0] v6;
	reg [15:0] v7;
	reg [15:0] v8;


	wire [15:0] wv1;
	wire [15:0] wv2;
	wire [15:0] wv3;
	wire [15:0] wv4;
	wire [15:0] wv5;
	wire [15:0] wv6;
	wire [15:0] wv7;
	wire [15:0] wv8;

	assign wnegxjr = xjr;
	assign wnegxjc = xjc;

	initial
		begin
		$readmemb("cos.bin",twiddler);
		$readmemb("sin.bin",twiddlei);
		end


	always @(xjr or xjc)
	begin
	
		

		
		assign negxjr = wnegxjr;
		assign negxjc = wnegxjc;
		assign negxjr[15] = ~wnegxjr[15];
		assign negxjc[15] = ~wnegxjc[15];



		//$display("NEGXJ: (%0d:%0d) + i (%0d:%0d)", negxjr[9],negxjr[8:0],negxjc[9],negxjc[8:0]);
		

	
	end

		adder add1r (xir, xjr, tir);
		adder add1c (xic, xjc, tic);

		adder add2r (xir, negxjr, tjr);
		adder add2c (xic, negxjc, tjc);



	
	integer k;
	integer t;
		
	always @(*)
	begin
		t = i%(2**stage);
		if(t < (2**(stage-1)))
			k = 0;
		else
			k = (2**(5-stage)) * (t-(2**(stage-1)));


	end


	multiplier mult1 (tir,twiddler[k],wv1);
	multiplier mult2 (tic,twiddlei[k],wv2);

	always @(*)
	begin
		v1 <= wv1;
		v2 <= {~wv2[15],wv2[14:0]};

	end
	adder add3r(v1,v2,yir);



	multiplier mult3 (tir,twiddlei[k],wv3);
	multiplier mult4 (tic,twiddler[k],wv4);

	always @(*)
	begin
		v3 <= wv3;
		v4 <= wv4;
	end

	adder add3c(v3,v4,yic);


	
	integer l;
	integer p;
		
	always @(*)
	begin
		p = j%(2**stage);
		if(p < (2**(stage-1)))
			l = 0;
		else
			l = (2**(5-stage)) * (p-(2**(stage-1)));

			//$display("Stage: %0d, L: %0d, J: %0d", stage, l, j);
	end


	multiplier mult5 (tjr,twiddler[l],wv5);
	multiplier mult6 (tjc,twiddlei[l],wv6);

	always @(*)
	begin
		v5 <= wv5;
		v6 <= {~wv6[15],wv6[14:0]};

	end
	adder add4r(v5,v6,yjr);


	multiplier mult7 (tjr,twiddlei[l],wv7);
	multiplier mult8 (tjc,twiddler[l],wv8);

	always @(*)
	begin
		v7 <= wv7;
		v8 <= wv8;
	end

	adder add4c(v7,v8,yjc);




endmodule

	
