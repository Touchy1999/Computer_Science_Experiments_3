module intro1 (
  input [3:0] data,
  output [7:0] se,
  output reg [3:0] sela,
  output reg [7:0] led );
  
  always@(data)
  begin
    sela <= se;

  
  case(data) 
    4'b0000 : led = 8'b0111_1110;
	 4'b0001 : led = 8'b0011_0000;
	 4'b0010 : led = 8'b0110_1101;
	 4'b0011 : led = 8'b0111_1001; 
	 4'b0100 : led = 8'b0011_0011;
	 4'b0101 : led = 8'b0101_1011;
	 4'b0110 : led = 8'b0101_1111;
	 4'b0111 : led = 8'b0111_0010;	 
	 4'b1000 : led = 8'b0111_1111;
	 4'b1001 : led = 8'b0111_0011;
	 4'b1010 : led = 8'b0111_0111;
	 4'b1011 : led = 8'b0001_1111;	 
	 4'b1100 : led = 8'b0100_1110;
	 4'b1101 : led = 8'b0011_1101;
	 4'b1110 : led = 8'b0100_1111;
	 4'b1111 : led = 8'b0100_0111;
	 default : led = 8'b0000_0000;
	 endcase

	 end
endmodule
