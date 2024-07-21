`timescale 1 ns/1 ns

module EX_12 (clk, reset, a, b, sel, g);
input 		clk, reset;
input	[3:0]	a,b;
input	[1:0]	sel;
reg [3:0] tmp;
output	[3:0]	g;
reg	[3:0]	g;

always @ (posedge clk or negedge reset)
begin
	if (!reset)
	  g <= #1 4'b0000;
	else
	  g <= #1 tmp ;

end
always @(a,b,tmp)
begin
	  case (sel)
	    2'b00 :   tmp <= #1 a+b;
	    2'b01 :   tmp <= #1 a-b;
	    2'b10 :   tmp <= #1 a&b;
	    default: tmp <= #1 a|b;
	  endcase
end

endmodule

