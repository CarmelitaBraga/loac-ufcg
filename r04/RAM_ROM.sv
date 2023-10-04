// Write your modules here!
parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;
module RAM_ROM(
  input logic [ADDR_WIDTH-1:0] Addr,
  output logic [DATA_WIDTH-1:0] Dout
);
  
  always_comb
    case(Addr)
      2'b00: Dout = 4'b0100;
      2'b01: Dout = 4'b1100;
      2'b10: Dout = 4'b0110;
      2'b11: Dout = 4'b0111;
    endcase
  
endmodule