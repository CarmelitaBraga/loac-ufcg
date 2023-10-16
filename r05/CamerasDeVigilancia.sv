parameter NBITS_COUNT = 2;
module CircuitoDeVigilancia(
  input logic clk, reset,
  output logic S0, S1, S2, S3, S4, S5, S6, S7, S8,
  output [NBITS_COUNT-1:0] count
);
  always_ff @(posedge reset or posedge clk) begin
    if (reset)
      count <= 0;
    else begin
      count <= count + 1;
      unique case (count)
        2'b00: begin
          S0 <= 1;
          S1 <= 1;
          S2 <= 1;
          S3 <= 0;
          S4 <= 0;
          S5 <= 0;
          S6 <= 0;
          S7 <= 0;
          S8 <= 0;
        end
        2'b01: begin
          S0 <= 0;
          S1 <= 0;
          S2 <= 0;
          S3 <= 1;
          S4 <= 1;
          S5 <= 1;
          S6 <= 0;
          S7 <= 0;
          S8 <= 0;
        end
        2'b10: begin
          S0 <= 0;
          S1 <= 0;
          S2 <= 0;
          S3 <= 0;
          S4 <= 0;
          S5 <= 0;
          S6 <= 1;
          S7 <= 1;
          S8 <= 1;
        end
      endcase
    end
  end
endmodule
