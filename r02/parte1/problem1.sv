module traffic (
    input logic A,
    output logic VDA, VMA, VDB, VMB
);
    always_comb VDA <= A;
    always_comb VMA <= !A;
    always_comb VMB <= A;
    always_comb VDB <= !A;
endmodule

// module traffic (
//     input logic A, B,
//     output logic VMA, VDA, VMB, VDB
// );
//     assign {VMA, VDA, VMB, VDB} = (A) ? 4'b0110 : 4'b1001;
// endmodule