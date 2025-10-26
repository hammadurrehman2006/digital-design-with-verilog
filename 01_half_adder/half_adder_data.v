// half_adder_data.v  (Data-flow modeling)
module half_adder_data (S,Cin,A,B);
    input  A,B;
    output S,Cin;
    assign S = A ^ B;   // SUM = A xor B
    assign Cin = A & B;   // CARRY = A and B
endmodule
