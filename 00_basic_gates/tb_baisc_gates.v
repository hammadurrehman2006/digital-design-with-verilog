// =============================================
// Testbench: Basic Logic Gates
// =============================================


module tb_basic_gates;
    reg a, b;
    wire and_y, or_y, nand_y, nor_y, xor_y, xnor_y, not_y;

    and_gate  u_and  (.a(a), .b(b), .y(and_y));
    or_gate   u_or   (.a(a), .b(b), .y(or_y));
    nand_gate u_nand (.a(a), .b(b), .y(nand_y));
    nor_gate  u_nor  (.a(a), .b(b), .y(nor_y));
    xor_gate  u_xor  (.a(a), .b(b), .y(xor_y));
    xnor_gate u_xnor (.a(a), .b(b), .y(xnor_y));
    not_gate  u_not  (.a(a), .y(not_y));

    initial begin
       

        {a, b} = 2'b00; #50;
        {a, b} = 2'b01; #50;
        {a, b} = 2'b10; #50;
        {a, b} = 2'b11; #50;

    end
endmodule
