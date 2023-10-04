// Write your modules here!
parameter NBITS_COUNT = 2;
module Contador_Oscilante(
  input logic clk, reset, load, count_up, counter_on,
  input logic [NBITS_COUNT-1:0] Data_in,
  output logic [NBITS_COUNT-1:0] Count
);
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      Count <= 0;
    else if (load)
      Count <= Data_in;
    else if (counter_on) begin
      if (count_up)
        Count <= Count + 1;
      else
        Count <= Count - 1;
    end
  end
endmodule