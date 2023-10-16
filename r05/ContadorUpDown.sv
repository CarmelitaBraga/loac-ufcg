// Write your modules here!
parameter NBITS_COUNT = 4;
module ContadorUpDown(
  input logic clk, reset, count_down,
  output logic [NBITS_COUNT-1:0] Count
);
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      Count <= 0;
    else begin
      if (count_down)
        Count <= Count - 1;
      else
        Count <= Count + 1;
    end
  end
endmodule