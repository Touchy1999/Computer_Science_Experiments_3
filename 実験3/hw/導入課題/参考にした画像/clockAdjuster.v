module clockAdjuster(
  input rawClock,
  output adjustedClock
);
  parameter ajustRate = 6'b111111; //この値の2倍が実際のクロック周期の比率
  reg [5:0] counter = 6'b111111;
  reg tmpOut = 1'b1;

  always @(posedge rawClock) begin
    counter = counter + 1'b1;
    if (counter == ajustRate) begin
      tmpOut <= ~tmpOut;
    end
  end

  assign adjustedClock = tmpOut;
endmodule // clockAdjuster