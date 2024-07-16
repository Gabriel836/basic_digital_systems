/* ----- ----- ----- ----- ----- -----
	Design: non-parallel 2bit adder
 	Filename: np_2bit_adder.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module np_2bit_adder (co, s, a, b);
// module recieves two 2bit wires (a, b) and outputs a two bit wire for the sum (s) and a carry-out(co) which is the more significative bit of the output
output [1:0]s;   // s: sum; co: carry out;
output co;
input [1:0] a, b;    // (a, b): 2-bit input; 

// Expression parcels for s[1] were divided to clarify the logic
wire aux0 = (a[1]) & (~ b[1]) & (~ b[0]);
wire aux1 = (a[1]) & (~ a[0]) & (~ b[1]);
wire aux2 = (~ a[1]) & (a[0]) & (~ b[1]) & (b[0]);
wire aux3 = (a[1]) & (a[0]) & (b[1]) & (b[0]);
wire aux4 = (~ a[1]) & (~ a[0]) & (b[1]);
wire aux5 = (~ a[1]) & (b[1]) & (~ b[0]);
assign s[1] = aux0 | aux1 | aux2 | aux3 | aux4 | aux5;

assign s[0] = ((~ a[0]) & (b[0])) | ((a[0]) & (~ b[0]));

assign co = (a[1] & b[1]) | (a[0] & b[1] & b[0]) | (a[1] & a[0] & b[0]);
endmodule
