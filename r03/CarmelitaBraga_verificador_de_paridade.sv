// Write your modules here!
parameter BIT_WIDTH = 1;
module BitDeParidade(
  input logic [BIT_WIDTH-1:0] b0, b1, b2, b3, b4, b5, b6, b7,
  output logic [BIT_WIDTH-1:0] paridade
);
  always_comb paridade <= (b0 ^ b1 ^ b2 ^ b3 ^ b4 ^ b5 ^ b6 ^ b7);
endmodule