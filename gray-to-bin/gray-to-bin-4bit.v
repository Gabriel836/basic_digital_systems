/* ----- ----- ----- ----- ----- -----
	Design: 4bit Gray code to binary
			by using primitives
 	Filename: gray-to-bin-4bit.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module gray_to_bin(y, j);
  output [3:0] y;
  input [3:0] j;
  
  assign y [3] = j [3];
  assign y [2] = ((~ j [3]) & j [2]) | (j [3] & (~ j [2]));
  assign y [1] = ((~ j [3]) & (~ j [2]) & j [1]) | ((~ j [3]) & j [2] & (~ j [1])) | (j [3] & j [2] & j [1]) | (j [3] & (~ j [2]) & (~ j [1]));

// For clarity, the parts of the expression for output y[0] were divided into wires.
  wire aux0 = (~ j [3]) & (~ j [2]) & (~ j [1]) & (j [0]);
  wire aux1 = (~ j [3]) & (~ j [2]) & (j [1]) & (~ j [0]);
  wire aux2 = (~ j [3]) & (j [2]) & (~ j [1]) & (~ j [0]);
  wire aux3 = (~ j [3]) & (j [2]) & (j [1]) & (j [0]);
  wire aux4 = (j [3]) & (j [2]) & (~ j [1]) & (j [0]);
  wire aux5 = (j [3]) & (j [2]) & (j [1]) & (~ j [0]);
  wire aux6 = (j [3]) & (~ j [2]) & (~ j [1]) & (~ j [0]);
  wire aux7 = (j [3]) & (~ j [2]) & (j [1]) & (j [0]);

  assign y [0] = aux0 | aux1 | aux2 | aux3 | aux4 | aux5 | aux6 | aux7;
endmodule