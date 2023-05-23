module adc_dac_top(
input clk,
output [13:0] DAC_A,
output [13:0] DAC_B,
output mode,
output dac_clk_A,
output dac_clk_B,
output dac_wrt_A,
output dac_wrt_B

);

reg [13:0] address;
 
always @(posedge clk) 
	begin
		address = address + 16;
	end


sine sine1 ( 
		.address(address), 	
		.clock(clk),	
		.q(DAC_A)	
	); 


sine sine2 ( 
		.address(address), 	
		.clock(clk),	
		.q(DAC_B)	
	);

assign mode = 1;
assign dac_clk_A = clk;
assign dac_clk_B = clk;
assign dac_wrt_A = clk;
assign dac_wrt_B = clk;



 
 endmodule



