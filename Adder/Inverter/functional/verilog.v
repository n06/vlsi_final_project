//Verilog HDL for "Lab3", "Inverter" "functional"


module Inverter ( Vout, Vin );

  input Vin;
  output Vout;
	not #1 n1(Vout,Vin);	

endmodule
