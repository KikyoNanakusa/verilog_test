module problem4 (
  input i_clk,
  input i_rst,
  output [15:0] o_p
);

  reg [15:0] r_0;
  wire [15:0] w_0;

  wire [15:0] zero;
  wire [15:0] one;
  wire [15:0] w_1;

  assign zero = 16'h0000;
  assign one = 16'h0001;

  always @(posedge i_clk) begin
    r_0 <= w_1;
  end

  assign w_0 = r_0 + one;
  assign w_1 = i_rst ? zero : w_0;

  assign o_p = r_0;

endmodule
  
