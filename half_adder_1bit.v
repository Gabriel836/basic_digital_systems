/* ----- ----- ----- ----- ----- -----
	Design: 1bit half-adder
 	Filename: half_adder_1bit.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module half_adder_1bit (y1, c, n1, n2);
output y1, c;
input n1, n2;

assign y1 = (n1 & (~n2)) | ((~n1) & n2);
assign c = n1 & n2;
endmodule