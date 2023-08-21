
// module semaforo_3v (
//     input logic A, B, C,
//     output logic VMA, VMB, VMC, VDA, VDB, VDC
// );
// always_comb begin
//     if (A && B || !B && !C) begin
//         VDA <= 1;
//         VDB <= 0;
//         VDC <= 0;
//     end else if (!A && !B) begin
//         VDA <= 0;
//         VDB <= 1;
//         VDC <= 0;
//     end else begin
//         VDA <= 0;
//         VDB <= 0;
//         VDC <= 1;
//     end

//     VMA <= !VDA;
//     VMB <= !VDB;
//     VMC <= !VDC;
// end


// always_comb begin
//     VDA <= !B && !C || A && B;
//     VDB <= !A && !B;
//     VDC <= !B && C;
//     VMA <= !VDA;
//     VMB <= !VDB;
//     VMC <= !VDC;
// end
    
// endmodule