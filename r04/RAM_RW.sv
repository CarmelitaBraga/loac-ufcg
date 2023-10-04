// Write your modules here!
parameter ADDR_WIDTH = 2;
parameter DATA_WIDTH = 4;
module RAM_RW(
  input logic clk, SEL,
  input logic [ADDR_WIDTH-1:0] Addr,
  input logic [DATA_WIDTH-1:0] Din,
  output logic [DATA_WIDTH-1:0] Dout
);
  logic [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];
  
  always_ff @ (posedge clk) begin
    if (SEL) mem[Addr] <= Din;
    else Dout <= mem[Addr];
  end
endmodule