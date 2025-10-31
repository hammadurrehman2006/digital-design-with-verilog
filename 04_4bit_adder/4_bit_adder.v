//full adder
module full_adder(S, C, A, B, Cin);

    input A, B, Cin;
    output S, C;
    wire w1, w2, w3;

    xor x1(w1, A, B);
    xor x2(S, w1, Cin);
    and a1(w2, w1, Cin);
    and a2(w3, A, B);
    or  o1(C, w2, w3);

endmodule

//4 bit adder
module four_bit_adder(
	output [3:0] S,
	output Cout,
	input Cin,
	input [3:0] A, B);
	wire x0, x1, x2;

	full_adder fa1(S[0],x0,A[0],B[0], Cin);
	full_adder fa2(S[1],x1,A[1],B[1], x0);
	full_adder fa3 (S[2],x2,A[2],B[2], x1);
	full_adder fa4 (S[3],Cout,A[3],B[3], x2);

endmodule
