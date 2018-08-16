
`ifndef ETHER_HDR_UNDERSIZE__SVH
`define ETHER_HDR_UNDERSIZE__SVH


class ether_hdr_undersize extends ether_hdr;
  `uvm_object_utils( ether_hdr_undersize )
  constraint C_payload_size {
    payload.size() inside {[1:45]};
  }
  function new(string name = "ether_hdr_undersize");
    super.new(name);
  endfunction : new

endclass : ether_hdr_undersize
`endif // ETHER_HDR_UNDERSIZE__SVH