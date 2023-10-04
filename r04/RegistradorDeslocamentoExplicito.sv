parameter NBITS_DATA = 4;
module RegistradorDeDeslocamento (
    input logic clk, reset,
    input logic data_in,
    output logic [NBITS_DATA-1:0] data_out
);

always_ff @ (posedge reset or posedge clk) begin
    if (reset)
        data_out <= 0;
    else begin
        data_out[3] <= data_in;
        data_out[2] <= data_out[3];
        data_out[1] <= data_out[2];
        data_out[0] <= data_out[1];
    end 
end
    
endmodule