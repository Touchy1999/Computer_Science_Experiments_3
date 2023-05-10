module intro2 (
	input reset, clock,
	output reg [3:0] sela2,
	output reg [7:0] out2 );
	
	reg a0 = 4'b0000;
	reg a1 = 4'b0000;
	reg a2 = 4'b0000;
	reg a3 = 4'b0000;
	reg disp = 4'b0000;
	reg se2 = 4'b0000;
	reg counter = 2'b00;
	intro1 intro1_ins0 (.data(disp),.se(se2),.sela(sela2),.led(out2));
	
	always @(posedge clock) 
	begin
		a0 = a0 + 4'b0001;
		if(a0 == 4'b1010)
		begin
			a0 = 4'b0000;
			a1 = a1 + 4'b0001;
		end
		if(counter == 2'b00)
		begin
			disp = a0;
			se2 = 4'b1110;
		end
		if(a1 == 4'b1010)
		begin
			a1 = 4'b0000;
			a2 = a2 + 4'b0001;
		end	
		if(counter == 2'b01)
		begin
			disp = a1;
			se2 = 4'b1101;
		end
		if(a2 == 4'b1010)
		begin
			a2 = 4'b0000;
			a3 = a3 + 4'b0001;
		end
		if(counter == 2'b10)
		begin
			disp = a2;
			se2 = 4'b1011;
		end 
		if(a3 == 4'b1010)
		begin
			a0 = 4'b0000;
			a1 = 4'b0000;
			a2 = 4'b0000;
			a3 = 4'b0000;
		end
		if(counter == 2'b11) 
		begin
			disp = a3;
			se2 = 4'b0111;
		end
		counter = counter + 1;
  end
endmodule 