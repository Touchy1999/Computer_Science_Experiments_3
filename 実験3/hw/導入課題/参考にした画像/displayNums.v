module displayNums(
  input [3:0] onesIn, tensIn, hundredsIn, thousandsIn,
  input displayClock,
  output [3:0] controlOut,
  output [7:0] segOut
);

  wire [7:0] onesSeg;
  wire [7:0] tensSeg;
  wire [7:0] hundredsSeg;
  wire [7:0] thousandsSeg;
  reg [3:0] controlReg = 4'b0111; 
  reg [7:0] tmpSegOut;

  sevenSegLED      onesLED(.input4(onesIn),      .segOut(onesSeg),      .controlOut());
  sevenSegLED      tensLED(.input4(tensIn),      .segOut(tensSeg),      .controlOut());
  sevenSegLED  hundredsLED(.input4(hundredsIn),  .segOut(hundredsSeg),  .controlOut());
  sevenSegLED thousandsLED(.input4(thousandsIn), .segOut(thousandsSeg), .controlOut());

  assign controlOut = controlReg;
  assign segOut = tmpSegOut;

  always @(posedge displayClock) begin
    if(controlReg == 4'b0111) begin
      controlReg = controlReg << 1'b1;
    end else begin
      controlReg = (controlReg << 1'b1) + 4'b0001;
    end

    case (controlOut)
      4'b1110: tmpSegOut <= tensSeg; 
      4'b1101: tmpSegOut <= hundredsSeg;
      4'b1011: tmpSegOut <= thousandsSeg; 
      4'b0111: tmpSegOut <= onesSeg;
		default: tmpSegOut <= onesSeg;
    endcase
  end
endmodule // displayNums