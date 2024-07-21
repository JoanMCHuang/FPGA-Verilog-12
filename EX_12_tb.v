`timescale 1 ns/1 ns

module testbench;
reg 	clk, reset;
reg		[3:0]   a,b;
reg		[1:0]	sel;
wire	[3:0]   g;

EX_12 EX12_instance(
	.reset(reset), .clk(clk), .a(a),
	.b(b), .sel(sel), .g(g) );

// set up clk with 10 ns period (100 MHz)
parameter clkper = 10;
initial
begin
	clk = 1;	// Time = 0
end

always 
begin
	#(clkper / 2)  clk = ~clk;
end

initial
begin
 a   	= 4'h5; //Time =0;
 b 	    = 4'h3;
 sel	= 2'b00;
 reset  = 1'b0;
 #55;			// Time = 125
 sel  = 2'b01;
 #30;			// Time = 135
 sel	= 2'b10;
 #30;			// Time = 225
 sel	= 2'b11;
 #30;			// Time = 275
 sel	= 2'b00;
end
endmodule
