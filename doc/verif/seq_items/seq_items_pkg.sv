package seq_items_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  import common_pkg::*;
  import common_env_pkg::*;
  typedef class udp_hdr;
  typedef class ip_hdr;
  typedef class ether_hdr_undersize;
  typedef class ipv6_hdr;
  typedef class smb2_flags;
  typedef class ether_hdr_oversize;
  typedef class tcp_pseudo_ipv6;
  typedef class xgmii_item;
  typedef class tcp_pseudo;
  typedef class tcp_timestamp;
  typedef class smb2_response_hdr;
  typedef class tcp_scale;
  typedef class ether_hdr;
  typedef class tcp_max_seg_size;
  typedef class ether_hdr_small_large;
  typedef class tcp_nop;
  typedef class ipv6_ext_frag;
  typedef class ipv6_ext;
  typedef class tcp_hdr;
  typedef class tcp_sack;
  typedef class ether_hdr_small_ipg;
  typedef class smb2_request_hdr;
  typedef class ipv6_ext_routing;
  typedef class netbios_hdr;
  typedef class pcap_hdr;
  typedef class pcaprec_hdr;
  `include "pcap_hdr.svh"
  `include "pcaprec_hdr.svh"
  `include "udp_hdr.svh"
  `include "ip_hdr.svh"
  `include "ether_hdr_undersize.svh"
  `include "ipv6_hdr.svh"
  `include "smb2_flags.svh"
  `include "ether_hdr_oversize.svh"
  `include "tcp_pseudo_ipv6.svh"
  `include "xgmii_item.svh"
  `include "tcp_pseudo.svh"
  `include "tcp_timestamp.svh"
  `include "smb2_response_hdr.svh"
  `include "tcp_scale.svh"
  `include "ether_hdr.svh"
  `include "tcp_max_seg_size.svh"
  `include "ether_hdr_small_large.svh"
  `include "tcp_nop.svh"
  `include "ipv6_ext_frag.svh"
  `include "ipv6_ext.svh"
  `include "tcp_hdr.svh"
  `include "tcp_sack.svh"
  `include "ether_hdr_small_ipg.svh"
  `include "smb2_request_hdr.svh"
  `include "ipv6_ext_routing.svh"
  `include "netbios_hdr.svh"
endpackage : seq_items_pkg
