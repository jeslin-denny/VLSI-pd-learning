###############################################
### Synchronous D Flip flop code in verilog ###
###############################################


module dff (input clk, rst, d, output reg q, output qb);
  always@(oisedge clk)
    begin
    if (rst)
      q <= 1'b0;
  else
    q <= d;
    end
  qb = ~q;
endmodule
