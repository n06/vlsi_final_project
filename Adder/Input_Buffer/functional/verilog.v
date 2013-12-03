//Verilog HDL for "Adder", "Input_Buffer" "functional"

`timescale 1ns/10ps

module Input_Buffer ( A_, B_, A, B, En );

  input En;
  output B_;
  output A_;
  input A;
  input B;

  nor #(2.5) n0(A_,A,En);
  nor #(2.5) n1(B_,B,En);

endmodule
