/* ----- ----- ----- ----- ----- -----
	Design: full-adder -- TESTBENCH
 	Filename: full_adder.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "full_adder.v"

module full_adder_tb;
integer i;
integer aux;

reg [2:0] j;
wire s;
wire co;


full_adder test(s, co, j[0], j[1], j[2]);

initial begin
    aux = 'b000;
    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
    
    for(i = 0; i < 8; i = i+1) begin
        j = aux;
        aux = aux + 'b001;
        #20;
    end
    $display("Test completed");
end

endmodule