module tb_parity_encoder;
    reg a, b, c, d;
    wire P;

    parity_encoder_gate pe (P, a, b, c, d);

    initial begin

        a=0; b=0; c=0; d=0; #50;
        a=0; b=0; c=0; d=1; #50;
        a=0; b=0; c=1; d=0; #50;
        a=0; b=0; c=1; d=1; #50;
        a=0; b=1; c=0; d=0; #50;
        a=0; b=1; c=0; d=1; #50;
        a=0; b=1; c=1; d=0; #50;
        a=0; b=1; c=1; d=1; #50;
        a=1; b=0; c=0; d=0; #50;
        a=1; b=0; c=0; d=1; #50;
        a=1; b=0; c=1; d=0; #50;
        a=1; b=0; c=1; d=1; #50;
        a=1; b=1; c=0; d=0; #50;
        a=1; b=1; c=0; d=1; #50;
        a=1; b=1; c=1; d=0; #50;
        a=1; b=1; c=1; d=1; #50;
     
    end
endmodule

