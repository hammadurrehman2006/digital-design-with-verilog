module parity_encoder_data (P, A, B, C, D);

    input A, B, C, D;
    output P;

    assign P = ~(A ^ B ^ C ^ D);

endmodule
