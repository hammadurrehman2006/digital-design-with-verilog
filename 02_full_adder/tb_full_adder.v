module tb_full_adder;
    reg a, b, cin;
    wire sum, carry;

    full_adder_data fa(sum, carry, a, b, cin);

    initial begin

        a=0; b=0; cin=0; #100;
        a=0; b=0; cin=1; #100;
        a=0; b=1; cin=0; #100;
        a=0; b=1; cin=1; #100;
        a=1; b=0; cin=0; #100;
        a=1; b=0; cin=1; #100;
        a=1; b=1; cin=0; #100;
	a=1; b=1; cin=1; #100;

    end
endmodule
