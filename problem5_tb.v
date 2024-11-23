module problem5_tb;
  reg           i_clk     = 0;
  reg   [1:0]   i_ctrl;
  wire  [15:0]  o_p;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, DUT);
  end

  problem5 DUT(
    .i_data_0 (16'h000f),
    .i_data_1 (16'h00f0),
    .i_data_2 (16'h0f00),
    .i_data_3 (16'hf000),
    .i_ctrl   (i_ctrl),
    .i_clk    (i_clk),
    .o_data   (o_p)
  );

  always #1 begin    
    i_clk <= ~i_clk;
  end

  initial begin
    i_ctrl   = 2'b00;
    #2
    i_ctrl   = 2'b01;
    #2
    i_ctrl   = 2'b10;
    #2
    i_ctrl   = 2'b11;
    #2
    $finish;
  end
endmodule

