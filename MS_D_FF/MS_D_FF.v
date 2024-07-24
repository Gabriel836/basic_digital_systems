/* ----- ----- ----- ----- ----- -----
	Design: Master-Slave Delay Flip-Flop
 	Filename: MS_D_FF.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 
`include "D_latch.v"

module MS_D_FF(Q, NQ, D, Clk);
	output Q, NQ;
	input D, Clk;

	wire Qm, NQm;
	D_latch master(Qm, NQm, D, ~Clk);
	D_latch slave(Q, NQ, Qm, Clk);
endmodule