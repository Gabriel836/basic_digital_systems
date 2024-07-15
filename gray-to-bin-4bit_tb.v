/* ----- ----- ----- ----- ----- -----
	Design: 4bit Gray code to binary
			by using primitives -- TESTBENCH
 	Filename: gray-to-bin-4bit_tb.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "gray-to-bin-4bit.v"

module gray_to_bin_tb;
integer i;
integer aux;

reg [3:0] j;
wire [3:0] y;


gray_to_bin test(y, j);

initial begin
    aux = 'b0000;
    $dumpfile("gray_to_bin_tb.vcd");
    $dumpvars(0, gray_to_bin_tb);
    
    for(i = 0; i < 16; i = i+1) begin
        j = aux;
        aux = aux + 'b0001;
        #20;
    end
    $display("Teste completo");
end

endmodule