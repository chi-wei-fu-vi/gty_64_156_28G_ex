
`ifndef L2_SMALL_IPG__SVH
`define L2_SMALL_IPG__SVH


class ether_hdr_small_ipg extends l2_item;
  `uvm_object_utils( ether_hdr_small_ipg )
  constraint C_ipg {
    ipg inside {[1:10]};
  }
  function new(string name = "ether_hdr_small_ipg");
    super.new(name);
  endfunction : new

endclass : ether_hdr_small_ipg
`endif // L2_SMALL_IPG__SVH