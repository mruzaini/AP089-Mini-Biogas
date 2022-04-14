	component nios_system is
		port (
			acid_export    : out std_logic;                           -- export
			adc_sclk       : out std_logic;                           -- sclk
			adc_cs_n       : out std_logic;                           -- cs_n
			adc_dout       : in  std_logic                    := 'X'; -- dout
			adc_din        : out std_logic;                           -- din
			base_export    : out std_logic;                           -- export
			clk_clk        : in  std_logic                    := 'X'; -- clk
			esp_export     : out std_logic_vector(7 downto 0);        -- export
			esptype_export : out std_logic_vector(1 downto 0);        -- export
			heater_export  : out std_logic;                           -- export
			leds_export    : out std_logic_vector(7 downto 0);        -- export
			reset_reset    : in  std_logic                    := 'X'  -- reset
		);
	end component nios_system;

	u0 : component nios_system
		port map (
			acid_export    => CONNECTED_TO_acid_export,    --    acid.export
			adc_sclk       => CONNECTED_TO_adc_sclk,       --     adc.sclk
			adc_cs_n       => CONNECTED_TO_adc_cs_n,       --        .cs_n
			adc_dout       => CONNECTED_TO_adc_dout,       --        .dout
			adc_din        => CONNECTED_TO_adc_din,        --        .din
			base_export    => CONNECTED_TO_base_export,    --    base.export
			clk_clk        => CONNECTED_TO_clk_clk,        --     clk.clk
			esp_export     => CONNECTED_TO_esp_export,     --     esp.export
			esptype_export => CONNECTED_TO_esptype_export, -- esptype.export
			heater_export  => CONNECTED_TO_heater_export,  --  heater.export
			leds_export    => CONNECTED_TO_leds_export,    --    leds.export
			reset_reset    => CONNECTED_TO_reset_reset     --   reset.reset
		);

