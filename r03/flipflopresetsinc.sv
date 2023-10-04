// Write your modules here!
module FlipFlopResetSinc(
  input logic D, clk, reset,
  output logic saida_Q
);
  always_ff @ (posedge clk) begin
    if(reset)
      saida_Q <= 0;
    else
      saida_Q <= D;
  end
endmodule