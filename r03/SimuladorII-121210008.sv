module Simulador (
    input logic [3:0] S0, S1, S2, S3, S4, S5, S6, S7, 
    input logic [2:0] SEL, 
    output logic [3:0] SAIDA, ORIGEM);

    always_comb begin
        case(SEL)
            3'b000: SAIDA <= S0;
            3'b001: SAIDA <= S1;
            3'b010: SAIDA <= S2;
            3'b011: SAIDA <= S3;
            3'b100: SAIDA <= S4;
            3'b101: SAIDA <= S5;
            3'b110: SAIDA <= S6;
            3'b111: SAIDA <= S7;
        endcase
    end
endmodule