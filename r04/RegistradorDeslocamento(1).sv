// Write your modules here!
parameter NBITS_DATA = 4;
parameter NBITS_SHIFT = 1;
module Reg_Deslocamento(
  input logic clk, reset,
  input logic [NBITS_SHIFT-1:0] shift,
  input logic signed [NBITS_DATA-1:0] data_in,
  output logic signed [NBITS_DATA-1:0] data_out
);
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      data_out <= 0;
    else
      data_out <= data_in >>> shift;
  end
endmodule