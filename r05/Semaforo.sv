// Write your modules here!
parameter NBITS_COUNT = 2;
module Semaforo(
  input logic clk, reset,
  output logic verde, amarelo, vermelho,
  output logic [NBITS_COUNT-1:0] Count = 0
);
  always_ff @ (posedge clk)
    if (reset) 
      Count <= 0;
  	else begin
      Count <= Count + 1;
      unique case (Count)
        2'b00: begin 
          vermelho <= 1;
          amarelo <= 0;
          verde <= 0;
        end
        2'b01: begin 
          vermelho <= 0;
          amarelo <= 1;
          verde <= 0;
        end
        2'b10: begin 
          vermelho <= 0;
          amarelo <= 0;
          verde <= 1;
        end
      endcase
    end
endmodule