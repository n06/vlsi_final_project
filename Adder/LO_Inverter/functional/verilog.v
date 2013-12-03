//Verilog HDL for "Adder", "LO_Inverter" "functional"

`timescale 1ns/10ps

module LO_Inverter ( Vout, Vin );

  input Vin;
  output Vout;
  
  not #(1.333,0.666) a1(Vout,Vin);

endmodule
