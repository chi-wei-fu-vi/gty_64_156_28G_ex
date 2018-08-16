
`ifndef ETHER_HDR__SVH
`define ETHER_HDR__SVH



class ether_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 47: 0]               ether_dhost;
  rand bit [ 47: 0]               ether_shost;
  rand bit [ 15: 0]               ether_type;
  rand bit [  7: 0]               payload[];
  rand int unsigned               crc;
  rand bit [31:0]                 ipg;                // interpacket gap
  rand bit                        align64;            // data send out in 8byte boundary, otherwise data send out in 4byte boundary



  bit               ether_dhost_corrupt = 0;
  bit               ether_shost_corrupt = 0;
  bit                ether_type_corrupt = 0;
  bit                   payload_corrupt = 0;
  bit                       crc_corrupt = 0;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  `uvm_object_utils_begin(ether_hdr)
    `uvm_field_int( ether_dhost , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ether_shost , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ether_type , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint ether_dhost_C {
    if ( ether_dhost_corrupt ) {
      ( ether_dhost == 0 );
    }
    else {
      ( ether_dhost != 0 );
    }

  }
  constraint ether_shost_C {
    if ( ether_shost_corrupt ) {
      ( ether_shost == 0 );
    }
    else {
      ( ether_shost != 0 );
    }

  }
  constraint ether_type_C {
    if ( ether_type_corrupt ) {
      ( ether_type != 0 );
    }
    else {
      ( ether_type inside { [1 : 65535 ] } );
    }

  }
  constraint payload_C {
      ( payload.size() inside { [0 : 1500] } );
  }


  constraint crc_C {
    if ( crc_corrupt ) {
      ( crc != 0 );
    }
    else {
      ( crc == 0 );
    }

  }

  constraint C_ipg {
    ipg inside {[10:50]};
  }

  function new(string name = "ether_hdr");
    super.new(name);
    uid = new("ether_hdr");
  endfunction : new


  function void post_randomize();
    byte unsigned frame[];
    byte unsigned bytestream[];
    void'( pack_bytes(bytestream));

    frame=new[bytestream.size()];
    foreach (frame[i]) frame[i]=bytestream[i];
    crc=cal_crc32(frame) ^ crc;
    `uvm_info("post_randomize bytestream",$sformatf("crc = %08h",crc),UVM_HIGH);
  endfunction : post_randomize

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( ether_dhost, $bits( ether_dhost ) );
    packer.pack_field_int( ether_shost, $bits( ether_shost ) );
    packer.pack_field_int( ether_type, $bits( ether_type ) );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    ether_dhost                        = packer.unpack_field_int( $bits( ether_dhost ) );
    ether_shost                        = packer.unpack_field_int( $bits( ether_shost ) );
    ether_type                        = packer.unpack_field_int( $bits( ether_type ) );
    payload=new[(packer.get_packed_size()/8)-0];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("ether_dhost","bit[47:0]",48,$sformatf("'h%h", ether_dhost));
    printer.print_generic("ether_shost","bit[47:0]",48,$sformatf("'h%h", ether_shost));
    printer.print_generic("ether_type","bit[15:0]",16,$sformatf("'h%h", ether_type));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
    foreach(crc[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",4,$sformatf("'h%h", crc[i]));
    printer.print_array_footer(4);
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    ether_hdr _rhs;
    assert($cast(_rhs,rhs));
    ether_dhost          = _rhs.ether_dhost;
    ether_shost          = _rhs.ether_shost;
    ether_type           = _rhs.ether_type;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    ether_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      ether_dhost          == _rhs.ether_dhost &&
      ether_shost          == _rhs.ether_shost &&
      ether_type           == _rhs.ether_type &&
      payload              == _rhs.payload &&
      crc                  == _rhs.crc ;
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


endclass : ether_hdr
`endif // ETHER_HDR__SVH