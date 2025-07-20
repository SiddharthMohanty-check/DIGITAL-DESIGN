module DEMUX_1to4_tb;

  reg din;
  reg [1:0] sel;
  wire y0, y1, y2, y3;

  // Instantiate the DEMUX
  DEMUX_1to4 uut (
    .din(din),
    .sel(sel),
    .y0(y0), .y1(y1), .y2(y2), .y3(y3)
  );

  initial begin
    // VCD setup for waveform viewer if needed
    $dumpfile("demux.vcd");
    $dumpvars(0, DEMUX_1to4_tb);

    din = 1'b1;

    $display("=== DEMUX Test ===");

    sel = 2'b00; #10;
    $display("sel = %b → y0 = %b, y1 = %b, y2 = %b, y3 = %b", sel, y0, y1, y2, y3);

    sel = 2'b01; #10;
    $display("sel = %b → y0 = %b, y1 = %b, y2 = %b, y3 = %b", sel, y0, y1, y2, y3);

    sel = 2'b10; #10;
    $display("sel = %b → y0 = %b, y1 = %b, y2 = %b, y3 = %b", sel, y0, y1, y2, y3);

    sel = 2'b11; #10;
    $display("sel = %b → y0 = %b, y1 = %b, y2 = %b, y3 = %b", sel, y0, y1, y2, y3);

    #10 $finish;
  end

endmodule