
`ifndef UDP_HDR__SVH
`define UDP_HDR__SVH




class udp_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 15: 0]                    source;
  rand bit [ 15: 0]                      dest;
  rand bit [ 15: 0]                    length;
  rand bit [ 15: 0]                     check;
  rand bit [  7: 0]                   payload[];



  bit                    source_corrupt = 0;
  bit                      dest_corrupt = 0;
  bit                    length_corrupt = 0;
  bit                     check_corrupt = 0;
  bit                   payload_corrupt = 0;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000100000;
  `uvm_object_utils_begin(udp_hdr)
    `uvm_field_int( source , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dest , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( check , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint source_C {
    if ( source_corrupt ) {
      ( source == 0 );
    }
    else {
      ( source inside { [1 : 32767 ] } );
    }

  }
  constraint dest_C {
    if ( dest_corrupt ) {
      ( dest == 0 );
    }
    else {
      ( dest inside { [1 : 32767 ] } );
    }

  }
  constraint length_C {
    if ( length_corrupt ) {
      ( length < 8 );
    }
    else {
      ( length inside { [8 : 32767 ] } );
    }

  }
  constraint check_C {
    if ( check_corrupt ) {
      ( check inside { [1 : 32767 ] } );
    }
    else {
      ( check == 0 );
    }

  }
  constraint payload_C {
      //( payload.size() == 1 );
  }

  function new(string name = "udp_hdr");
    super.new(name);
    uid = new("udp_hdr");
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( source, $bits( source ) );
    packer.pack_field_int( dest, $bits( dest ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( check, $bits( check ) );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    source                        = packer.unpack_field_int( $bits( source ) );
    dest                        = packer.unpack_field_int( $bits( dest ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    check                        = packer.unpack_field_int( $bits( check ) );
    payload=new[(packer.get_packed_size()/8)-0];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("source","bit[15:0]",16,$sformatf("'h%h", source));
    printer.print_generic("dest","bit[15:0]",16,$sformatf("'h%h", dest));
    printer.print_generic("length","bit[15:0]",16,$sformatf("'h%h", length));
    printer.print_generic("check","bit[15:0]",16,$sformatf("'h%h", check));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    udp_hdr _rhs;
    assert($cast(_rhs,rhs));
    source               = _rhs.source;
    dest                 = _rhs.dest;
    length               = _rhs.length;
    check                = _rhs.check;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    udp_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      source               == _rhs.source &&
      dest                 == _rhs.dest &&
      length               == _rhs.length &&
      check                == _rhs.check &&
      payload              == _rhs.payload ;
    if (!do_compare)
      return 0;
/*
    // temporary limitation: assoc arrays must be compared "item by item"

    if (aa.size() != _rhs.aa.size())
      return 0;
    foreach (aa[i])
      if (!(_rhs.aa.exists(i) && aa[i] == _rhs.aa[i]))
        return 0;

    // compare sub-object deeply

    if (obj == null) begin
      if (_rhs.obj != null)
        return 0;
    end
    else
      do_compare = obj.compare(_rhs.obj,comparer);

      comparer.result = 1-do_compare;

*/
  endfunction : do_compare

endclass : udp_hdr
`endif // UDP_HDR__SVH