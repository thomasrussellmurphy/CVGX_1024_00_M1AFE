// Module to connect the parts of the AFE configuration system
module afe_configure
       (
         input clk, reset_n,
         input miso,
         output device_reset,
         output pdn,
         output cs_n,
         output mosi,
         output device_sync,
         output configure_done
       );
//
assign pdn = 1'b0;

wire reset_done;
wire start_transaction_done;
wire start_transaction;
wire command_transactions_done;

wire [ 23: 0 ] rom_command;
wire [ 19: 0 ] afe_command;
wire [ 7: 0 ] rom_address;

afe_reset_timer reset_timer
                (
                  .clk( clk ),
                  .reset_n( reset_n ),
                  .device_reset( device_reset ),
                  .done( reset_done )
                );

afe_sync sync
         (
           .clk( clk ),
           .reset_n( reset_n ),
           .enable( command_transactions_done ),
           .sync( device_sync )
         );

// State machine to operate commands

afe_command_rom command_rom
                (
                  .clk( clk ),
                  .reset_n( reset_n ),
                  .address( rom_address ),
                  .command( rom_command )
                );

afe_serial_out serial_out
               (
                 .clk( clk ),
                 .reset_n( reset_n ),
                 .enable( reset_done ),
                 .start_transaction( start_transaction ),
                 .parallel_input( afe_command ),
                 .cs_n( cs_n ),
                 .mosi( mosi ),
                 .transaction_done( transaction_done )
               );

endmodule
