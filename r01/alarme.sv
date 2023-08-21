module alarme (input logic p1, p2, m, output logic s);
    always_comb s <= m & (p1 | p2);

    
endmodule