// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Jul  5 07:29:04 2018
// Host        : lzhou-dt2-vi-local running 64-bit CentOS Linux release 7.2.1511 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/chiwei/sandbox/vivado/gty_base/gty_base.srcs/sources_1/ip/gty_64_156_28G/gty_64_156_28G_stub.v
// Design      : gty_64_156_28G
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku5p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gty_64_156_28G_gtwizard_top,Vivado 2018.1" *)
module gty_64_156_28G(gtwiz_userclk_tx_active_in, 
  gtwiz_userclk_rx_active_in, gtwiz_reset_clk_freerun_in, gtwiz_reset_all_in, 
  gtwiz_reset_tx_pll_and_datapath_in, gtwiz_reset_tx_datapath_in, 
  gtwiz_reset_rx_pll_and_datapath_in, gtwiz_reset_rx_datapath_in, 
  gtwiz_reset_rx_cdr_stable_out, gtwiz_reset_tx_done_out, gtwiz_reset_rx_done_out, 
  gtwiz_userdata_tx_in, gtwiz_userdata_rx_out, drpaddr_common_in, drpclk_common_in, 
  drpdi_common_in, drpen_common_in, drpwe_common_in, gtrefclk00_in, drpdo_common_out, 
  drprdy_common_out, qpll0lock_out, qpll0outclk_out, qpll0outrefclk_out, qpll1lock_out, 
  drpaddr_in, drpclk_in, drpdi_in, drpen_in, drpwe_in, eyescanreset_in, eyescantrigger_in, 
  gtyrxn_in, gtyrxp_in, loopback_in, pcsrsvdin_in, rxbufreset_in, rxcdrhold_in, 
  rxdfelpmreset_in, rxlpmen_in, rxoutclksel_in, rxpcsreset_in, rxpmareset_in, rxpolarity_in, 
  rxprbscntreset_in, rxprbssel_in, rxrate_in, rxusrclk_in, rxusrclk2_in, txdiffctrl_in, 
  txinhibit_in, txoutclksel_in, txpcsreset_in, txpmareset_in, txpolarity_in, txpostcursor_in, 
  txprbsforceerr_in, txprbssel_in, txprecursor_in, txusrclk_in, txusrclk2_in, cplllock_out, 
  dmonitorout_out, drpdo_out, drprdy_out, eyescandataerror_out, gtpowergood_out, gtytxn_out, 
  gtytxp_out, rxbufstatus_out, rxcommadet_out, rxctrl1_out, rxctrl3_out, rxdlysresetdone_out, 
  rxoutclk_out, rxphaligndone_out, rxpmaresetdone_out, rxprbserr_out, rxprbslocked_out, 
  rxresetdone_out, rxsyncdone_out, txbufstatus_out, txdlysresetdone_out, txoutclk_out, 
  txphaligndone_out, txphinitdone_out, txpmaresetdone_out, txresetdone_out)
/* synthesis syn_black_box black_box_pad_pin="gtwiz_userclk_tx_active_in[0:0],gtwiz_userclk_rx_active_in[0:0],gtwiz_reset_clk_freerun_in[0:0],gtwiz_reset_all_in[0:0],gtwiz_reset_tx_pll_and_datapath_in[0:0],gtwiz_reset_tx_datapath_in[0:0],gtwiz_reset_rx_pll_and_datapath_in[0:0],gtwiz_reset_rx_datapath_in[0:0],gtwiz_reset_rx_cdr_stable_out[0:0],gtwiz_reset_tx_done_out[0:0],gtwiz_reset_rx_done_out[0:0],gtwiz_userdata_tx_in[63:0],gtwiz_userdata_rx_out[63:0],drpaddr_common_in[15:0],drpclk_common_in[0:0],drpdi_common_in[15:0],drpen_common_in[0:0],drpwe_common_in[0:0],gtrefclk00_in[0:0],drpdo_common_out[15:0],drprdy_common_out[0:0],qpll0lock_out[0:0],qpll0outclk_out[0:0],qpll0outrefclk_out[0:0],qpll1lock_out[0:0],drpaddr_in[9:0],drpclk_in[0:0],drpdi_in[15:0],drpen_in[0:0],drpwe_in[0:0],eyescanreset_in[0:0],eyescantrigger_in[0:0],gtyrxn_in[0:0],gtyrxp_in[0:0],loopback_in[2:0],pcsrsvdin_in[15:0],rxbufreset_in[0:0],rxcdrhold_in[0:0],rxdfelpmreset_in[0:0],rxlpmen_in[0:0],rxoutclksel_in[2:0],rxpcsreset_in[0:0],rxpmareset_in[0:0],rxpolarity_in[0:0],rxprbscntreset_in[0:0],rxprbssel_in[3:0],rxrate_in[2:0],rxusrclk_in[0:0],rxusrclk2_in[0:0],txdiffctrl_in[4:0],txinhibit_in[0:0],txoutclksel_in[2:0],txpcsreset_in[0:0],txpmareset_in[0:0],txpolarity_in[0:0],txpostcursor_in[4:0],txprbsforceerr_in[0:0],txprbssel_in[3:0],txprecursor_in[4:0],txusrclk_in[0:0],txusrclk2_in[0:0],cplllock_out[0:0],dmonitorout_out[15:0],drpdo_out[15:0],drprdy_out[0:0],eyescandataerror_out[0:0],gtpowergood_out[0:0],gtytxn_out[0:0],gtytxp_out[0:0],rxbufstatus_out[2:0],rxcommadet_out[0:0],rxctrl1_out[15:0],rxctrl3_out[7:0],rxdlysresetdone_out[0:0],rxoutclk_out[0:0],rxphaligndone_out[0:0],rxpmaresetdone_out[0:0],rxprbserr_out[0:0],rxprbslocked_out[0:0],rxresetdone_out[0:0],rxsyncdone_out[0:0],txbufstatus_out[1:0],txdlysresetdone_out[0:0],txoutclk_out[0:0],txphaligndone_out[0:0],txphinitdone_out[0:0],txpmaresetdone_out[0:0],txresetdone_out[0:0]" */;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [15:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtrefclk00_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll1lock_out;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxlpmen_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [2:0]rxrate_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txinhibit_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]cplllock_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxcommadet_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl3_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsyncdone_out;
  output [1:0]txbufstatus_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txresetdone_out;
endmodule
