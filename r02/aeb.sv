
module moduleName (input logic [1:0] AB, output logic VMA, VDA, VMB, VDB);
    always_comb begin
        case(AB)
            2'b11, 2'b10: begin
                VDA <= 1;
                VDB <= 0;
                VMA <= !VDA;
                VMB <= !VDB;
            end
            2'b01, 2'b00: begin
                VDB <= 1;
                VDA <= 0;
                VMA <= !VDA;
                VMB <= !VDB;
            end
        endcase
    end
endmodule