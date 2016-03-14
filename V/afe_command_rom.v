// Handwritten ROM to hold the commands to send to the AFE
// Format:
//   [ 23: 20 ] command to state machine
//      0000: stop, no further valid commands
//      0001: valid command to send
//      others: reserved
//   [ 19: 0 ] 20-bit command to be sent to the AFE over SPI
module afe_command_rom
       (
         input clk, reset_n,
         input [ 7: 0 ] address,
         output [ 23: 0 ] command
       );

reg [ 7: 0 ] address_reg;

// Combinatorial register, won't cause an additional cycle of delay
reg [ 23: 0 ] command_reg;
assign command = command_reg;

// ROM controller
always @( posedge clk or negedge reset_n ) begin
  if ( ~reset_n )
  begin
    address_reg <= 5'b0;
  end
  else
  begin
    address_reg <= address;
  end
end

// ROM data and declaration
always @( * ) begin
  case ( address_reg )
    // AFE has come out of reset

    // Turn on LVDS mode for Tx and Rx, SDOUT as output
    8'h00:
      command_reg = 24'h1_20A_0E;
    // Turn on duty cycle correction for ADC channel A
    8'h01:
      command_reg = 24'h1_0DB_01;
    // Turn on duty cycle correction for ADC channel B
    8'h02:
      command_reg = 24'h1_0F2_08;
    // Set Tx interface to two-wire
    8'h03:
      command_reg = 24'h1_30B_80;
    // Set MASTER_OVERRIDE_TX on
    8'h04:
      command_reg = 24'h1_30C_04;
    // Set MASTER_OVERRIDE_RX and Rx interface to two-wire
    8'h05:
      command_reg = 24'h1_33A_82;
    // Done
    8'h06:
      command_reg = 24'h0_000_00;
    default:
      command_reg = 24'h0_000_00;
  endcase
end

endmodule
