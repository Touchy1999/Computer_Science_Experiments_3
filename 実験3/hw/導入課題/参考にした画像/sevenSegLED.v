module sevenSegLED(
  input [3:0] input4,
  output [7:0] segOut
);

  function [7:0] assignSegs;
    input [3:0] input4;

    begin
      case (input4)
        0 : assignSegs = 8'b01111110;
        1 : assignSegs = 8'b00110000;
        2 : assignSegs = 8'b01101101;
        3 : assignSegs = 8'b01111001;
        4 : assignSegs = 8'b00110011;
        5 : assignSegs = 8'b01011011;
        6 : assignSegs = 8'b01011111;
        7 : assignSegs = 8'b01110010;
        8 : assignSegs = 8'b01111111;
        9 : assignSegs = 8'b01111011;
        10: assignSegs = 8'b01110111;
        11: assignSegs = 8'b00011111;
        12: assignSegs = 8'b01001110;
        13: assignSegs = 8'b00111101;
        14: assignSegs = 8'b01001111;
        15: assignSegs = 8'b01000111;
        default: assignSegs = 8'b10000000;
      endcase
    end

  endfunction
  
  assign segOut = assignSegs(input4);
endmodule // sevenSegLED