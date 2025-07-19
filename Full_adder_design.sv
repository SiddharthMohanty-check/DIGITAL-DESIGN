module full_adder(input wire a,b,cin,
                  output reg sum,cout);
  assign sum = a^b^cin;
  assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
