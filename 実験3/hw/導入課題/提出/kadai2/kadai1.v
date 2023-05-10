module kadai1 (data, LED, loc);
  input [3:0] data;
  output [7:0] LED;
  output loc;
  
  wire [3:0] data;
  wire [7:0] LED;
  //wire [3:0] loc;
  
  assign LED = dec(data);
  
  function [7:0] dec;
  input [3:0] din;
  
  case(din)          //7654_3210
    4'b0000 : dec = 8'b1111_1100;//0
	 4'b0001 : dec = 8'b0110_0000;//1
	 4'b0010 : dec = 8'b1101_1010;//2
	 4'b0011 : dec = 8'b1111_0010;//3 
	 4'b0100 : dec = 8'b0110_0110;//4
	 4'b0101 : dec = 8'b1011_0110;//5
	 4'b0110 : dec = 8'b1011_1110;//6
	 4'b0111 : dec = 8'b1110_0100;//7 
	 4'b1000 : dec = 8'b1111_1110;//8
	 4'b1001 : dec = 8'b1110_0110;//9
	 4'b1010 : dec = 8'b0111_0111;//A
	 4'b1011 : dec = 8'b0001_1111;//B	 
	 4'b1100 : dec = 8'b0100_1110;//C
	 4'b1101 : dec = 8'b0011_1101;//D
	 4'b1110 : dec = 8'b0100_1111;//E
	 4'b1111 : dec = 8'b0100_0111;//F
	 default : dec = 8'b0000_0000;
	 endcase
	 
endfunction	 

    
	 
endmodule