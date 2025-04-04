module D_FlipFlop(
        input D, clk,
        output reg Q, 
        output reg Q_not
    );
    initial begin
        Q = 0;
        Q_not = 1;
    end
    always @(posedge clk) begin
        Q <= D;
        Q_not <= ~D;
    end
    
endmodule