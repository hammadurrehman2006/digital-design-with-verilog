// Test bench for 4-bit adder
module tb_4_bit_adder;
  reg  [3:0] a, b; reg	cin;
  wire [3:0] s;    wire	cout;
  four_bit_adder fbt (.S(s), .Cout(cout), .Cin(cin), .A(a), .B(b));
  reg [3:0] testA [0:15];
  reg [3:0] testB [0:15];
  integer k;
  initial begin
    cin = 0;
    testA[0]=4'b0000; testB[0]=4'b0000; // 0 + 0
    testA[1]=4'b0000; testB[1]=4'b0001; // 0 + 1
    testA[2]=4'b0001; testB[2]=4'b0001; // 1 + 1
    testA[3]=4'b0111; testB[3]=4'b0001; // 7 + 1
    testA[4]=4'b1000; testB[4]=4'b1000; // 8 + 8
    testA[5]=4'b1111; testB[5]=4'b0000; // 15 + 0
    testA[6]=4'b1111; testB[6]=4'b0001; // 15 + 1
    testA[7]=4'b1111; testB[7]=4'b1111; // 15 + 15
    testA[8]=4'b0101; testB[8]=4'b0011; // 5 + 3
    testA[9]=4'b0110; testB[9]=4'b1001; // 6 + 9
    testA[10]=4'b1010; testB[10]=4'b0101; // 10 + 5
    testA[11]=4'b1001; testB[11]=4'b0111; // 9 + 7
    testA[12]=4'b1100; testB[12]=4'b0100; // 12 + 4
    testA[13]=4'b0010; testB[13]=4'b1101; // 2 + 13
    testA[14]=4'b0011; testB[14]=4'b1100; // 3 + 12
    testA[15]=4'b1011; testB[15]=4'b0100; // 11 + 4

    $display("Time |   A    B  Cin |   Sum   Cout");
    $display("-----------------------------------");
    for (k = 0; k < 16; k = k + 1) begin
      a = testA[k]; b = testB[k];
      #20; 
      $display("%4t | %b %b  %b   |  %b    %b", $time, a, b, cin, s, cout);
    end
    $finish;
  end
endmodule

