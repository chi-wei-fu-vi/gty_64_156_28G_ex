
`ifndef IPV6_EXT__SVH
`define IPV6_EXT__SVH


class ipv6_ext extends uvm_sequence_item;
  rand bit [  7: 0]                   nheader;
  rand bit [  7: 0]                       len;
  rand bit [  7: 0]                   options[];



  bit                   nheader_corrupt = 0;
  bit                       len_corrupt = 0;
  bit                   options_corrupt = 0;

  `uvm_object_utils_begin(ipv6_ext)
    `uvm_field_int( nheader , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( len , UVM_DEFAULT | UVM_NOPACK )
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
  constraint len_C {
    if ( len_corrupt ) {
      ( len == 0 );
    }
    else {
      ( len inside { [1 : 255 ] } );
    }

  }
  constraint options_C {
      ( options.size() == (len*8+6) );
      solve len before options;
  }

  function new(string name = "ipv6_ext");
    super.new(name);
  endfunction : new

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( nheader, $bits( nheader ) );
    packer.pack_field_int( len, $bits( len ) );
    foreach(options[i]) packer.pack_field_int( options[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    nheader                        = packer.unpack_field_int( $bits( nheader ) );
    len                            = packer.unpack_field_int( $bits( len ) );
    options=new[(packer.get_packed_size()/8)-2];
    foreach (options[i]) options[i]= packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("nheader","bit[7:0]",8,$sformatf("'h%h", nheader));
    printer.print_generic("len","bit[7:0]",8,$sformatf("'h%h", len));
    printer.print_array_header("options",options.size(),$sformatf("bit[7:0][%0d]",options.size()));
    foreach(options[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",options.size(),$sformatf("'h%h", options[i]));
    printer.print_array_footer(options.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ipv6_ext _rhs;
    assert($cast(_rhs,rhs));
    nheader              = _rhs.nheader;
    len                  = _rhs.len;
    options              = _rhs.options;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ipv6_ext _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      nheader              == _rhs.nheader &&
      len                  == _rhs.len &&
      options              == _rhs.options;
    if (!do_compare)
      return 0;
/*
    if (aa.size() != _rhs.aa.size())
      return 0;
    foreach (aa[i])
      if (!(_rhs.aa.exists(i) && aa[i] == _rhs.aa[i]))
        return 0;
*/

  endfunction : do_compare

endclass : ipv6_ext
`endif // IPV6_EXT__SVH