/* ----- ----- ----- ----- ----- -----
	Design: Delay Latch
 	Filename: D_latch.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "D_latch.v"

module D_latch_tb;
reg D, C;
wire Q, NQ;

D_latch test(Q, NQ, D, C);

initial begin
    $dumpfile("D_latch_tb.vcd");
    $dumpvars(0, D_latch_tb);
    
    D = 0;
    C = 0;
    #20;

    D = 1;
    #20;

    D = 0;
    #20;

    D = 1;
    #20;

    C = 1;
    #20;

    C = 0;
    #20;

    D = 0;
    #20;

    C = 1;
    #20;
    $display("Teste completo");
end

endmodule