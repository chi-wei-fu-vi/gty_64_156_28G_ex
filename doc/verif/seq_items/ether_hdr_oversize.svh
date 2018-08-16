
`ifndef ETHER_HDR_OVERSIZE__SVH
`define ETHER_HDR_OVERSIZE__SVH



class ether_hdr_oversize extends ether_hdr;
  `uvm_object_utils( ether_hdr_oversize )
  constraint C_payload_size {
    payload.size() inside {[1501:9000]};
  }
  function new(string name = "ether_hdr_oversize");
    super.new(name);
  endfunction : new

endclass : ether_hdr_oversize
`endif // ETHER_HDR_OVERSIZE__SVH