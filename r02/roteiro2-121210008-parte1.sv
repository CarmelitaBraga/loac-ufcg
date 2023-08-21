module semaforo (
    input logic A, 
    output logic VMA, VDA, VMB, VDB
);

    always_comb
    if (A) begin
        VMA <= 0;
        VDA <= 1;
        VMB <= 1;
        VDB <= 0;
    end else begin
        VMA <= 1;
        VDA <= 0;
        VMB <= 0;
        VDB <= 1;

    end

    
endmodule