/* ----- ----- ----- ----- ----- -----
	Design: Set-Reset Latch
 	Filename: SR-latch.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

// This module is vulnerable to error and unexpected outputs due to 
// invalid inputs such as Set(S) = 1 and Reset(R) = 1 simultaneously
module SR_latch(Q, NQ, S, R);
    output Q, NQ;
    input S, R;

    nor n1(NQ, S, Q);
    nor n2(Q, R, NQ);
endmodule