
`ifndef TCP_PSEUDO_IPV6__SVH
`define TCP_PSEUDO_IPV6__SVH


class tcp_pseudo_ipv6 extends uvm_sequence_item;
  rand bit [127: 0]                  src_addr;
  rand bit [127: 0]                  dst_addr;
  rand bit [ 31: 0]                    length;
  rand bit [ 23: 0]                      zero;
  rand bit [  7: 0]                     proto;

  `uvm_object_utils_begin(tcp_pseudo_ipv6)
    `uvm_field_int( src_addr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dst_addr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( zero , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( proto , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end


  function new(string name = "tcp_pseudo_ipv6");
    super.new(name);
  endfunction : new


  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( src_addr[ 0 +: 64 ], $bits( src_addr[ 0 +: 64 ] ) );
    packer.pack_field_int( src_addr[ 64 +: 64 ], $bits( src_addr[ 64 +: 64 ] ) );
    packer.pack_field_int( dst_addr[ 0 +: 64 ], $bits( dst_addr[ 0 +: 64 ] ) );
    packer.pack_field_int( dst_addr[ 64 +: 64 ], $bits( dst_addr[ 64 +: 64 ] ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( zero, $bits( zero ) );
    packer.pack_field_int( proto, $bits( proto ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    src_addr[ 0 +: 64 ]                        = packer.unpack_field_int( $bits( src_addr[ 0 +: 64 ] ) );
    src_addr[ 64 +: 64 ]                        = packer.unpack_field_int( $bits( src_addr[ 64 +: 64 ] ) );
    dst_addr[ 0 +: 64 ]                        = packer.unpack_field_int( $bits( dst_addr[ 0 +: 64 ] ) );
    dst_addr[ 64 +: 64 ]                        = packer.unpack_field_int( $bits( dst_addr[ 64 +: 64 ] ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    zero                        = packer.unpack_field_int( $bits( zero ) );
    proto                        = packer.unpack_field_int( $bits( proto ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("src_addr","bit[127:0]",128,$sformatf("'h%h", src_addr));
    printer.print_generic("dst_addr","bit[127:0]",128,$sformatf("'h%h", dst_addr));
    printer.print_generic("length","bit[31:0]",32,$sformatf("'h%h", length));
    printer.print_generic("zero","bit[23:0]",24,$sformatf("'h%h", zero));
    printer.print_generic("proto","bit[7:0]",8,$sformatf("'h%h", proto));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_pseudo_ipv6 _rhs;
    assert($cast(_rhs,rhs));
    src_addr             = _rhs.src_addr;
    dst_addr             = _rhs.dst_addr;
    length               = _rhs.length;
    zero                 = _rhs.zero;
    proto                = _rhs.proto;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_pseudo_ipv6 _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      src_addr             == _rhs.src_addr &&
      dst_addr             == _rhs.dst_addr &&
      length               == _rhs.length &&
      zero                 == _rhs.zero &&
      proto                == _rhs.proto ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_pseudo_ipv6
`endif // TCP_PSEUDO_IPV6__SVH