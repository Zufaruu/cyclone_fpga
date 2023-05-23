module adc_dac_top_8bit(
input clk,
output [7:0] DAC,
output dac_clk

);

reg [7:0] address;
 
always @(posedge clk) 
	begin
		address = address + 1;
	end

sine sine1 ( 
		.address(address), 	
		.clock(clk),	
		.q(DAC)	
	);

assign dac_clk = clk;
 
 endmodule



