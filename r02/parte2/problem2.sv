module traffic_3v (
    input logic A, B, C,
    output logic VMA, VDA, VMB, VDB, VMC, VDC
);
    always_comb begin : blockName
        VDA <= !B && !C || A && B;
        VDB <= !A && B;
        VDC <= !B && C;
        VMA <= !VDA;
        VMB <= !VDB;
        VMC <= !VDC;
    end
endmodule
