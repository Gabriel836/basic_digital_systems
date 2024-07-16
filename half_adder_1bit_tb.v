/* ----- ----- ----- ----- ----- -----
	Design: 1bit half-adder -- TESTBENCH
 	Filename: half_adder_1bit.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 
`timescale 1 ns/100 ps
`include "half_adder_1bit.v"

module half_adder_1bit_tb;
integer i;
integer aux;

reg [1:0] j;
wire y;
wire c;


half_adder_1bit test(y, c, j[0], j[1]);

initial begin
    aux = 'b00;
    $dumpfile("half_adder_1bit_tb.vcd");
    $dumpvars(0, half_adder_1bit_tb);
    
    for(i = 0; i < 4; i = i+1) begin
        j = aux;
        aux = aux + 'b01;
        #20;
    end
    $display("Teste completo");
end

endmodule