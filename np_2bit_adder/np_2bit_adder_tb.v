/* ----- ----- ----- ----- ----- -----
	Design: non-parallel 2bit adder -- TESTBENCH
 	Filename: np_2bit_adder.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

`timescale 1 ns/100 ps
`include "np_2bit_adder.v"

module np_2bit_adder_tb;
integer i;
integer j;
integer aux1;
integer aux2;

reg [1:0] a;
reg [1:0] b;
wire [1:0] s;
wire co;


np_2bit_adder test(co, s, a, b);

initial begin
    $dumpfile("np_2bit_adder_tb.vcd");
    $dumpvars(0, np_2bit_adder_tb);
    
    aux1 = 'b00;
    for(i = 0; i < 4; i = i+1) begin
        aux2 = 'b00;
        for(j = 0; j < 4; j = j+1) begin
            a = aux1;
            b = aux2;
            aux2 = aux2 + 'b01;
            #20;
        end
        aux1 = aux1 + 'b01;
    end
    $display("Test completed");
end

endmodule