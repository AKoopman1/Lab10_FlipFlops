`timescale 1ns / 1ps

module top(
        input [3:0]sw,
        input btnC,
        output [5:0]led
    );
    
    D_FlipFlop d (
        .D(sw[0]),
        .clk(btnC),
        .Q(led[0]),
        .Q_not(led[1])
    );

    JK_FlipFlop jk (
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .Q_not(led[3]) 
    );
    
    T_FlipFlop t (
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .Q_not(led[5])
    );
    
endmodule
