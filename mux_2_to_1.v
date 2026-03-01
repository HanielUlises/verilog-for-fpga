module mux_2_to_1(
    input [1:0] I,
    input sel,
    output reg Y
    );

    always @ (sel, I) begin
        if(sel==0)
            Y=I[0];
        else
            Y=I[1]; 
    end
endmodule