// half_adder_gate.v  (Gate-level modeling)
module half_adder_gate (S,Cin,A,B);
    input  A,B;
    output S,Cin;
    xor x1 (S, A, B);   // SUM = A xor B
    and x2 (Cin, A, B);   // CARRY = A and B
endmodule

