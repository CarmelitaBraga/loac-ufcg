// Write your modules here!
parameter BIT_WIDTH = 1;
module VerificadorErroParidade(
  input logic [BIT_WIDTH-1:0] b0, b1, b2, b3, b4, b5, b6, b7, paridade,
  output logic [BIT_WIDTH-1:0] erro
);
  always_comb begin
    erro <= (paridade ^ b0 ^ b1 ^ b2 ^ b3 ^ b4 ^ b5 ^ b6 ^ b7);
  end
 
endmodule