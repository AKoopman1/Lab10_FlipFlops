module T_FlipFlop(
        input T, clk,
        output Q, 
        output Q_not
    );

    JK_FlipFlop jkLogic (
        .J(T),
        .K(T),
        .clk(clk),
        .Q(Q),
        .Q_not(Q_not)
    );

endmodule