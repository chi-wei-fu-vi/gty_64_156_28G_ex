
`ifndef TCP_PSEUDO__SVH
`define TCP_PSEUDO__SVH


class tcp_pseudo extends uvm_sequence_item;
  rand bit [ 31: 0]                  src_addr;
  rand bit [ 31: 0]                  dst_addr;
  rand bit [  7: 0]                      zero;
  rand bit [  7: 0]                     proto;
  rand bit [ 15: 0]                    length;




  `uvm_object_utils_begin(tcp_pseudo)
    `uvm_field_int( src_addr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dst_addr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( zero , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( proto , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end


  function new(string name = "tcp_pseudo");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( src_addr, $bits( src_addr ) );
    packer.pack_field_int( dst_addr, $bits( dst_addr ) );
    packer.pack_field_int( zero, $bits( zero ) );
    packer.pack_field_int( proto, $bits( proto ) );
    packer.pack_field_int( length, $bits( length ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    src_addr                        = packer.unpack_field_int( $bits( src_addr ) );
    dst_addr                        = packer.unpack_field_int( $bits( dst_addr ) );
    zero                        = packer.unpack_field_int( $bits( zero ) );
    proto                        = packer.unpack_field_int( $bits( proto ) );
    length                        = packer.unpack_field_int( $bits( length ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("src_addr","bit[31:0]",32,$sformatf("'h%h", src_addr));
    printer.print_generic("dst_addr","bit[31:0]",32,$sformatf("'h%h", dst_addr));
    printer.print_generic("zero","bit[7:0]",8,$sformatf("'h%h", zero));
    printer.print_generic("proto","bit[7:0]",8,$sformatf("'h%h", proto));
    printer.print_generic("length","bit[15:0]",16,$sformatf("'h%h", length));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_pseudo _rhs;
    assert($cast(_rhs,rhs));
    src_addr             = _rhs.src_addr;
    dst_addr             = _rhs.dst_addr;
    zero                 = _rhs.zero;
    proto                = _rhs.proto;
    length               = _rhs.length;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_pseudo _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      src_addr             == _rhs.src_addr &&
      dst_addr             == _rhs.dst_addr &&
      zero                 == _rhs.zero &&
      proto                == _rhs.proto &&
      length               == _rhs.length ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_pseudo
`endif // TCP_PSEUDO__SVH