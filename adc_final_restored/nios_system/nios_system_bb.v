
module nios_system (
	acid_export,
	adc_sclk,
	adc_cs_n,
	adc_dout,
	adc_din,
	base_export,
	clk_clk,
	esp_export,
	esptype_export,
	heater_export,
	leds_export,
	reset_reset);	

	output		acid_export;
	output		adc_sclk;
	output		adc_cs_n;
	input		adc_dout;
	output		adc_din;
	output		base_export;
	input		clk_clk;
	output	[7:0]	esp_export;
	output	[1:0]	esptype_export;
	output		heater_export;
	output	[7:0]	leds_export;
	input		reset_reset;
endmodule
