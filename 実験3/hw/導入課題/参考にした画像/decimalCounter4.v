module decimalCounter4(
  input numClock, displayClock,
  output [3:0] controlOut,
  output [7:0] segOut
);

  parameter ZERO = 4'b0000;
  parameter ONE = 4'b0001;
  parameter NINE = 4'b1001;

  wire clockTransmitter;

  reg [3:0] ones      = ZERO;
  reg [3:0] tens      = ZERO;
  reg [3:0] hundreds  = ZERO;
  reg [3:0] thousands = ZERO;

  clockAdjuster a(
    .rawClock(displayClock),
    .adjustedClock(clockTransmitter)
  );

  displayNums b(
    .onesIn(ones),
    .tensIn(tens),
    .hundredsIn(hundreds),
    .thousandsIn(thousands),
    .displayClock(clockTransmitter),
    .controlOut(controlOut),
    .segOut(segOut)
  );

  always @(posedge numClock) begin 
    if(ones == NINE) begin
      ones <= ZERO;
    end else begin
      ones <= ones + ONE;
    end

    if(ones == NINE) begin
      if(tens == NINE) begin
        tens <= ZERO;
      end else begin
        tens <= tens + ONE;
      end
    end

    if(ones == NINE && tens == NINE) begin
      if (hundreds == NINE) begin
        hundreds <= ZERO;
      end else begin
        hundreds <= hundreds + ONE;
      end
    end

    if(ones == NINE && tens == NINE && hundreds == NINE) begin
      if (thousands == NINE) begin
        thousands <= ZERO;
      end else begin
        thousands <= thousands + ONE;
      end
    end
  end
endmodule // decimalCounter4