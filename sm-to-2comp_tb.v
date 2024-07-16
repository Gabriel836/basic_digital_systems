/* ----- ----- ----- ----- ----- -----
	Design: 4bit sign-magnitude to 2's complement
			By using primitives -- TESTBENCH
 	Filename: sm-to-2comp_tb.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "sm-to-2comp.v"

module sm_to_2comp_tb;
integer i;
integer aux;

reg [3:0] j;
wire [3:0] y;


sm_to_2comp test(y, j);

initial begin
    aux = 'b0000;
    $dumpfile("sm_to_2comp_tb.vcd");
    $dumpvars(0, sm_to_2comp_tb);
    
    for(i = 0; i < 16; i = i+1) begin
        j = aux;
        aux = aux + 'b0001;
        #20;
    end
    $display("Teste completo");
end

endmodule

