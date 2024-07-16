`timescale 1ns/100ps
`include "andOrNot.v"

module andOrNot_tb;
	wire A, B, C, D, E;
	integer k=0;
	
	assign{A, B, C} = k;
	//k = 0, 1, 2, 3... = 000, 001, 010, 011...
	andOrNot the_circuit(A, B, C, D, E);
	
	initial begin
		$dumpfile("andOrNot.vcd");
		$dumpvars(0, andOrNot_tb);
		
		for (k=0; k<8; k++)
			#10 $display("done testing case %d", k);
		$finish;
	end
endmodule

//gtkwave andOrNot.vcd