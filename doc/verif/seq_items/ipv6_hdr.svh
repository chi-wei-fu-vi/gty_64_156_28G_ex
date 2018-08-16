
`ifndef IPV6_HDR__SVH
`define IPV6_HDR__SVH



class ipv6_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [  3: 0]                   version;
  rand bit [  7: 0]                        tc;
  rand bit [ 19: 0]                 tc_flabel;
  rand bit [ 15: 0]                    length;
  rand bit [  7: 0]                   nheader;
  rand bit [  7: 0]                    hlimit;
  rand bit [127: 0]                     saddr;
  rand bit [127: 0]                     daddr;
  rand bit [  7: 0]                   options[];
  rand bit [  7: 0]                   payload[];



  bit                   version_corrupt = 0;
  bit                        tc_corrupt = 0;
  bit                 tc_flabel_corrupt = 0;
  bit                    length_corrupt = 0;
  bit                   nheader_corrupt = 0;
  bit                    hlimit_corrupt = 0;
  bit                     saddr_corrupt = 0;
  bit                     daddr_corrupt = 0;
  bit                   payload_corrupt = 0;
  bit                   tcp_checksum    = 0;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000010000;
  `uvm_object_utils_begin(ipv6_hdr)
    `uvm_field_int( version , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( tc , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( tc_flabel , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( nheader , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( hlimit , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( saddr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( daddr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( options , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint version_C {
    if ( version_corrupt ) {
      ( version != 6 );
    }
    else {
      ( version == 6 );
    }

  }
  constraint tc_C {
    if ( tc_corrupt ) {
      ( tc == 0 );
    }
    else {
      ( tc inside { [1 : 255 ] } );
    }

  }
  constraint tc_flabel_C {
    if ( tc_flabel_corrupt ) {
      ( tc_flabel == 0 );
    }
    else {
      ( tc_flabel != 0 );
    }

  }
  // The length is set to zero when a Hop-by-Hop extension header carries
  // a Jumbo Payload option
  constraint length_C {
    if ( length_corrupt ) {
      ( length == 0 );
    }
    else {
      ( length inside { [1 : 65535 ] } );
    }

  }
  constraint nheader_C {
    if ( nheader_corrupt ) {
      !( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }
    else {
      ( nheader inside { 0, 4, 6, 17, 43, 44, 51, 50, 59, 60, 135 } );
    }

  }
  constraint hlimit_C {
    if ( hlimit_corrupt ) {
      ( hlimit == 0 );
    }
    else {
      ( hlimit inside { [1 : 255 ] } );
    }

  }
  constraint saddr_C {
    if ( saddr_corrupt ) {
      ( saddr == 0 );
    }
    else {
      ( saddr != 0 );
    }

  }
  constraint daddr_C {
    if ( daddr_corrupt ) {
      ( daddr == 0 );
    }
    else {
      ( daddr != 0 );
    }

  }
  constraint options_C {
  }
  constraint payload_C {
  }

  function new(string name = "ipv6_hdr");
    super.new(name);
    uid = new("ipv6_hdr");
  endfunction : new

  function void post_randomize();
    byte unsigned frame[];
    byte unsigned bytestream[];
    tcp_pseudo_ipv6 pseudo_hdr;
    // calculate tcp checksum
    pseudo_hdr=new();
    pseudo_hdr.src_addr = saddr;
    pseudo_hdr.dst_addr = daddr;
    pseudo_hdr.length   = payload.size();
    pseudo_hdr.zero     = 0;
    pseudo_hdr.proto    = nheader;
    void'(pseudo_hdr.pack_bytes(bytestream));
    frame=new[bytestream.size()+payload.size()];
    foreach (bytestream[i]) frame[i]=bytestream[i];
    foreach (payload[i]) frame[i+bytestream.size()]=payload[i];
    tcp_checksum=cal_checksum(frame);
    `uvm_info("tcp checksum",$sformatf("%02x",tcp_checksum),UVM_HIGH);
    // fixme
    payload[16]=tcp_checksum >> 8;
    payload[17]=tcp_checksum & 8'hff;

  endfunction : post_randomize

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( { version,tc,tc_flabel }, $bits( { version,tc,tc_flabel } ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( nheader, $bits( nheader ) );
    packer.pack_field_int( hlimit, $bits( hlimit ) );
    packer.pack_field_int( saddr[ 0 +: 64 ], $bits( saddr[ 0 +: 64 ] ) );
    packer.pack_field_int( saddr[ 64 +: 64 ], $bits( saddr[ 64 +: 64 ] ) );
    packer.pack_field_int( daddr[ 0 +: 64 ], $bits( daddr[ 0 +: 64 ] ) );
    packer.pack_field_int( daddr[ 64 +: 64 ], $bits( daddr[ 64 +: 64 ] ) );
    foreach(options[i]) packer.pack_field_int( options[i], 8 );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    byte unsigned proto;
    byte unsigned hdr_len;
    super.do_unpack(packer);
    { version,tc,tc_flabel }      = packer.unpack_field_int( $bits( { version,tc,tc_flabel } ) );
    length                        = packer.unpack_field_int( $bits( length ) );
    nheader                       = packer.unpack_field_int( $bits( nheader ) );
    hlimit                        = packer.unpack_field_int( $bits( hlimit ) );
    saddr[ 0 +: 64 ]              = packer.unpack_field_int( $bits( saddr[ 0 +: 64 ] ) );
    saddr[ 64 +: 64 ]             = packer.unpack_field_int( $bits( saddr[ 64 +: 64 ] ) );
    daddr[ 0 +: 64 ]              = packer.unpack_field_int( $bits( daddr[ 0 +: 64 ] ) );
    daddr[ 64 +: 64 ]             = packer.unpack_field_int( $bits( daddr[ 64 +: 64 ] ) );
    case (nheader)
      0 :begin
       proto                        = packer.unpack_field_int( 8 );
       hdr_len                      = packer.unpack_field_int( 8 );
       options=new[hdr_len*8+8];
       options[0]=proto;
       options[1]=hdr_len;
       for (int i=2; i < (hdr_len*8+8); i++) options[i] = packer.unpack_field_int( 8 );
      end
      4 :begin
      end
      6 :begin
      end
      17 :begin
      end
      43 :begin
      end
      44 :begin
      end
      51 :begin
      end
      50 :begin
      end
      59 :begin
      end
      60 :begin
      end
      135:begin
      end
    endcase
    payload=new[(packer.get_packed_size()/8)-40];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("version","bit[3:0]",4,$sformatf("'h%h", version));
    printer.print_generic("tc","bit[7:0]",8,$sformatf("'h%h", tc));
    printer.print_generic("tc_flabel","bit[19:0]",20,$sformatf("'h%h", tc_flabel));
    printer.print_generic("length","bit[15:0]",16,$sformatf("'h%h", length));
    printer.print_generic("nheader","bit[7:0]",8,$sformatf("'h%h", nheader));
    printer.print_generic("hlimit","bit[7:0]",8,$sformatf("'h%h", hlimit));
    printer.print_generic("saddr","bit[127:0]",128,$sformatf("'h%h", saddr));
    printer.print_generic("daddr","bit[127:0]",128,$sformatf("'h%h", daddr));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ipv6_hdr _rhs;
    assert($cast(_rhs,rhs));
    version              = _rhs.version;
    tc                   = _rhs.tc;
    tc_flabel            = _rhs.tc_flabel;
    length               = _rhs.length;
    nheader              = _rhs.nheader;
    hlimit               = _rhs.hlimit;
    saddr                = _rhs.saddr;
    daddr                = _rhs.daddr;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ipv6_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      version              == _rhs.version &&
      tc                   == _rhs.tc &&
      tc_flabel            == _rhs.tc_flabel &&
      length               == _rhs.length &&
      nheader              == _rhs.nheader &&
      hlimit               == _rhs.hlimit &&
      saddr                == _rhs.saddr &&
      daddr                == _rhs.daddr &&
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

endclass : ipv6_hdr
`endif // IPV6_HDR__SVH