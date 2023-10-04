// Write your modules here!
parameter NBITS_COUNT = 4;
module ContadorEmAnel(
  input logic clk, reset,
  output logic [NBITS_COUNT-1:0] Count
);
  always_ff @(posedge reset or posedge clk) begin
    if (reset)
      Count <= 1;
    else
      if (Count [NBITS_COUNT-1]) Count <= 1;
      else Count <= Count << 1;
  end
endmodule