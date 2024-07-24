/* ----- ----- ----- ----- ----- -----
	Design: Set-Reset Latch
 	Filename: SR_latch.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "SR_latch.v"

module SR_latch_tb;
reg S;
reg R;
wire Q;
wire NQ;

SR_latch test(Q, NQ, S, R);

initial begin
    $dumpfile("SR_latch_tb.vcd");
    $dumpvars(0, SR_latch_tb);
    
    S = 0;
    R = 0;
    #20;

    S = 1;
    #20;

    S = 0;
    #20;

    R = 1;
    #20;

    R = 0;
    #20;
    $display("Teste completo");
end

endmodule