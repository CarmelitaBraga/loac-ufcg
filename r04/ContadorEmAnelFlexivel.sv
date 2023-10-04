// Write your modules here!
parameter NBITS_COUNT = 4;
module ContadorEmAnelFlexivel(
  input logic clk, reset, load,
  output logic [NBITS_COUNT-1:0] Count
);
  always_ff @(posedge reset or posedge clk) begin
    if (reset)
      Count <= 0;
    else if (load)
      Count <= 1;
    else begin
      unique case(Count)
        1: Count <= 2;
        2: Count <= 4;
        4: Count <= 8;
        8: Count <= 1;
      endcase
    end
  end
endmodule