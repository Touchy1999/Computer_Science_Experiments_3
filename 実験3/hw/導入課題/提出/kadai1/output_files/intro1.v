module intro1 (
  input [3:0] a,
  output [7:0] se,
  output reg [3:0] sela,
  output reg [7:0] out );
  
  always@(a)
  begin
    sela <= se;

  
  case(a) 
    4'b0000 : out = 8'b0111_1110;
	 4'b0001 : out = 8'b0011_0000;
	 4'b0010 : out = 8'b0110_1101;
	 4'b0011 : out = 8'b0111_1001; 
	 4'b0100 : out = 8'b0011_0011;
	 4'b0101 : out = 8'b0101_1011;
	 4'b0110 : out = 8'b0101_1111;
	 4'b0111 : out = 8'b0111_0010;	 
	 4'b1000 : out = 8'b0111_1111;
	 4'b1001 : out = 8'b0111_0011;
	 4'b1010 : out = 8'b0111_0111;
	 4'b1011 : out = 8'b0001_1111;	 
	 4'b1100 : out = 8'b0100_1110;
	 4'b1101 : out = 8'b0011_1101;
	 4'b1110 : out = 8'b0100_1111;
	 4'b1111 : out = 8'b0100_0111;
	 default : out = 8'b0000_0000;
	 endcase

	 
endmodule