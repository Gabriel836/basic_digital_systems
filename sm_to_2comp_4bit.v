/* ----- ----- ----- ----- ----- -----
	Design: 4bit sign-magnitude to 2's complement
			By using primitives
 	Filename: sm_to_2comp_4bit.v
	Coder: Gabriel Maruschi
 	Versions: /july_2024/
	----- ----- ----- ----- ----- -----
*/ 

module sm_to_2comp(y, j);
  output [3:0] y;
  input [3:0] j;
  
  assign y [3] = (j [3] & j [2]) | (j [3] & j [1]) | (j [3] & j [0]);
  assign y [2] = ((~ j [3]) & j [2]) | (j [2] & (~ j [1]) & (~ j [0])) | (j [3] & (~ j[2]) & j [0]) | (j [3] & (~ j [2]) & j [1]);
  assign y [1] = ((~ j [3]) & j [1]) | (j [1] & (~ j [0])) | (j [3] & (~ j [1]) & j [0]);
  assign y [0] = j [0];
endmodule
