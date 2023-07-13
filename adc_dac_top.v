
module adc_dac_top(
	input clk,
	input [13:0] ADC_A,
	input   reset,
	output [13:0] DAC_A,
	output mode,
	output dac_clk_A,
	output adc_clk_A,
	output dac_wrt_A,
	output adc_en_A
);

	reg [13:0] address;
	 
	always @(posedge clk or posedge reset) 
		begin
			address = ADC_A;
		end
	
	assign DAC_A = address;
	assign mode = 1;
	assign dac_clk_A = clk;
	assign adc_clk_A = clk;
	assign dac_wrt_A = clk;
	assign adc_en_A = 0;

	endmodule



