// Write your modules here!
module FlipFlopReset(
  input logic clock, D, reset,
  output logic saida_Q
);
  always_ff @ (posedge reset or posedge clock) begin
    if (reset)
      saida_Q <= 0;
    else
      saida_Q <= D;
  end
  
endmodule