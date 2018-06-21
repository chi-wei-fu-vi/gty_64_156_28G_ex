
`ifndef TCP_TIMESTAMP__SVH
`define TCP_TIMESTAMP__SVH



class tcp_timestamp extends uvm_sequence_item;
  rand bit [  7: 0]                      kind;
  rand bit [  7: 0]                    length;
  rand bit [ 31: 0]                 timestamp;
  rand bit [ 31: 0]                   ts_echo;



  bit                 timestamp_corrupt = 0;
  bit                   ts_echo_corrupt = 0;

  `uvm_object_utils_begin(tcp_timestamp)
    `uvm_field_int( kind , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( timestamp , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ts_echo , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint kind_C {
      ( kind == 8 );
  }
  constraint length_C {
      ( length == 10 );
  }
  constraint timestamp_C {
    if ( timestamp_corrupt ) {
      ( timestamp == 0 );
    }
    else {
      ( timestamp != 0 );
    }

  }
  constraint ts_echo_C {
    if ( ts_echo_corrupt ) {
      ( ts_echo == 0 );
    }
    else {
      ( ts_echo != 0 );
    }

  }

  function new(string name = "tcp_timestamp");
    super.new(name);
  endfunction : new


  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( kind, $bits( kind ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( timestamp, $bits( timestamp ) );
    packer.pack_field_int( ts_echo, $bits( ts_echo ) );
  endfunction : do_pack

  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    kind                        = packer.unpack_field_int( $bits( kind ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    timestamp                        = packer.unpack_field_int( $bits( timestamp ) );
    ts_echo                        = packer.unpack_field_int( $bits( ts_echo ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("kind","bit[7:0]",8,$sformatf("'h%h", kind));
    printer.print_generic("length","bit[7:0]",8,$sformatf("'h%h", length));
    printer.print_generic("timestamp","bit[31:0]",32,$sformatf("'h%h", timestamp));
    printer.print_generic("ts_echo","bit[31:0]",32,$sformatf("'h%h", ts_echo));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_timestamp _rhs;
    assert($cast(_rhs,rhs));
    kind                 = _rhs.kind;
    length               = _rhs.length;
    timestamp            = _rhs.timestamp;
    ts_echo              = _rhs.ts_echo;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_timestamp _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      kind                 == _rhs.kind &&
      length               == _rhs.length &&
      timestamp            == _rhs.timestamp &&
      ts_echo              == _rhs.ts_echo ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : tcp_timestamp
`endif // TCP_TIMESTAMP__SVH