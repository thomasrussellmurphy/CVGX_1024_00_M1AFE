// ROM initializer to provide instructions/data to the configuration system
module afe_command_rom
       (
         input clk, reset_n,
         input [ 7: 0 ] address,
         output [ 3: 0 ] controller_command,
         output [ 19: 0 ] afe_shift_data
       );

// Memory variable
reg [ 23: 0 ] rom[ 255: 0 ];

reg [ 23: 0 ] command_reg;
assign controller_command = command_reg[ 23: 20 ];
assign afe_shift_data = command_reg[ 19: 0 ];

// ROM initialization
initial
begin
  // Read hex memory from file
  // Relative path from this Verilog file
  $readmemh( "../rom_data/afe_configuration_rom_data.txt", rom );
end

// ROM controller
always @( posedge clk ) begin
  command_reg <= rom[ address ];
end

endmodule
