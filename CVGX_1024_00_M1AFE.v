
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module CVGX_1024_00_M1AFE(

         //////////// CLOCK //////////
         CLOCK_125_p,
         CLOCK_50_B5B,
         CLOCK_50_B6A,
         CLOCK_50_B7A,
         CLOCK_50_B8A,

         //////////// LED //////////
         LEDG,
         LEDR,

         //////////// KEY //////////
         CPU_RESET_n,
         KEY,

         //////////// SW //////////
         SW,

         //////////// SEG7 //////////
         HEX0,
         HEX1,

         //////////// HDMI-TX //////////
         HDMI_TX_CLK,
         HDMI_TX_D,
         HDMI_TX_DE,
         HDMI_TX_HS,
         HDMI_TX_INT,
         HDMI_TX_VS,

         //////////// ADC SPI //////////
         ADC_CONVST,
         ADC_SCK,
         ADC_SDI,
         ADC_SDO,

         //////////// Audio //////////
         AUD_ADCDAT,
         AUD_ADCLRCK,
         AUD_BCLK,
         AUD_DACDAT,
         AUD_DACLRCK,
         AUD_XCK,

         //////////// I2C for Audio/HDMI-TX/Si5338/HSMC //////////
         I2C_SCL,
         I2C_SDA,

         //////////// SDCARD //////////
         SD_CLK,
         SD_CMD,
         SD_DAT,

         //////////// Uart to USB //////////
         UART_RX,
         UART_TX,

         //////////// SRAM //////////
         SRAM_A,
         SRAM_CE_n,
         SRAM_D,
         SRAM_LB_n,
         SRAM_OE_n,
         SRAM_UB_n,
         SRAM_WE_n,

         //////////// GPIO, GPIO connect to GPIO Default //////////
         GPIO,



         //////////// HSMC, HSMC connect to HSMC 1024-00 initial draft //////////
         HSMC_CLKOUT0,
         HSMC_CLKIN0,
         UNUSED,
         DACA_DATA1_P,
         DACA_DATA0_P,
         DAC_FCLKIN_P,
         DACB_DATA0_P,
         ADCB_DATA1_P,
         DACB_DATA1_P,
         ADCB_DATA0_P,
         ADC_FCLKOUT_P,
         ADCA_DATA0_P,
         SYNCIN_P,
         ADCA_DATA1_P,
         ADC_DCLKOUT_P,
         DAC_DCLKIN_P,
         AFE_PDN,
         AFE_SEN,
         AFE_SDATA,
         AFE_SCLK,
         AFE_SDOUT,
         AFE_RESET,
         ADRF_LE,
         ADRF_CLK,
         ADRF_DATA,
         ADRF_SDO,
         TCXO_EN,
         CDCE_PD,
         CDCE_SYNC,
         CDCE_MISO,
         CDCE_MOSI,
         CDCE_SCLK,
         CDCE_LE,
         CDCE_PLL_LOCK,
         HSMC_CLKOUT2_P,
         FPGA_REF_CLK_P,
         FPGA_REF_CLK_N,
         HSMC_CLKOUT2_N
       );

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input CLOCK_125_p;
input CLOCK_50_B5B;
input CLOCK_50_B6A;
input CLOCK_50_B7A;
input CLOCK_50_B8A;

//////////// LED //////////
output [ 7: 0 ] LEDG;
output [ 9: 0 ] LEDR;

//////////// KEY //////////
input CPU_RESET_n;
input [ 3: 0 ] KEY;

//////////// SW //////////
input [ 9: 0 ] SW;

//////////// SEG7 //////////
output [ 6: 0 ] HEX0;
output [ 6: 0 ] HEX1;

//////////// HDMI-TX //////////
output HDMI_TX_CLK;
output [ 23: 0 ] HDMI_TX_D;
output HDMI_TX_DE;
output HDMI_TX_HS;
input HDMI_TX_INT;
output HDMI_TX_VS;

//////////// ADC SPI //////////
output ADC_CONVST;
output ADC_SCK;
output ADC_SDI;
input ADC_SDO;

//////////// Audio //////////
input AUD_ADCDAT;
inout AUD_ADCLRCK;
inout AUD_BCLK;
output AUD_DACDAT;
inout AUD_DACLRCK;
output AUD_XCK;

//////////// I2C for Audio/HDMI-TX/Si5338/HSMC //////////
output I2C_SCL;
inout I2C_SDA;

//////////// SDCARD //////////
output SD_CLK;
inout SD_CMD;
inout [ 3: 0 ] SD_DAT;

//////////// Uart to USB //////////
input UART_RX;
output UART_TX;

//////////// SRAM //////////
output [ 17: 0 ] SRAM_A;
output SRAM_CE_n;
inout [ 15: 0 ] SRAM_D;
output SRAM_LB_n;
output SRAM_OE_n;
output SRAM_UB_n;
output SRAM_WE_n;

//////////// GPIO, GPIO connect to GPIO Default //////////
inout [ 35: 0 ] GPIO;

