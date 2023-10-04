// Write your modules here!
parameter NBITS_DATA = 4;
module RegParaleloSerial(
  input logic clk, reset,
  input logic [NBITS_DATA-1:0] Din,
  input logic SEL,  Din_serie,
  output logic [NBITS_DATA-1:0] Dout
);
  always_ff @ (posedge reset or posedge clk) begin
    if (reset)
      Dout <= 0;
    else begin
      case(SEL)
        1'b0: Dout <= Din;
        1'b1: Dout <= {Din_serie, Dout[NBITS_DATA-1:1]};
      endcase
    end
  end
endmodule