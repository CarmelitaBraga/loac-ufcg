module Semaforo_3v (
    input logic [2:0] ABC,
    output logic VMA, VMB, VMC, VDA, VDB, VDC
);

always_comb begin
    case (ABC)
        3'b000, 3'b100, 3'b110, 3'b111: begin
            VDA <= 1;
            VDB <= 0;
            VDC <= 0;
        end 3'b001, 3'b101: begin
            VDA <= 0;
            VDB <= 0;
            VDC <= 1;
        end 3'b010, 3'b011: begin
            VDA <= 0;
            VDB <= 1;
            VDC <= 0;
        end
    endcase

    VMA <= !VDA;
    VMB <= !VDB;
    VMC <= !VDC;
end
    
endmodule
