
`ifndef IPV6_EXT_FRAG__SVH
`define IPV6_EXT_FRAG__SVH


// Extension Header                                Type    Description
// Hop-by-Hop Options                              0       Options that need to be examined by all devices on the path.
// Destination Options (before routing header)     60      Options that need to be examined only by the destination of the packet.
// Routing                                         43      Methods to specify the route for a datagram (used with Mobile IPv6).
// Fragment                                        44      Contains parameters for fragmentation of datagrams.
// Authentication Header (AH)                      51      Contains information used to verify the authenticity of most parts of the packet.
// Encapsulating Security Payload (ESP)            50      Carries encrypted data for secure communication.
// Destination Options (before upper-layer header) 60      Options that need to be examined only by the destination of the packet.
// Mobility (currently without upper-layer header) 135     Parameters used with Mobile IPv6.
// No Next Header                                  59     ader field indicates that there is
// no next header whatsoever following this one,

class ipv6_ext_frag extends uvm_sequence_item;
  rand bit [  7: 0]                   nheader;
  rand bit [  7: 0]                reserved_a;
  rand bit [ 12: 0]                    offset;
  rand bit [  1: 0]                reserved_b;
  rand bit                                  m;
  rand bit [ 31: 0]                        id;



  bit                   nheader_corrupt = 0;
  bit                reserved_a_corrupt = 0;
  bit                    offset_corrupt = 0;
  bit                reserved_b_corrupt = 0;
  bit                         m_corrupt = 0;
  bit                        id_corrupt = 0;

  `uvm_object_utils_begin(ipv6_ext_frag)
    `uvm_field_int( nheader , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( reserved_a , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( offset , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( reserved_b , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( m , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( id , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint nheader_C {
    if ( nheader_corrupt ) {
      !( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }
    else {
      ( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }

  }
  constraint reserved_a_C {
    if ( reserved_a_corrupt ) {
      ( reserved_a != 0 );
    }
    else {
      ( reserved_a == 0 );
    }

  }
  constraint offset_C {
    if ( offset_corrupt ) {
      ( offset == 0 );
    }
    else {
      ( offset inside { [1 : 8191 ] } );
    }

  }
  constraint reserved_b_C {
    if ( reserved_b_corrupt ) {
      ( reserved_b != 0 );
    }
    else {
      ( reserved_b == 0 );
    }

  }
  constraint m_C {
  }
  constraint id_C {
    if ( id_corrupt ) {
      ( id == 0 );
    }
    else {
      ( id != 0 );
    }

  }

  function new(string name = "ipv6_ext_frag");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( nheader, $bits( nheader ) );
    packer.pack_field_int( reserved_a, $bits( reserved_a ) );
    packer.pack_field_int( { offset,reserved_b,m }, $bits( { offset,reserved_b,m } ) );
    packer.pack_field_int( id, $bits( id ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    nheader                   = packer.unpack_field_int( $bits( nheader ) );
    reserved_a                = packer.unpack_field_int( $bits( reserved_a ) );
    { offset,reserved_b,m }   = packer.unpack_field_int( $bits( { offset,reserved_b,m } ) );
    id                        = packer.unpack_field_int( $bits( id ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("nheader","bit[7:0]",8,$sformatf("'h%h", nheader));
    printer.print_generic("reserved_a","bit[7:0]",8,$sformatf("'h%h", reserved_a));
    printer.print_generic("offset","bit[12:0]",13,$sformatf("'h%h", offset));
    printer.print_generic("reserved_b","bit[1:0]",2,$sformatf("'h%h", reserved_b));
    printer.print_generic("m","bit[0:0]",1,$sformatf("'h%h", m));
    printer.print_generic("id","bit[31:0]",32,$sformatf("'h%h", id));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ipv6_ext_frag _rhs;
    assert($cast(_rhs,rhs));
    nheader              = _rhs.nheader;
    reserved_a           = _rhs.reserved_a;
    offset               = _rhs.offset;
    reserved_b           = _rhs.reserved_b;
    m                    = _rhs.m;
    id                   = _rhs.id;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ipv6_ext_frag _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      nheader              == _rhs.nheader &&
      reserved_a           == _rhs.reserved_a &&
      offset               == _rhs.offset &&
      reserved_b           == _rhs.reserved_b &&
      m                    == _rhs.m &&
      id                   == _rhs.id ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : ipv6_ext_frag
`endif // IPV6_EXT_FRAG__SVH