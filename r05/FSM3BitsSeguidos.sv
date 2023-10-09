// Write your modules here!
parameter tamanho = 2;
module FSM_3bits1(
  input clk, reset, in_bit,
  output out_bit);
  
  enum logic [tamanho-1:0] {A, B, C, D} state;
  
  always_ff @ (posedge clk)
    if (reset) state <= A;
    else
      unique case (state)
        A:
          if (in_bit == 0)
            state <= A;
          else
            state <= B;
        B:
          if (in_bit == 0)
            state <= A;
          else
            state <= C;
        C:
          if (in_bit == 0)
            state <= A;
          else
            state <= D;
        D:
          if (in_bit == 0)
            state <= A;
          else
            state <= D;
      endcase
  
  always_comb out_bit <= (state == D); // muda a saída para um gerador de paridade impar
  
endmodule