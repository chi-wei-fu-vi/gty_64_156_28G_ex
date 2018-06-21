
`ifndef IPV6_EXT_ROUTING__SVH
`define IPV6_EXT_ROUTING__SVH


class ipv6_ext_routing extends uvm_sequence_item;
  rand bit [  7: 0]                   nheader;
  rand bit [  7: 0]                   hdr_len;
  rand bit [  7: 0]                route_type;
  rand bit [  7: 0]                  seg_left;
  rand bit [ 31: 0]        type_specific_data;
  rand bit [  7: 0]                   options[];



  bit                   nheader_corrupt = 0;
  bit                   hdr_len_corrupt = 0;
  bit                route_type_corrupt = 0;
  bit                  seg_left_corrupt = 0;
  bit        type_specific_data_corrupt = 0;
  bit                   options_corrupt = 0;

  `uvm_object_utils_begin(ipv6_ext_routing)
    `uvm_field_int( nheader , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( hdr_len , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( route_type , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( seg_left , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( type_specific_data , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( options , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint nheader_C {
    if ( nheader_corrupt ) {
      !( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }
    else {
      ( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }

  }
  constraint hdr_len_C {
    if ( hdr_len_corrupt ) {
      ( hdr_len == 0 );
    }
    else {
      ( hdr_len inside { [1 : 255 ] } );
    }

  }
// Due to the fact that with Routing Header type 0 a simple but effective denial-of-service attack could be launched, this header is deprecated
// and host and routers are required to ignore these headers.
// Routing Header type 1 is used for the Nimrod[12] project funded by DARPA.
// Routing Header type 2 is a limited version of type 0 and is used for Mobile IPv6, where it can hold the Home Address of the Mobile Node.
  constraint route_type_C {
    if ( route_type_corrupt ) {
      !( route_type inside { [0 : 2] } );
    }
    else {
      ( route_type inside { [0 : 2] } );
    }

  }
  constraint seg_left_C {
    if ( seg_left_corrupt ) {
      ( seg_left == 0 );
    }
    else {
      ( seg_left inside { [1 : 255 ] } );
    }

  }
  constraint type_specific_data_C {
    if ( type_specific_data_corrupt ) {
      ( type_specific_data == 0 );
    }
    else {
      ( type_specific_data != 0 );
    }

  }
  constraint options_C {
      ( options.size() % 8 ) == 0;
      ( options.size() < 16 );
  }

  function new(string name = "ipv6_ext_routing");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( nheader, $bits( nheader ) );
    packer.pack_field_int( hdr_len, $bits( hdr_len ) );
    packer.pack_field_int( route_type, $bits( route_type ) );
    packer.pack_field_int( seg_left, $bits( seg_left ) );
    packer.pack_field_int( type_specific_data, $bits( type_specific_data ) );
    foreach(options[i]) packer.pack_field_int( options[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    nheader                        = packer.unpack_field_int( $bits( nheader ) );
    hdr_len                        = packer.unpack_field_int( $bits( hdr_len ) );
    route_type                     = packer.unpack_field_int( $bits( route_type ) );
    seg_left                       = packer.unpack_field_int( $bits( seg_left ) );
    type_specific_data             = packer.unpack_field_int( $bits( type_specific_data ) );
    options=new[(packer.get_packed_size()/8)-8];
    foreach (options[i]) options[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("nheader","bit[7:0]",8,$sformatf("'h%h", nheader));
    printer.print_generic("hdr_len","bit[7:0]",8,$sformatf("'h%h", hdr_len));
    printer.print_generic("route_type","bit[7:0]",8,$sformatf("'h%h", route_type));
    printer.print_generic("seg_left","bit[7:0]",8,$sformatf("'h%h", seg_left));
    printer.print_generic("type_specific_data","bit[31:0]",32,$sformatf("'h%h", type_specific_data));
    printer.print_array_header("options",options.size(),$sformatf("bit[7:0][%0d]",options.size()));
    foreach(options[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",options.size(),$sformatf("'h%h", options[i]));
    printer.print_array_footer(options.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ipv6_ext_routing _rhs;
    assert($cast(_rhs,rhs));
    nheader              = _rhs.nheader;
    hdr_len              = _rhs.hdr_len;
    route_type           = _rhs.route_type;
    seg_left             = _rhs.seg_left;
    type_specific_data   = _rhs.type_specific_data;
    options              = _rhs.options;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ipv6_ext_routing _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      nheader              == _rhs.nheader &&
      hdr_len              == _rhs.hdr_len &&
      route_type           == _rhs.route_type &&
      seg_left             == _rhs.seg_left &&
      type_specific_data   == _rhs.type_specific_data &&
      options              == _rhs.options;
    if (!do_compare)
      return 0;
    // temporary limitation: assoc arrays must be compared "item by item"

/*
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

endclass : ipv6_ext_routing
`endif // IPV6_EXT_ROUTING__SVH