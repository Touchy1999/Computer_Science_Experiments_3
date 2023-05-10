module kadai2 (
    input stop, clock,
    output reg [7:0] LEDA,
	 output reg [7:0] LEDB,
	 output reg [7:0] LEDC,
	 output reg [7:0] LEDD,
	 output reg loc ) ;
	 
	 reg [3:0] dataA;
	 reg [3:0] dataB;
	 reg [3:0] dataC;
	 reg [3:0] dataD;
	 reg locA;
	 reg locB;
	 reg locC;
	 reg locD;
	 
	 kadai1 led0 (.data(dataA), .LED(LEDA), .loc(locA));
	 kadai1 led1 (.data(dataB), .LED(LEDB), .loc(locB));
	 kadai1 led2 (.data(dataC), .LED(LEDC), .loc(locC));
	 kadai1 led3 (.data(dataD), .LED(LEDD), .loc(locD));
	 	 
always @( posedge clock ) begin
	 loc <= 1'b1;
    if ( stop == 1 ) begin
        dataA <= dataA ;
		  dataB <= dataB ;
		  dataC <= dataC ;
		  dataD <= dataD ;
    end else if (dataA == 4'b1001) begin
	     if (dataB == 4'b1001) begin
		      if (dataC == 4'b1001) begin
				    if (dataD == 4'b1001) begin
					     dataA <= 4'b0000;
						  dataB <= 4'b0000;
						  dataC <= 4'b0000;
						  dataD <= 4'b0000;
					 end else begin
					     	  dataA <= 4'b0000;
						  dataB <= 4'b0000;
						  dataC <= 4'b0000;
					     dataD <= dataD + 1;
					 end
				end else begin
				    dataA <= 4'b0000;
				    dataB <= 4'b0000;
				    dataC <= dataC + 1;
				end
		  end else begin
		      dataA <= 4'b0000;
	         dataB <= dataB + 1;
		  end
	 end else begin
	     dataA <= dataA + 1;
    end
	 
end
endmodule