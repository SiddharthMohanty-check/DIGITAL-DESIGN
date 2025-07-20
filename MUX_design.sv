module MUX_4to1(input wire [3:0]a,b,c,d,
                input wire s0,s1,
                output reg [3:0]Y);
  always@(*)
    begin
      case({s0,s1})
        2'b00: Y = a;
        2'b01: Y = b;
        2'b10: Y = c;
        2'b11: Y = d;
      endcase
    end
endmodule