//////////// HSMC, HSMC connect to HSMC 1024-00 clocks revised //////////
output HSMC_CLKOUT0;
input HSMC_CLKIN0;
inout [ 31: 0 ] UNUSED;
output DACA_DATA1_P;
output DACA_DATA0_P;
output DAC_FCLKIN_P;
output DACB_DATA0_P;
input ADCB_DATA1_P;
output DACB_DATA1_P;
input ADCB_DATA0_P;
input ADC_FCLKOUT_P;
input ADCA_DATA0_P;
output SYNCIN_P;
input ADCA_DATA1_P;
input ADC_DCLKOUT_P;
output DAC_DCLKIN_P;
output AFE_PDN;
output AFE_SEN;
output AFE_SDATA;
output AFE_SCLK;
inout AFE_SDOUT;
output AFE_RESET;
output ADRF_LE;
output ADRF_CLK;
output ADRF_DATA;
input ADRF_SDO;
output TCXO_EN;
output CDCE_PD;
output CDCE_SYNC;
input CDCE_MISO;
output CDCE_MOSI;
output CDCE_SCLK;
output CDCE_LE;
input CDCE_PLL_LOCK;
output HSMC_CLKOUT2_P;
output FPGA_REF_CLK_P; // Modified to be output!
output FPGA_REF_CLK_N; // Additional for faking differential
output HSMC_CLKOUT2_N;


//=======================================================
//  REG/WIRE declarations
//=======================================================
assign UNUSED = 32'b0;

// For master data internal PLL
wire cvdatapll_lock;
wire cvdatapll_clk125;
wire cvdatapll_reset;

// For master config internal PLL
wire cvconfigpll_lock;
wire cvconfigpll_clk16;
wire cvconfigpll_reset;

// For LVDS internal PLL
wire lvds_serial_clock;
wire lvds_enable_clock;
wire lvds_core_clock;
wire lvds_frame_clock;
wire lvdspll_lock;

// For AFE config indication
wire afe_config_done;

assign cvdatapll_reset = ~KEY[ 0 ];
assign cvconfigpll_reset = ~KEY[ 0 ];
assign LEDG[ 0 ] = cvdatapll_lock;
assign LEDG[ 1 ] = cvconfigpll_lock;
assign LEDG[ 2 ] = lvdspll_lock;

// Output just to ensure usage of 125MHz clock
assign HSMC_CLKOUT0 = cvdatapll_clk125;

// Assigning clock to reworked CDCE footprint that will go to the AFE
assign FPGA_REF_CLK_P = CLOCK_50_B7A;
assign FPGA_REF_CLK_N = ~CLOCK_50_B7A;

// Assigning configuration clock outputs, even if they aren't used
assign AFE_SCLK = cvconfigpll_clk16;
assign ADRF_CLK = cvconfigpll_clk16;
assign CDCE_SCLK = cvconfigpll_clk16;

// Indicate when AFE configuration is done
assign LEDR[ 0 ] = afe_config_done;

// ADC LVDS interfacing
wire [ 4: 0 ] adc_aggregate_lvds;
wire adc_lvds_clk;
wire [ 29: 0 ] adc_parallel_out;
reg [ 29: 0 ] adc_parallel_q;

assign adc_aggregate_lvds = {
         ADCB_DATA1_P,
         ADCB_DATA0_P,
         ADCA_DATA1_P,
         ADCA_DATA0_P,
         ADC_FCLKOUT_P
       };
assign adc_lvds_clk = ADC_DCLKOUT_P;

// DAC LVDS interfacing
wire [ 3: 0 ] dac_aggregate_lvds;
wire dac_lvds_clk;
wire [ 23: 0 ] dac_parallel_in;

assign {
    DACB_DATA1_P,
    DACB_DATA0_P,
    DACA_DATA1_P,
    DACA_DATA0_P
  } = dac_aggregate_lvds;
assign DAC_FCLKIN_P = lvds_frame_clock;
assign DAC_DCLKIN_P = dac_lvds_clk;

//=======================================================
//  Structural coding
//=======================================================
pll_50_to_125 data_pll (
                .refclk( CLOCK_50_B7A ),
                .rst( cvdatapll_reset ),
                .outclk_0( cvdatapll_clk125 ),
                .locked( cvdatapll_lock )
              );

pll_50_to_16 config_pll(
               .refclk( CLOCK_50_B7A ),
               .rst( cvconfigpll_reset ),
               .outclk_0( cvconfigpll_clk16 ),
               .locked( cvconfigpll_lock )
             );

// LVDS connections
lvds_6x_50MSps_pll ldvs_pll(
                     .refclk( adc_lvds_clk ),
                     .rst( cvconfigpll_reset ),
                     .outclk_0( lvds_serial_clock ),
                     .outclk_1( lvds_enable_clock ),
                     .outclk_2( lvds_core_clock ),
                     .outclk_3(lvds_frame_clock),
                     .locked( lvdspll_lock )
                   );

lvds_ext_5_rx lvds_ext_5_rx_inst (
                .rx_enable ( lvds_enable_clock ),
                .rx_in ( adc_aggregate_lvds ),
                .rx_inclock ( lvds_serial_clock ),
                .rx_out ( adc_parallel_out )
              );

lvds_ext_4_tx lvds_ext_4_tx_inst (
                .tx_enable ( lvds_enable_clock ),
                .tx_in ( dac_parallel_in ),
                .tx_inclock ( lvds_serial_clock ),
                .tx_out ( dac_aggregate_lvds ),
                .tx_outclock ( dac_lvds_clk )
              );

// Acts like loopback
parallel_data_register loopback_storage
                       (
                         .clk( lvds_core_clock ),
                         .reset_n( lvdspll_lock ),
                         .parallel_in( adc_parallel_out[ 29: 6 ] ),
                         .parallel_out( dac_parallel_in )
                       );

// Instantiate configuration controller
afe_configure configuration_master
              (
                .clk( cvconfigpll_clk16 ),
                .reset_n( cvconfigpll_lock ),
                .miso( AFE_SDOUT ),
                .device_reset( AFE_RESET ),
                .pdn( AFE_PDN ),
                .cs_n( AFE_SEN ),
                .mosi( AFE_SDATA ),
                .device_sync( SYNCIN_P ),
                .configure_done( afe_config_done )
              );

endmodule
