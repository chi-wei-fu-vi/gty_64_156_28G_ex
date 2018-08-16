
`ifndef TCP_SCALE__SVH
`define TCP_SCALE__SVH


class tcp_scale extends uvm_sequence_item;
  rand bit [  7: 0]                      kind;
  rand bit [  7: 0]                    length;
  rand bit [ 15: 0]                     scale;

  bit                       scale_corrupt = 0;
  `uvm_object_utils_begin(tcp_scale)
    `uvm_field_int( kind , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( scale , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint kind_C {
      ( kind == 3 );
  }
  constraint length_C {
      ( length == 3 );
  }
  constraint scale_C {
    if ( scale_corrupt ) {
      ( scale == 0 );
    }
    else {
      ( scale inside { [1 : 32767 ] } );
    }

  }

  function new(string name = "tcp_scale");
    super.new(name);
  endfunction : new


  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( kind, $bits( kind ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( scale, $bits( scale ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    kind                        = packer.unpack_field_int( $bits( kind ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    scale                        = packer.unpack_field_int( $bits( scale ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("kind","bit[7:0]",8,$sformatf("'h%h", kind));
    printer.print_generic("length","bit[7:0]",8,$sformatf("'h%h", length));
    printer.print_generic("scale","bit[15:0]",16,$sformatf("'h%h", scale));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_scale _rhs;
    assert($cast(_rhs,rhs));
    kind                 = _rhs.kind;
    length               = _rhs.length;
    scale                = _rhs.scale;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_scale _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      kind                 == _rhs.kind &&
      length               == _rhs.length &&
      scale                == _rhs.scale ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_scale
`endif // TCP_SCALE__SVH