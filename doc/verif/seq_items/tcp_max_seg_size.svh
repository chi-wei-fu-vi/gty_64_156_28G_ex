
`ifndef TCP_MAX_SEG_SIZE__SVH
`define TCP_MAX_SEG_SIZE__SVH


class tcp_max_seg_size extends uvm_sequence_item;
  rand bit [  7: 0]                      kind;
  rand bit [  7: 0]                    length;
  rand bit [ 15: 0]                  seg_size;


  bit                    seg_size_corrupt = 0;
  `uvm_object_utils_begin(tcp_max_seg_size)
    `uvm_field_int( kind , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( seg_size , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint kind_C {
      ( kind == 2 );
  }
  constraint length_C {
      ( length == 4 );
  }
  constraint seg_size_C {
    if ( seg_size_corrupt ) {
      ( seg_size == 0 );
    }
    else {
      //( seg_size inside { [1 : 1448] } );
      ( seg_size inside { [1448 : 32767 ] } );
    }

  }

  function new(string name = "tcp_max_seg_size");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( kind, $bits( kind ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( seg_size, $bits( seg_size ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    kind                        = packer.unpack_field_int( $bits( kind ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    seg_size                        = packer.unpack_field_int( $bits( seg_size ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("kind","bit[7:0]",8,$sformatf("'h%h", kind));
    printer.print_generic("length","bit[7:0]",8,$sformatf("'h%h", length));
    printer.print_generic("seg_size","bit[15:0]",16,$sformatf("'h%h", seg_size));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_max_seg_size _rhs;
    assert($cast(_rhs,rhs));
    kind                 = _rhs.kind;
    length               = _rhs.length;
    seg_size             = _rhs.seg_size;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_max_seg_size _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      kind                 == _rhs.kind &&
      length               == _rhs.length &&
      seg_size             == _rhs.seg_size ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_max_seg_size
`endif // TCP_MAX_SEG_SIZE__SVH