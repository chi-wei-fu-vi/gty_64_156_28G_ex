
`ifndef NETBIOS_HDR__SVH
`define NETBIOS_HDR__SVH



class netbios_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [  7: 0]                     mtype;
  rand bit [ 23: 0]                    length;
  rand bit [  7: 0]                   payload[];



  bit                     mtype_corrupt = 0;
  bit                    length_corrupt = 0;
  bit                   payload_corrupt = 0;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000000100;
  `uvm_object_utils_begin(netbios_hdr)
    `uvm_field_int( mtype , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint mtype_C {
    if ( mtype_corrupt ) {
      ( mtype != 0 );
    }
    else {
      ( mtype == 0 );
    }

  }
  constraint length_C {
    if ( length_corrupt ) {
      ( length < 68 );
    }
    else {
      ( length >= 68 );
    }

  }
  constraint payload_C {
    ( payload.size() inside { [68 : 8192] } );
    //( payload.size() inside { [12 : 16] } );
  }

  function new(string name = "netbios_hdr");
    super.new(name);
    uid = new("netbios_hdr");
  endfunction : new


  function void post_randomize();
  endfunction : post_randomize


  virtual function void do_pack(uvm_packer packer);
    bit [23:0] bit24;
    super.do_pack(packer);
    packer.pack_field_int( mtype, $bits( mtype ) );
    packer.pack_field_int( length, $bits( length ) );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    mtype                        = packer.unpack_field_int( $bits( mtype ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    payload=new[(packer.get_packed_size()/8)-1];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("mtype","bit[7:0]",8,$sformatf("'h%h", mtype));
    printer.print_generic("length","bit[23:0]",24,$sformatf("'h%h", length));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    netbios_hdr _rhs;
    assert($cast(_rhs,rhs));
    mtype                = _rhs.mtype;
    length               = _rhs.length;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    netbios_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      mtype                == _rhs.mtype &&
      length               == _rhs.length &&
      payload              == _rhs.payload ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : netbios_hdr
`endif // NETBIOS_HDR__SVH