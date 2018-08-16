`ifndef MM_IF__SVH
`define MM_IF__SV
interface mm_if(input bit clk);
  timeunit      1ns;
  timeprecision 1ns;
   
  import common_pkg::*;
  import common_env_pkg::*;
  import mm_pkg::*;

  logic [15:0]     drp_do;
  logic [15:0]     drp_di;
  logic [31:0]     drp_addr;
  logic            drp_en;
  logic            drp_we;
  logic            drp_rdy;
  logic            link_status;

  //Master Clocking block - used for Drivers
  clocking master_cb @(posedge clk);
    default input #1step output #1step;
    output drp_addr,drp_en,drp_we,drp_di;
    input  drp_do,drp_rdy;
  endclocking: master_cb

  //Slave Clocking Block - used for any Slave BFMs
  clocking slave_cb @(posedge clk);
    default input #1step output #1step;
    input  drp_addr,drp_en,drp_we,drp_di;
    output drp_do,drp_rdy;
  endclocking: slave_cb

  //Monitor Clocking block - For sampling by monitor components
  clocking monitor_cb @(posedge clk);
    default input #1step output #1step;
    input drp_addr,drp_en,drp_we,drp_di,drp_do,drp_rdy;
  endclocking: monitor_cb

  modport master(clocking master_cb);
  modport slave(clocking slave_cb);
  modport monitor(clocking monitor_cb);
  modport status(input link_status);
endinterface : mm_if
`endif // MM_IF__SV
