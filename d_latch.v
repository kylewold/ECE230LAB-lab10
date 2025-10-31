module d_latch(
    input D, E,
    output reg Q,
    output NotQ
);

    always @(D,E) begin
        if(D && E)
            Q <= 1; 
        else if (~D && E)
            Q <= 0;      
    end
 
    assign NotQ = ~Q;    
    
endmodule