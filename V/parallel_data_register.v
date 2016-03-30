// Simple register to pass data and frame back to the DAC
module parallel_data_register
       (
         input clk, reset_n,
         input [ 29: 0 ] parallel_in,
         output [ 29: 0 ] parallel_out
       );

reg [ 29: 0 ] parallel_storage;

assign parallel_out = parallel_storage;

always @( posedge clk or negedge reset_n ) begin
  if ( ~reset_n )
  begin
    parallel_storage <= 30'b0;
  end else
  begin
    parallel_storage <= parallel_in;
  end
end

endmodule
