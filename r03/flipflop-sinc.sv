// Write your modules here!
module Pisca(
  input logic clk, reset,
  output logic saida_Q
);
  
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      saida_Q <= 0;
    else 
      saida_Q <= ~saida_Q;
  end

  
endmodule