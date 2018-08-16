
`ifndef IP_HDR__SVH
`define IP_HDR__SVH



class ip_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [  3: 0]                   version;
  rand bit [  3: 0]                       ihl;
  rand bit [  5: 0]                      dscp;
  rand bit [  1: 0]                       ecn;
  rand bit [ 15: 0]                    length;
  rand bit [ 15: 0]                        id;
  rand bit                               zero;
  rand bit                                 df;
  rand bit                                 mf;
  rand bit [ 12: 0]                    offset;
  rand bit [  7: 0]                       ttl;
  rand bit [  7: 0]                     proto;
  rand bit [ 15: 0]                  checksum;
  rand bit [ 31: 0]                     saddr;
  rand bit [ 31: 0]                     daddr;
  rand bit [  7: 0]                   options[];
  rand bit [  7: 0]                   payload[];



  bit                   version_corrupt = 0;
  bit                       ihl_corrupt = 0;
  bit                      dscp_corrupt = 0;
  bit                       ecn_corrupt = 0;
  bit                    length_corrupt = 0;
  bit                        id_corrupt = 0;
  bit                      zero_corrupt = 0;
  bit                        df_corrupt = 0;
  bit                        mf_corrupt = 0;
  bit                    offset_corrupt = 0;
  bit                       ttl_corrupt = 0;
  bit                     proto_corrupt = 0;
  bit                  checksum_corrupt = 0;
  bit                     saddr_corrupt = 0;
  bit                     daddr_corrupt = 0;
  bit                   options_corrupt = 0;
  bit                   payload_corrupt = 0;
  bit [ 15: 0]                 tcp_checksum;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000000001;
  `uvm_object_utils_begin(ip_hdr)
    `uvm_field_int( version , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ihl , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dscp , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ecn , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( id , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( zero , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( df , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( mf , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( offset , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ttl , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( proto , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( checksum , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( saddr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( daddr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( options , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint version_C {
    if ( version_corrupt ) {
      ( version != 4 );
    }
    else {
      ( version == 4 );
    }

  }
  constraint ihl_C {
    if ( ihl_corrupt ) {
      ( ihl < 5 );
    }
    else {
      ( ihl inside { [5 : 15 ] } );
    }

  }
  constraint dscp_C {
    if ( dscp_corrupt ) {
      ( dscp inside { [1 : 31] } );
    }
    else {
      ( dscp == 0 );
    }

  }
  constraint ecn_C {
    if ( ecn_corrupt ) {
      ( ecn inside { [1 : 3] } );
    }
    else {
      ( ecn == 0 );
    }

  }
  constraint length_C {
    if ( length_corrupt ) {
      ( length < 20 );
    }
    else {
      ( length >= 20 );
    }

  }
  constraint id_C {
    if ( id_corrupt ) {
      ( id == 0 );
    }
    else {
      ( id inside { [1 : 32767 ] } );
    }

  }
  constraint zero_C {
    if ( zero_corrupt ) {
      ( zero != 0 );
    }
    else {
      ( zero == 0 );
    }

  }
  constraint df_C {
    if ( df_corrupt ) {
      ( df == 0 );
    }
    else {
      ( df == 1 );
    }

  }
  constraint mf_C {
    if ( mf_corrupt ) {
      ( mf == 1 );
    }
    else {
      ( mf == 0 );
    }

  }
  constraint offset_C {
    if ( offset_corrupt ) {
      ( offset != 0 );
    }
    else {
      ( df == 1 && mf == 0 ) -> ( offset == 0 );
    }

  }
  constraint ttl_C {
    if ( ttl_corrupt ) {
      ( ttl == 0 );
    }
    else {
      ( ttl inside { [1 : 127 ] } );
    }

  }
  constraint proto_C {
    if ( proto_corrupt ) {
      !( proto inside { 4, 6, 17 } );
    }
    else {
      ( proto inside { 4, 6, 17 } );
    }

  }
  constraint checksum_C {
    if ( checksum_corrupt ) {
      ( checksum inside { [1 : 32767] } );
    }
    else {
      ( checksum == 0 );
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
      ( ihl < 5 )                 -> options.size() == 0;
      ( ihl inside { [5 : 15] } ) -> options.size() == ihl*4 - 20;
  }
  constraint payload_C {
      //( payload.size() > 1 );
  }

  function new(string name = "ip_hdr");
    super.new(name);
    uid = new("ip_hdr");
  endfunction : new


  function void post_randomize();
    byte unsigned frame[];
    byte unsigned bytestream[];
    byte unsigned bytestream_1[];
    tcp_pseudo    pseudo_hdr;
    // calculate ip checksum
    checksum=0;
    void'( pack_bytes(bytestream));
    frame=new[bytestream.size()-payload.size()];
    foreach (frame[i]) frame[i]=bytestream[i];
    checksum=cal_checksum(frame);
    `uvm_info("ip checksum",$sformatf("%02x",checksum),UVM_HIGH);
    // calculate tcp checksum
    pseudo_hdr=new();
    pseudo_hdr.src_addr = saddr;
    pseudo_hdr.dst_addr = daddr;
    pseudo_hdr.zero     = 0;
    pseudo_hdr.proto    = proto;
    pseudo_hdr.length   = payload.size();
    void'(pseudo_hdr.pack_bytes(bytestream_1));
    frame=new[bytestream_1.size()+payload.size()];
    foreach (bytestream_1[i]) frame[i]=bytestream_1[i];
    foreach (payload[i]) frame[i+bytestream_1.size()]=payload[i];
    tcp_checksum=cal_checksum(frame);
    `uvm_info("tcp checksum",$sformatf("%02x",tcp_checksum),UVM_HIGH);
    payload[16]=tcp_checksum >> 8;
    payload[17]=tcp_checksum & 8'hff;

  endfunction : post_randomize



  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( { version,ihl }, $bits( { version,ihl } ) );
    packer.pack_field_int( { dscp,ecn }, $bits( { dscp,ecn } ) );
    packer.pack_field_int( length, $bits( length ) );
    packer.pack_field_int( id, $bits( id ) );
    packer.pack_field_int( { zero,df,mf,offset }, $bits( { zero,df,mf,offset } ) );
    packer.pack_field_int( ttl, $bits( ttl ) );
    packer.pack_field_int( proto, $bits( proto ) );
    packer.pack_field_int( checksum, $bits( checksum ) );
    packer.pack_field_int( saddr, $bits( saddr ) );
    packer.pack_field_int( daddr, $bits( daddr ) );
    if (ihl > 5) foreach(options[i]) packer.pack_field_int( options[i], 8 );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    { version,ihl }           = packer.unpack_field_int( $bits( { version,ihl } ) );
    { dscp,ecn }              = packer.unpack_field_int( $bits( { dscp,ecn } ) );
    length                    = packer.unpack_field_int( $bits( length ) );
    id                        = packer.unpack_field_int( $bits( id ) );
    { zero,df,mf,offset }     = packer.unpack_field_int( $bits( { zero,df,mf,offset } ) );
    ttl                       = packer.unpack_field_int( $bits( ttl ) );
    proto                     = packer.unpack_field_int( $bits( proto ) );
    checksum                  = packer.unpack_field_int( $bits( checksum ) );
    saddr                     = packer.unpack_field_int( $bits( saddr ) );
    daddr                     = packer.unpack_field_int( $bits( daddr ) );
    if (ihl >5) begin
      options=new[(ihl-5)*4];
      foreach (options[i]) options[i]  = packer.unpack_field_int( 8 );
    end
    payload=new[(packer.get_packed_size()/8)];
    foreach (payload[i]) payload[i]    = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("version","bit[3:0]",4,$sformatf("'h%h", version));
    printer.print_generic("ihl","bit[3:0]",4,$sformatf("'h%h", ihl));
    printer.print_generic("dscp","bit[5:0]",6,$sformatf("'h%h", dscp));
    printer.print_generic("ecn","bit[1:0]",2,$sformatf("'h%h", ecn));
    printer.print_generic("length","bit[15:0]",16,$sformatf("'h%h", length));
    printer.print_generic("id","bit[15:0]",16,$sformatf("'h%h", id));
    printer.print_generic("zero","bit[0:0]",1,$sformatf("'h%h", zero));
    printer.print_generic("df","bit[0:0]",1,$sformatf("'h%h", df));
    printer.print_generic("mf","bit[0:0]",1,$sformatf("'h%h", mf));
    printer.print_generic("offset","bit[12:0]",13,$sformatf("'h%h", offset));
    printer.print_generic("ttl","bit[7:0]",8,$sformatf("'h%h", ttl));
    printer.print_generic("proto","bit[7:0]",8,$sformatf("'h%h", proto));
    printer.print_generic("checksum","bit[15:0]",16,$sformatf("'h%h", checksum));
    printer.print_generic("saddr","bit[31:0]",32,$sformatf("'h%h", saddr));
    printer.print_generic("daddr","bit[31:0]",32,$sformatf("'h%h", daddr));
    printer.print_array_header("options",options.size(),$sformatf("bit[7:0][%0d]",options.size()));
    foreach(options[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",options.size(),$sformatf("'h%h", options[i]));
    printer.print_array_footer(options.size());
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ip_hdr _rhs;
    assert($cast(_rhs,rhs));
    version              = _rhs.version;
    ihl                  = _rhs.ihl;
    dscp                 = _rhs.dscp;
    ecn                  = _rhs.ecn;
    length               = _rhs.length;
    id                   = _rhs.id;
    zero                 = _rhs.zero;
    df                   = _rhs.df;
    mf                   = _rhs.mf;
    offset               = _rhs.offset;
    ttl                  = _rhs.ttl;
    proto                = _rhs.proto;
    checksum             = _rhs.checksum;
    saddr                = _rhs.saddr;
    daddr                = _rhs.daddr;
    options              = _rhs.options;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ip_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      version              == _rhs.version &&
      ihl                  == _rhs.ihl &&
      dscp                 == _rhs.dscp &&
      ecn                  == _rhs.ecn &&
      length               == _rhs.length &&
      id                   == _rhs.id &&
      zero                 == _rhs.zero &&
      df                   == _rhs.df &&
      mf                   == _rhs.mf &&
      offset               == _rhs.offset &&
      ttl                  == _rhs.ttl &&
      proto                == _rhs.proto &&
      checksum             == _rhs.checksum &&
      saddr                == _rhs.saddr &&
      daddr                == _rhs.daddr &&
      options              == _rhs.options &&
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

endclass : ip_hdr
`endif // IP_HDR__SVH