module MUX_tb;
  reg [3:0]a,b,c,d;
  reg s0,s1;
  wire [3:0]Y;
  
  MUX_4to1 uut(
    a,b,c,d,s0,s1,Y);
  
  
  initial begin
  a = 4'd1; b = 4'd2; c = 4'd3; d = 4'd4;
  #10;
  {s0,s1} = 2'b00;
  #10;
    $display("Y = %d",Y);
  {s0,s1} = 2'b01;
  #10;
    $display("Y = %d",Y);
  {s0,s1} = 2'b10;
  #10;
    $display("Y = %d",Y);
  {s0,s1} = 2'b11;
  #10;  
    $display("Y = %d",Y);
    #10;
    $finish;
  end
endmodule