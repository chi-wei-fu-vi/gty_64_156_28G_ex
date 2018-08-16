
`ifndef TCP_SACK__SVH
`define TCP_SACK__SVH



class tcp_sack extends uvm_sequence_item;
  rand bit [  7: 0]                      kind;
  rand bit [  7: 0]                    length;

  `uvm_object_utils_begin(tcp_sack)
    `uvm_field_int( kind , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint kind_C {
      ( kind == 4 );
  }

  constraint length_C {
      ( length == 2 );
  }


  function new(string name = "tcp_sack");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( kind, $bits( kind ) );
    packer.pack_field_int( length, $bits( length ) );
  endfunction : do_pack

  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    kind                        = packer.unpack_field_int( $bits( kind ) );
    length                      = packer.unpack_field_int( $bits( length ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("kind","bit[7:0]",8,$sformatf("'h%h", kind));
    printer.print_generic("length","bit[7:0]",8,$sformatf("'h%h", length));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_sack _rhs;
    assert($cast(_rhs,rhs));
    kind                 = _rhs.kind;
    length               = _rhs.length;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_sack _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      kind                 == _rhs.kind &&
      length               == _rhs.length ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_sack
`endif // TCP_SACK__SVH