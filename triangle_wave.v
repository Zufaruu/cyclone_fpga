module triangle_wave(
input clk,
output [13:0] DAC,
output dac_clk

);
 reg [13:0] a;
 
always @(posedge clk) 
	begin
		a = a + 1;
	end

assign DAC = a;
assign dac_clk = clk;
 
 endmodule



