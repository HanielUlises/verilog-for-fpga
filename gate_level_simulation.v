module gate_level_simulation();
    reg a,b,c,d,e;
    wire X,Y;
    
    nand my_gate(X,a,b,c);
    
    wire temp;
    xor(temp,d,e);
    not(Y,temp);

    initial begin
        {a,b,c} = 0;   
        {d,e}   = 0;   #2
        {a,b,c} = 1;   #2
        {a,b,c} = 2;   
        {d,e}   = 1;   #2
        {a,b,c} = 3;   #2
        {a,b,c} = 4;   
        {d,e}   = 2;   #2
        {a,b,c} = 5;   #2
        {a,b,c} = 6;   
        {d,e}   = 3;   #2
        {a,b,c} = 7;   #2
        $stop;  
    end 
endmodule