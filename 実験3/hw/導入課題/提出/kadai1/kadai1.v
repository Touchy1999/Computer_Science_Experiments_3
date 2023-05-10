module kadai1 (data, LED, temp);
  input [3:0] data;
  output [7:0] LED;
  output [3:0] temp;
  
  wire [3:0] data;
  wire [7:0] LED;
  //wire [3:0] temp;
  
  assign LED = dec(data);
  
  assign temp = 4'b0111;
  
  function [7:0] dec;
  input [3:0] din;
  
  case(din) 
    4'b0000 : dec = 8'b0111_1110;
	 4'b0001 : dec = 8'b0011_0000;
	 4'b0010 : dec = 8'b0110_1101;
	 4'b0011 : dec = 8'b0111_1001; 
	 4'b0100 : dec = 8'b0011_0011;
	 4'b0101 : dec = 8'b0101_1011;
	 4'b0110 : dec = 8'b0101_1111;
	 4'b0111 : dec = 8'b0111_0010;	 
	 4'b1000 : dec = 8'b0111_1111;
	 4'b1001 : dec = 8'b0111_0011;
	 4'b1010 : dec = 8'b0111_0111;
	 4'b1011 : dec = 8'b0001_1111;	 
	 4'b1100 : dec = 8'b0100_1110;
	 4'b1101 : dec = 8'b0011_1101;
	 4'b1110 : dec = 8'b0100_1111;
	 4'b1111 : dec = 8'b0100_0111;
	 default : dec = 8'b0000_0000;
	 endcase
	 
endfunction	 

    
	 
endmodule