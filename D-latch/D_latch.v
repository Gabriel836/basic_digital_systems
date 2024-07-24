/* ----- ----- ----- ----- ----- -----
	Design: Delay Latch
 	Filename: D_latch.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module D_latch(Q, NQ, D, C);
    output Q, NQ; // Q and NQ are actual state values (complementary)
    input D, C;   // D is the new value you want to storage
                  // C is the control signal: C = 0 -> HOLD VALUE
                  //                          C = 1 -> UPDATE STORAGED VALUE TO D

    wire S, R;

    and a1(S, D, C);
    and a2(R, ~D, C);

    nor nor1(Q, S, NQ);
    nor nor2(NQ, R, Q);
endmodule