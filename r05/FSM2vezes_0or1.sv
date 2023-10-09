// Write your modules here!
parameter tamanho = 3;
module FSM_Zero_or_Um_2_vezes(
  input clk, reset, in_bit,
  output out_bit);
  
  enum logic [tamanho-1:0] {reset_state, read_1_zero, read_1_one, read_2_zero, read_2_one} state;
  
  always_ff @ (posedge clk)
    if (reset) state <= reset_state;
    else
      unique case (state)
        reset_state:
          if (in_bit == 0)
            state <= read_1_zero;
          else
            state <= read_1_one;
        read_1_zero:
          if (in_bit == 0)
            state <= read_2_zero;
          else
            state <= read_1_one;
        read_2_zero:
          if (in_bit == 0)
            state <= read_2_zero;
          else
            state <= read_1_one;
        read_1_one:
          if (in_bit == 0)
            state <= read_1_zero;
          else
            state <= read_2_one;
        read_2_one:
          if (in_bit == 0)
            state <= read_1_zero;
          else
            state <= read_2_one;
        
      endcase
  
  always_comb out_bit <= (state == read_2_zero) || (state == read_2_one); 
endmodule