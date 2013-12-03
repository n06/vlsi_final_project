//Verilog HDL for "Adder", "XOR3_Domino" "Functional"

`timescale 1ns/10ps

module XOR3_Domino ( Y, A, B, Clk, Sub, B_, Sub_ );

  input Sub;
  output Y;
  output Sub_;
  output B_;
  input A;
  input B;
  input Clk;

  wire xor_normal;
  wire xor_normal_;  
  wire node1;

  not(Clk_,Clk);
  not #1 n0(Sub_,Sub);
  not #1 n1(B_,B);

  xor x1(xor_normal, Sub, A, B);
  not n2(xor_normal_, xor_normal);
  and #(5.333,2.666) a1(node1, xor_normal_, Clk);
  not #(0.833,1.666) n3(Y,node1);

endmodule
