module sel4(
  input   wire        clock,
  input   wire        reset,
  input   wire  [3:0] data,
  output  reg   [3:0] q
  );

  always @ (posedge clock) begin
    // clockの立上りでalways文が起動
    if (reset == 1'b1) begin 
      q <= 4'b0000; // resetがアクティブならリセット
    end else begin
      q <= data;
    end
  end

endmodule