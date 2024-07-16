/* ----- ----- ----- ----- ----- -----
	Design: full-adder
 	Filename: full_adder.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module full_adder (s, co, a, b, ci);
output s, co;      // s: sum; co: carry out;
input a, b, ci;    // (a, b): bit input; ci: carry in; 

assign s = (a & (~ b) & (~ ci)) | ((~ a) & b & (~ ci)) | ((~ a) & (~ b) & ci) | (a & b & ci);
assign co = a&b | a&ci | b&ci;
endmodule