module adc (FPGA_CLK1_50, KEY, LED, ADC_SCK, ADC_CONVST, ADC_SDO, ADC_SDI, ESP, HEATER, ACID, BASE, ESPTYPE);

input FPGA_CLK1_50;
input [0:0] KEY;
output [7:0] LED;
input ADC_SDO;
output ADC_SCK, ADC_CONVST, ADC_SDI;
output [7:0] ESP;
output HEATER;
output ACID;
output BASE;
output [1:0] ESPTYPE;
	 
    nios_system u0 (
        .acid_export    (ACID),    //    acid.export
        .adc_sclk       (ADC_SCK),       //     adc.sclk
        .adc_cs_n       (ADC_CONVST),       //        .cs_n
        .adc_dout       (ADC_SDO),       //        .dout
        .adc_din        (ADC_SDI),        //        .din
        .base_export    (BASE),    //    base.export
        .clk_clk        (FPGA_CLK1_50),        //     clk.clk
        .esp_export     (ESP),     //     esp.export
        .esptype_export (ESPTYPE), // esptype.export
        .heater_export  (HEATER),  //  heater.export
        .leds_export    (LED),    //    leds.export
        .reset_reset    (!KEY[0])     //   reset.reset
    );

endmodule

