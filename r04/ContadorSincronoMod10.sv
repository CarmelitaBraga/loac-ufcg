// Write your modules here!
parameter NBITS_COUNT = 4;
module ContadorSincronoMod10(
  input logic clk, reset, load, counter_on, count_up,
  input logic [NBITS_COUNT-1:0] Data_in,
  output logic [NBITS_COUNT-1:0] Count
);
  always_ff @(posedge reset or posedge clk) begin
    if (reset)
      Count <= 0;
    else if (load)
      Count <= Data_in;
    else if (counter_on) begin
      if(count_up) begin
        if (Count == 9) Count <= 0;
        else Count <= Count + 1;
      end
    else
      if (Count == 0) Count <= 9;
      else Count <= Count - 1;
  end
end
endmodule