// Write your modules here!
module FlipFlopD(
  input logic clk, D,
  output logic saida_clk, saida_Q
);
  always_ff @ (posedge clk) begin
    saida_Q <= D;
  end
  
  always_comb saida_clk <= clk;
  
endmodule