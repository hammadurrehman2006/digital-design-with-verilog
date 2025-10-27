module full_adder_gate(S, C, A, B, Cin);

    input A, B, Cin;
    output S, C;
    wire w1, w2, w3;

    xor x1(w1, A, B);
    xor x2(S, w1, Cin);
    and a1(w2, w1, Cin);
    and a2(w3, A, B);
    or  o1(C, w2, w3);

endmodule
