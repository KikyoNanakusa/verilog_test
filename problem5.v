module problem5 (
  input [15:0] i_data_0,
  input [15:0] i_data_1,
  input [15:0] i_data_2,
  input [15:0] i_data_3,
  input [1:0]  i_ctrl,
  input i_clk,
  output reg [15:0] o_data
);
  wire [15:0] w_data;

  assign w_data = select_data(i_ctrl);

  always @(posedge i_clk) begin
    o_data <= w_data;
  end

  function [15:0] select_data;
    input [1:0] ctrl;

    begin
      case (ctrl)
        2'b00: select_data = i_data_0;
        2'b01: select_data = i_data_1;
        2'b10: select_data = i_data_2;
        2'b11: select_data = i_data_3;
        default: select_data = 16'h0000;
      endcase
    end
  endfunction

endmodule
