
module toplevel_th;
  timeunit      1ns;
  timeprecision 1ps;
  logic clk;
/*
  initial begin
    clk = 0;
    forever #( 10000 * 1ps ) clk = ! clk;
  end
*/
  assign clk=dut.hb_gtwiz_reset_clk_freerun;
  mm_if                          mm_if_0 ( clk );
  gty_64_156_28G_example_top_sim dut(mm_if_0,mm_if_0); 

endmodule
