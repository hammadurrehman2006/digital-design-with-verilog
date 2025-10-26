// tb_half_adder.v  (Testbench)

module tb_half_adder;
    reg  a, b;
    wire s, cin;

    half_adder_data ha (s, cin, a, b);

    initial begin
        
        a = 1'b0; b = 1'b0; #100;
        a = 1'b0; b = 1'b1; #100;
        a = 1'b1; b = 1'b0; #100;
        a = 1'b1; b = 1'b1; #100;

    end
endmodule
