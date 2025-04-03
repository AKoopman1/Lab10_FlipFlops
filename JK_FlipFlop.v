module JK_FlipFlop(
        input J, K, clk,
        output Q, 
        output Q_not
    );
    
    wire D;
    
    assign D = (J & ~Q) | (~K & Q);
    
    D_FlipFlop dLogic (
        .D(D),
        .clk(clk),
        .Q(Q),
        .Q_not(Q_not)
    );
    
endmodule