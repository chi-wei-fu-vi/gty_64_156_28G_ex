
`ifndef TCP_NOP__SVH
`define TCP_NOP__SVH


class tcp_nop extends uvm_sequence_item;
  rand bit [  7: 0]                      kind;

  `uvm_object_utils_begin(tcp_nop)
    `uvm_field_int( kind , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint kind_C {
      ( kind == 1 );
  }

  function new(string name = "tcp_nop");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( kind, $bits( kind ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    kind                        = packer.unpack_field_int( $bits( kind ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("kind","bit[7:0]",8,$sformatf("'h%h", kind));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_nop _rhs;
    assert($cast(_rhs,rhs));
    kind                 = _rhs.kind;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_nop _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      kind                 == _rhs.kind ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_nop
`endif // TCP_NOP__SVH