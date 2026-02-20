module sim_range();
    wire [7:0] my_wire;
    reg [3:0] a;
    reg [3:0] b;
    reg [7:0] my_byte;
    reg [31:0] big_one;

    initial begin #5;
        my_byte = 21;
        my_byte = my_wire;
        my_byte = {4'b1111,a};
        {a,b} = my_byte;

        big_one = {my_byte, {2{b,a}}, 8'd35};

        a = my_byte[7:4];
        my_byte = big_one[30:23];
        b[3:1] = my_byte[6:4];
    end
endmodule