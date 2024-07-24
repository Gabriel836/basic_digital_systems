/* ----- ----- ----- ----- ----- -----
	Design: Master-Slave Delay Flip-Flop
 	Filename: MS_D_FF.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "MS_D_FF.v"

module MS_D_FF_tb;
reg D, Clk;
wire Q, NQ;

MS_D_FF test(Q, NQ, D, Clk);

initial begin
    $dumpfile("MS_D_FF_tb.vcd");
    $dumpvars(0, MS_D_FF_tb);
    
    D = 0;
    Clk = 0;
    #20;

    D = 1;
    #20;

    D = 0;
    #20;

    D = 1;
    #20;

    Clk = 1;
    #20;

    D = 0;
    #20;

    Clk = 0;
    #20;

    Clk = 1;
    #20;
    $display("Teste completo");
end

endmodule