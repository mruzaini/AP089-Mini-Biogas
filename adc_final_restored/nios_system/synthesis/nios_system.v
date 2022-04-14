// nios_system.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module nios_system (
		output wire       acid_export,    //    acid.export
		output wire       adc_sclk,       //     adc.sclk
		output wire       adc_cs_n,       //        .cs_n
		input  wire       adc_dout,       //        .dout
		output wire       adc_din,        //        .din
		output wire       base_export,    //    base.export
		input  wire       clk_clk,        //     clk.clk
		output wire [7:0] esp_export,     //     esp.export
		output wire [1:0] esptype_export, // esptype.export
		output wire       heater_export,  //  heater.export
		output wire [7:0] leds_export,    //    leds.export
		input  wire       reset_reset     //   reset.reset
	);

	wire         clk_0_sys_clk_clk;                                   // clk_0:sys_clk_clk -> [ADC:clock, LEDs:clk, acid:clk, base:clk, cpu:clk, esp:clk, esptype:clk, heater:clk, irq_mapper:clk, mm_interconnect_0:clk_0_sys_clk_clk, onchip_memory2_0:clk, rst_controller:clk]
	wire  [31:0] cpu_data_master_readdata;                            // mm_interconnect_0:cpu_data_master_readdata -> cpu:d_readdata
	wire         cpu_data_master_waitrequest;                         // mm_interconnect_0:cpu_data_master_waitrequest -> cpu:d_waitrequest
	wire         cpu_data_master_debugaccess;                         // cpu:jtag_debug_module_debugaccess_to_roms -> mm_interconnect_0:cpu_data_master_debugaccess
	wire  [14:0] cpu_data_master_address;                             // cpu:d_address -> mm_interconnect_0:cpu_data_master_address
	wire   [3:0] cpu_data_master_byteenable;                          // cpu:d_byteenable -> mm_interconnect_0:cpu_data_master_byteenable
	wire         cpu_data_master_read;                                // cpu:d_read -> mm_interconnect_0:cpu_data_master_read
	wire         cpu_data_master_write;                               // cpu:d_write -> mm_interconnect_0:cpu_data_master_write
	wire  [31:0] cpu_data_master_writedata;                           // cpu:d_writedata -> mm_interconnect_0:cpu_data_master_writedata
	wire  [31:0] cpu_instruction_master_readdata;                     // mm_interconnect_0:cpu_instruction_master_readdata -> cpu:i_readdata
	wire         cpu_instruction_master_waitrequest;                  // mm_interconnect_0:cpu_instruction_master_waitrequest -> cpu:i_waitrequest
	wire  [14:0] cpu_instruction_master_address;                      // cpu:i_address -> mm_interconnect_0:cpu_instruction_master_address
	wire         cpu_instruction_master_read;                         // cpu:i_read -> mm_interconnect_0:cpu_instruction_master_read
	wire  [31:0] mm_interconnect_0_adc_adc_slave_readdata;            // ADC:readdata -> mm_interconnect_0:ADC_adc_slave_readdata
	wire         mm_interconnect_0_adc_adc_slave_waitrequest;         // ADC:waitrequest -> mm_interconnect_0:ADC_adc_slave_waitrequest
	wire   [2:0] mm_interconnect_0_adc_adc_slave_address;             // mm_interconnect_0:ADC_adc_slave_address -> ADC:address
	wire         mm_interconnect_0_adc_adc_slave_read;                // mm_interconnect_0:ADC_adc_slave_read -> ADC:read
	wire         mm_interconnect_0_adc_adc_slave_write;               // mm_interconnect_0:ADC_adc_slave_write -> ADC:write
	wire  [31:0] mm_interconnect_0_adc_adc_slave_writedata;           // mm_interconnect_0:ADC_adc_slave_writedata -> ADC:writedata
	wire  [31:0] mm_interconnect_0_cpu_jtag_debug_module_readdata;    // cpu:jtag_debug_module_readdata -> mm_interconnect_0:cpu_jtag_debug_module_readdata
	wire         mm_interconnect_0_cpu_jtag_debug_module_waitrequest; // cpu:jtag_debug_module_waitrequest -> mm_interconnect_0:cpu_jtag_debug_module_waitrequest
	wire         mm_interconnect_0_cpu_jtag_debug_module_debugaccess; // mm_interconnect_0:cpu_jtag_debug_module_debugaccess -> cpu:jtag_debug_module_debugaccess
	wire   [8:0] mm_interconnect_0_cpu_jtag_debug_module_address;     // mm_interconnect_0:cpu_jtag_debug_module_address -> cpu:jtag_debug_module_address
	wire         mm_interconnect_0_cpu_jtag_debug_module_read;        // mm_interconnect_0:cpu_jtag_debug_module_read -> cpu:jtag_debug_module_read
	wire   [3:0] mm_interconnect_0_cpu_jtag_debug_module_byteenable;  // mm_interconnect_0:cpu_jtag_debug_module_byteenable -> cpu:jtag_debug_module_byteenable
	wire         mm_interconnect_0_cpu_jtag_debug_module_write;       // mm_interconnect_0:cpu_jtag_debug_module_write -> cpu:jtag_debug_module_write
	wire  [31:0] mm_interconnect_0_cpu_jtag_debug_module_writedata;   // mm_interconnect_0:cpu_jtag_debug_module_writedata -> cpu:jtag_debug_module_writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_chipselect;    // mm_interconnect_0:onchip_memory2_0_s1_chipselect -> onchip_memory2_0:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_readdata;      // onchip_memory2_0:readdata -> mm_interconnect_0:onchip_memory2_0_s1_readdata
	wire  [10:0] mm_interconnect_0_onchip_memory2_0_s1_address;       // mm_interconnect_0:onchip_memory2_0_s1_address -> onchip_memory2_0:address
	wire   [3:0] mm_interconnect_0_onchip_memory2_0_s1_byteenable;    // mm_interconnect_0:onchip_memory2_0_s1_byteenable -> onchip_memory2_0:byteenable
	wire         mm_interconnect_0_onchip_memory2_0_s1_write;         // mm_interconnect_0:onchip_memory2_0_s1_write -> onchip_memory2_0:write
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_writedata;     // mm_interconnect_0:onchip_memory2_0_s1_writedata -> onchip_memory2_0:writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_clken;         // mm_interconnect_0:onchip_memory2_0_s1_clken -> onchip_memory2_0:clken
	wire         mm_interconnect_0_leds_s1_chipselect;                // mm_interconnect_0:LEDs_s1_chipselect -> LEDs:chipselect
	wire  [31:0] mm_interconnect_0_leds_s1_readdata;                  // LEDs:readdata -> mm_interconnect_0:LEDs_s1_readdata
	wire   [1:0] mm_interconnect_0_leds_s1_address;                   // mm_interconnect_0:LEDs_s1_address -> LEDs:address
	wire         mm_interconnect_0_leds_s1_write;                     // mm_interconnect_0:LEDs_s1_write -> LEDs:write_n
	wire  [31:0] mm_interconnect_0_leds_s1_writedata;                 // mm_interconnect_0:LEDs_s1_writedata -> LEDs:writedata
	wire         mm_interconnect_0_esp_s1_chipselect;                 // mm_interconnect_0:esp_s1_chipselect -> esp:chipselect
	wire  [31:0] mm_interconnect_0_esp_s1_readdata;                   // esp:readdata -> mm_interconnect_0:esp_s1_readdata
	wire   [1:0] mm_interconnect_0_esp_s1_address;                    // mm_interconnect_0:esp_s1_address -> esp:address
	wire         mm_interconnect_0_esp_s1_write;                      // mm_interconnect_0:esp_s1_write -> esp:write_n
	wire  [31:0] mm_interconnect_0_esp_s1_writedata;                  // mm_interconnect_0:esp_s1_writedata -> esp:writedata
	wire         mm_interconnect_0_heater_s1_chipselect;              // mm_interconnect_0:heater_s1_chipselect -> heater:chipselect
	wire  [31:0] mm_interconnect_0_heater_s1_readdata;                // heater:readdata -> mm_interconnect_0:heater_s1_readdata
	wire   [1:0] mm_interconnect_0_heater_s1_address;                 // mm_interconnect_0:heater_s1_address -> heater:address
	wire         mm_interconnect_0_heater_s1_write;                   // mm_interconnect_0:heater_s1_write -> heater:write_n
	wire  [31:0] mm_interconnect_0_heater_s1_writedata;               // mm_interconnect_0:heater_s1_writedata -> heater:writedata
	wire         mm_interconnect_0_acid_s1_chipselect;                // mm_interconnect_0:acid_s1_chipselect -> acid:chipselect
	wire  [31:0] mm_interconnect_0_acid_s1_readdata;                  // acid:readdata -> mm_interconnect_0:acid_s1_readdata
	wire   [1:0] mm_interconnect_0_acid_s1_address;                   // mm_interconnect_0:acid_s1_address -> acid:address
	wire         mm_interconnect_0_acid_s1_write;                     // mm_interconnect_0:acid_s1_write -> acid:write_n
	wire  [31:0] mm_interconnect_0_acid_s1_writedata;                 // mm_interconnect_0:acid_s1_writedata -> acid:writedata
	wire         mm_interconnect_0_base_s1_chipselect;                // mm_interconnect_0:base_s1_chipselect -> base:chipselect
	wire  [31:0] mm_interconnect_0_base_s1_readdata;                  // base:readdata -> mm_interconnect_0:base_s1_readdata
	wire   [1:0] mm_interconnect_0_base_s1_address;                   // mm_interconnect_0:base_s1_address -> base:address
	wire         mm_interconnect_0_base_s1_write;                     // mm_interconnect_0:base_s1_write -> base:write_n
	wire  [31:0] mm_interconnect_0_base_s1_writedata;                 // mm_interconnect_0:base_s1_writedata -> base:writedata
	wire         mm_interconnect_0_esptype_s1_chipselect;             // mm_interconnect_0:esptype_s1_chipselect -> esptype:chipselect
	wire  [31:0] mm_interconnect_0_esptype_s1_readdata;               // esptype:readdata -> mm_interconnect_0:esptype_s1_readdata
	wire   [1:0] mm_interconnect_0_esptype_s1_address;                // mm_interconnect_0:esptype_s1_address -> esptype:address
	wire         mm_interconnect_0_esptype_s1_write;                  // mm_interconnect_0:esptype_s1_write -> esptype:write_n
	wire  [31:0] mm_interconnect_0_esptype_s1_writedata;              // mm_interconnect_0:esptype_s1_writedata -> esptype:writedata
	wire  [31:0] cpu_d_irq_irq;                                       // irq_mapper:sender_irq -> cpu:d_irq
	wire         rst_controller_reset_out_reset;                      // rst_controller:reset_out -> [ADC:reset, LEDs:reset_n, acid:reset_n, base:reset_n, cpu:reset_n, esp:reset_n, esptype:reset_n, heater:reset_n, irq_mapper:reset, mm_interconnect_0:cpu_reset_n_reset_bridge_in_reset_reset, onchip_memory2_0:reset, rst_translator:in_reset]
	wire         rst_controller_reset_out_reset_req;                  // rst_controller:reset_req -> [cpu:reset_req, onchip_memory2_0:reset_req, rst_translator:reset_req_in]
	wire         clk_0_reset_source_reset;                            // clk_0:reset_source_reset -> rst_controller:reset_in0

	nios_system_ADC #(
		.board          ("DE10-Nano"),
		.board_rev      ("Autodetect"),
		.tsclk          (8),
		.numch          (2),
		.max10pllmultby (1),
		.max10plldivby  (1)
	) adc (
		.clock       (clk_0_sys_clk_clk),                           //                clk.clk
		.reset       (rst_controller_reset_out_reset),              //              reset.reset
		.write       (mm_interconnect_0_adc_adc_slave_write),       //          adc_slave.write
		.readdata    (mm_interconnect_0_adc_adc_slave_readdata),    //                   .readdata
		.writedata   (mm_interconnect_0_adc_adc_slave_writedata),   //                   .writedata
		.address     (mm_interconnect_0_adc_adc_slave_address),     //                   .address
		.waitrequest (mm_interconnect_0_adc_adc_slave_waitrequest), //                   .waitrequest
		.read        (mm_interconnect_0_adc_adc_slave_read),        //                   .read
		.adc_sclk    (adc_sclk),                                    // external_interface.export
		.adc_cs_n    (adc_cs_n),                                    //                   .export
		.adc_dout    (adc_dout),                                    //                   .export
		.adc_din     (adc_din)                                      //                   .export
	);

	nios_system_LEDs leds (
		.clk        (clk_0_sys_clk_clk),                    //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_leds_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_leds_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_leds_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_leds_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_leds_s1_readdata),   //                    .readdata
		.out_port   (leds_export)                           // external_connection.export
	);

	nios_system_acid acid (
		.clk        (clk_0_sys_clk_clk),                    //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_acid_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_acid_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_acid_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_acid_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_acid_s1_readdata),   //                    .readdata
		.out_port   (acid_export)                           // external_connection.export
	);

	nios_system_acid base (
		.clk        (clk_0_sys_clk_clk),                    //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),      //               reset.reset_n
		.address    (mm_interconnect_0_base_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_base_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_base_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_base_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_base_s1_readdata),   //                    .readdata
		.out_port   (base_export)                           // external_connection.export
	);

	nios_system_clk_0 clk_0 (
		.ref_clk_clk        (clk_clk),                  //      ref_clk.clk
		.ref_reset_reset    (reset_reset),              //    ref_reset.reset
		.sys_clk_clk        (clk_0_sys_clk_clk),        //      sys_clk.clk
		.reset_source_reset (clk_0_reset_source_reset)  // reset_source.reset
	);

	nios_system_cpu cpu (
		.clk                                   (clk_0_sys_clk_clk),                                   //                       clk.clk
		.reset_n                               (~rst_controller_reset_out_reset),                     //                   reset_n.reset_n
		.reset_req                             (rst_controller_reset_out_reset_req),                  //                          .reset_req
		.d_address                             (cpu_data_master_address),                             //               data_master.address
		.d_byteenable                          (cpu_data_master_byteenable),                          //                          .byteenable
		.d_read                                (cpu_data_master_read),                                //                          .read
		.d_readdata                            (cpu_data_master_readdata),                            //                          .readdata
		.d_waitrequest                         (cpu_data_master_waitrequest),                         //                          .waitrequest
		.d_write                               (cpu_data_master_write),                               //                          .write
		.d_writedata                           (cpu_data_master_writedata),                           //                          .writedata
		.jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),                         //                          .debugaccess
		.i_address                             (cpu_instruction_master_address),                      //        instruction_master.address
		.i_read                                (cpu_instruction_master_read),                         //                          .read
		.i_readdata                            (cpu_instruction_master_readdata),                     //                          .readdata
		.i_waitrequest                         (cpu_instruction_master_waitrequest),                  //                          .waitrequest
		.d_irq                                 (cpu_d_irq_irq),                                       //                     d_irq.irq
		.jtag_debug_module_resetrequest        (),                                                    //   jtag_debug_module_reset.reset
		.jtag_debug_module_address             (mm_interconnect_0_cpu_jtag_debug_module_address),     //         jtag_debug_module.address
		.jtag_debug_module_byteenable          (mm_interconnect_0_cpu_jtag_debug_module_byteenable),  //                          .byteenable
		.jtag_debug_module_debugaccess         (mm_interconnect_0_cpu_jtag_debug_module_debugaccess), //                          .debugaccess
		.jtag_debug_module_read                (mm_interconnect_0_cpu_jtag_debug_module_read),        //                          .read
		.jtag_debug_module_readdata            (mm_interconnect_0_cpu_jtag_debug_module_readdata),    //                          .readdata
		.jtag_debug_module_waitrequest         (mm_interconnect_0_cpu_jtag_debug_module_waitrequest), //                          .waitrequest
		.jtag_debug_module_write               (mm_interconnect_0_cpu_jtag_debug_module_write),       //                          .write
		.jtag_debug_module_writedata           (mm_interconnect_0_cpu_jtag_debug_module_writedata),   //                          .writedata
		.no_ci_readra                          ()                                                     // custom_instruction_master.readra
	);

	nios_system_LEDs esp (
		.clk        (clk_0_sys_clk_clk),                   //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),     //               reset.reset_n
		.address    (mm_interconnect_0_esp_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_esp_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_esp_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_esp_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_esp_s1_readdata),   //                    .readdata
		.out_port   (esp_export)                           // external_connection.export
	);

	nios_system_esptype esptype (
		.clk        (clk_0_sys_clk_clk),                       //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_esptype_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_esptype_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_esptype_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_esptype_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_esptype_s1_readdata),   //                    .readdata
		.out_port   (esptype_export)                           // external_connection.export
	);

	nios_system_acid heater (
		.clk        (clk_0_sys_clk_clk),                      //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),        //               reset.reset_n
		.address    (mm_interconnect_0_heater_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_heater_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_heater_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_heater_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_heater_s1_readdata),   //                    .readdata
		.out_port   (heater_export)                           // external_connection.export
	);

	nios_system_onchip_memory2_0 onchip_memory2_0 (
		.clk        (clk_0_sys_clk_clk),                                //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory2_0_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory2_0_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory2_0_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory2_0_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory2_0_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory2_0_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory2_0_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                   // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),               //       .reset_req
		.freeze     (1'b0)                                              // (terminated)
	);

	nios_system_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_sys_clk_clk                       (clk_0_sys_clk_clk),                                   //                     clk_0_sys_clk.clk
		.cpu_reset_n_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                      // cpu_reset_n_reset_bridge_in_reset.reset
		.cpu_data_master_address                 (cpu_data_master_address),                             //                   cpu_data_master.address
		.cpu_data_master_waitrequest             (cpu_data_master_waitrequest),                         //                                  .waitrequest
		.cpu_data_master_byteenable              (cpu_data_master_byteenable),                          //                                  .byteenable
		.cpu_data_master_read                    (cpu_data_master_read),                                //                                  .read
		.cpu_data_master_readdata                (cpu_data_master_readdata),                            //                                  .readdata
		.cpu_data_master_write                   (cpu_data_master_write),                               //                                  .write
		.cpu_data_master_writedata               (cpu_data_master_writedata),                           //                                  .writedata
		.cpu_data_master_debugaccess             (cpu_data_master_debugaccess),                         //                                  .debugaccess
		.cpu_instruction_master_address          (cpu_instruction_master_address),                      //            cpu_instruction_master.address
		.cpu_instruction_master_waitrequest      (cpu_instruction_master_waitrequest),                  //                                  .waitrequest
		.cpu_instruction_master_read             (cpu_instruction_master_read),                         //                                  .read
		.cpu_instruction_master_readdata         (cpu_instruction_master_readdata),                     //                                  .readdata
		.acid_s1_address                         (mm_interconnect_0_acid_s1_address),                   //                           acid_s1.address
		.acid_s1_write                           (mm_interconnect_0_acid_s1_write),                     //                                  .write
		.acid_s1_readdata                        (mm_interconnect_0_acid_s1_readdata),                  //                                  .readdata
		.acid_s1_writedata                       (mm_interconnect_0_acid_s1_writedata),                 //                                  .writedata
		.acid_s1_chipselect                      (mm_interconnect_0_acid_s1_chipselect),                //                                  .chipselect
		.ADC_adc_slave_address                   (mm_interconnect_0_adc_adc_slave_address),             //                     ADC_adc_slave.address
		.ADC_adc_slave_write                     (mm_interconnect_0_adc_adc_slave_write),               //                                  .write
		.ADC_adc_slave_read                      (mm_interconnect_0_adc_adc_slave_read),                //                                  .read
		.ADC_adc_slave_readdata                  (mm_interconnect_0_adc_adc_slave_readdata),            //                                  .readdata
		.ADC_adc_slave_writedata                 (mm_interconnect_0_adc_adc_slave_writedata),           //                                  .writedata
		.ADC_adc_slave_waitrequest               (mm_interconnect_0_adc_adc_slave_waitrequest),         //                                  .waitrequest
		.base_s1_address                         (mm_interconnect_0_base_s1_address),                   //                           base_s1.address
		.base_s1_write                           (mm_interconnect_0_base_s1_write),                     //                                  .write
		.base_s1_readdata                        (mm_interconnect_0_base_s1_readdata),                  //                                  .readdata
		.base_s1_writedata                       (mm_interconnect_0_base_s1_writedata),                 //                                  .writedata
		.base_s1_chipselect                      (mm_interconnect_0_base_s1_chipselect),                //                                  .chipselect
		.cpu_jtag_debug_module_address           (mm_interconnect_0_cpu_jtag_debug_module_address),     //             cpu_jtag_debug_module.address
		.cpu_jtag_debug_module_write             (mm_interconnect_0_cpu_jtag_debug_module_write),       //                                  .write
		.cpu_jtag_debug_module_read              (mm_interconnect_0_cpu_jtag_debug_module_read),        //                                  .read
		.cpu_jtag_debug_module_readdata          (mm_interconnect_0_cpu_jtag_debug_module_readdata),    //                                  .readdata
		.cpu_jtag_debug_module_writedata         (mm_interconnect_0_cpu_jtag_debug_module_writedata),   //                                  .writedata
		.cpu_jtag_debug_module_byteenable        (mm_interconnect_0_cpu_jtag_debug_module_byteenable),  //                                  .byteenable
		.cpu_jtag_debug_module_waitrequest       (mm_interconnect_0_cpu_jtag_debug_module_waitrequest), //                                  .waitrequest
		.cpu_jtag_debug_module_debugaccess       (mm_interconnect_0_cpu_jtag_debug_module_debugaccess), //                                  .debugaccess
		.esp_s1_address                          (mm_interconnect_0_esp_s1_address),                    //                            esp_s1.address
		.esp_s1_write                            (mm_interconnect_0_esp_s1_write),                      //                                  .write
		.esp_s1_readdata                         (mm_interconnect_0_esp_s1_readdata),                   //                                  .readdata
		.esp_s1_writedata                        (mm_interconnect_0_esp_s1_writedata),                  //                                  .writedata
		.esp_s1_chipselect                       (mm_interconnect_0_esp_s1_chipselect),                 //                                  .chipselect
		.esptype_s1_address                      (mm_interconnect_0_esptype_s1_address),                //                        esptype_s1.address
		.esptype_s1_write                        (mm_interconnect_0_esptype_s1_write),                  //                                  .write
		.esptype_s1_readdata                     (mm_interconnect_0_esptype_s1_readdata),               //                                  .readdata
		.esptype_s1_writedata                    (mm_interconnect_0_esptype_s1_writedata),              //                                  .writedata
		.esptype_s1_chipselect                   (mm_interconnect_0_esptype_s1_chipselect),             //                                  .chipselect
		.heater_s1_address                       (mm_interconnect_0_heater_s1_address),                 //                         heater_s1.address
		.heater_s1_write                         (mm_interconnect_0_heater_s1_write),                   //                                  .write
		.heater_s1_readdata                      (mm_interconnect_0_heater_s1_readdata),                //                                  .readdata
		.heater_s1_writedata                     (mm_interconnect_0_heater_s1_writedata),               //                                  .writedata
		.heater_s1_chipselect                    (mm_interconnect_0_heater_s1_chipselect),              //                                  .chipselect
		.LEDs_s1_address                         (mm_interconnect_0_leds_s1_address),                   //                           LEDs_s1.address
		.LEDs_s1_write                           (mm_interconnect_0_leds_s1_write),                     //                                  .write
		.LEDs_s1_readdata                        (mm_interconnect_0_leds_s1_readdata),                  //                                  .readdata
		.LEDs_s1_writedata                       (mm_interconnect_0_leds_s1_writedata),                 //                                  .writedata
		.LEDs_s1_chipselect                      (mm_interconnect_0_leds_s1_chipselect),                //                                  .chipselect
		.onchip_memory2_0_s1_address             (mm_interconnect_0_onchip_memory2_0_s1_address),       //               onchip_memory2_0_s1.address
		.onchip_memory2_0_s1_write               (mm_interconnect_0_onchip_memory2_0_s1_write),         //                                  .write
		.onchip_memory2_0_s1_readdata            (mm_interconnect_0_onchip_memory2_0_s1_readdata),      //                                  .readdata
		.onchip_memory2_0_s1_writedata           (mm_interconnect_0_onchip_memory2_0_s1_writedata),     //                                  .writedata
		.onchip_memory2_0_s1_byteenable          (mm_interconnect_0_onchip_memory2_0_s1_byteenable),    //                                  .byteenable
		.onchip_memory2_0_s1_chipselect          (mm_interconnect_0_onchip_memory2_0_s1_chipselect),    //                                  .chipselect
		.onchip_memory2_0_s1_clken               (mm_interconnect_0_onchip_memory2_0_s1_clken)          //                                  .clken
	);

	nios_system_irq_mapper irq_mapper (
		.clk        (clk_0_sys_clk_clk),              //       clk.clk
		.reset      (rst_controller_reset_out_reset), // clk_reset.reset
		.sender_irq (cpu_d_irq_irq)                   //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (clk_0_reset_source_reset),           // reset_in0.reset
		.clk            (clk_0_sys_clk_clk),                  //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule