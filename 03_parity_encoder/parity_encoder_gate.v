module parity_encoder_gate (P, A, B, C, D);

    input A, B, C, D;
    output P;
    wire x1, x2, x3;

    xor (x1, A, B);
    xor (x2, x1, C);
    xor (x3, x2, D);
    not (P, x3);

endmodule
