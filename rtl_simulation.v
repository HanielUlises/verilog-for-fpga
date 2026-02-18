module 
    reg a,b;
    wire C1,S1,C2,S2;

    and(C1,a,b);
    xor(S1,a,b);

    assign {C2,S2} = a+b;

    initial begin 
        {a,b}=0;
        {a,b}=1;
        {a,b}=2;
        {a,b}=3;
        $stop;
    end
endmodule