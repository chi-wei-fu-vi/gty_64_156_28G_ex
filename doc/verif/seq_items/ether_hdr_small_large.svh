
`ifndef ETHER_HDR_SMALL_LARGE__SVH
`define ETHER_HDR_SMALL_LARGE__SVH



class ether_hdr_small_large extends ether_hdr;
  `uvm_object_utils( ether_hdr_small_large )
  constraint C_payload_size {
    payload.size() dist {[46:50]:/50,[1456:1500]:/50};
  }
  function new(string name = "ether_hdr_small_large");
    super.new(name);
  endfunction : new

endclass : ether_hdr_small_large
`endif // ETHER_HDR_SMALL_LARGE__SVH