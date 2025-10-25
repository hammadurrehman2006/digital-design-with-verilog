// =============================================
// File: basic_gates.v
// Project: Digital Design with Verilog
// Description: Implementation of all basic logic gates
// Author: Muhammad Hammad ur Rehman
// =============================================

// AND Gate
module and_gate (input a, b, output y);
    assign y = a & b;
endmodule
// OR Gate
module or_gate (input a, b, output y);
    assign y = a | b;
endmodule
// NOT Gate
module not_gate (input a, output y);
    assign y = ~a;
endmodule
// NAND Gate
module nand_gate (input a, b, output y);
    assign y = ~(a & b);
endmodule
// NOR Gate
module nor_gate (input a, b, output y);
    assign y = ~(a | b);
endmodule
// XOR Gate
module xor_gate (input a, b, output y);
    assign y = a ^ b;
endmodule
// XNOR Gate
module xnor_gate (input a, b, output y);
    assign y = ~(a ^ b);
endmodule
