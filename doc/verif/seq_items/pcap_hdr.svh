
`ifndef PCAP_HDR__SVH
`define PCAP_HDR__SVH

class pcap_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 31: 0]              magic_number;
  rand bit [ 15: 0]             version_major;
  rand bit [ 15: 0]             version_minor;
  rand bit [ 31: 0]                  thiszone;
  rand bit [ 31: 0]                   sigfigs;
  rand bit [ 31: 0]                   snaplen;
  rand bit [ 31: 0]                   network;
  rand bit [  7: 0]                   payload[];

  `uvm_object_utils_begin(pcap_hdr)
    `uvm_field_int( magic_number , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( version_major , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( version_minor , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( thiszone , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( sigfigs , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( snaplen , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( network , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  function new(string name = "pcap_hdr");
    super.new(name);
    uid = new("pcap_hdr");
  endfunction : new


  function void post_randomize();
    byte unsigned frame[];
    byte unsigned bytestream[];
    void'(pack_bytes(bytestream));

    frame=new[bytestream.size()];
    foreach (frame[i]) frame[i]=bytestream[i];
  endfunction : post_randomize



  virtual function void do_pack(uvm_packer packer);

    super.do_unpack(packer);

    packer.pack_field_int( magic_number , $bits( magic_number ) );
    packer.pack_field_int( version_major , $bits( version_major ) );
    packer.pack_field_int( version_minor , $bits( version_minor ) );
    packer.pack_field_int( thiszone , $bits( thiszone ) );
    packer.pack_field_int( sigfigs , $bits( sigfigs ) );
    packer.pack_field_int( snaplen , $bits( snaplen ) );
    packer.pack_field_int( network , $bits( network ) );
    foreach(payload[i]) packer.pack_field_int( payload[i] , 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);

    super.do_unpack(packer);

    magic_number                        = packer.unpack_field_int( $bits( magic_number ) );
    version_major                        = packer.unpack_field_int( $bits( version_major ) );
    version_minor                        = packer.unpack_field_int( $bits( version_minor ) );
    thiszone                        = packer.unpack_field_int( $bits( thiszone ) );
    sigfigs                        = packer.unpack_field_int( $bits( sigfigs ) );
    snaplen                        = packer.unpack_field_int( $bits( snaplen ) );
    network                        = packer.unpack_field_int( $bits( network ) );
    payload=new[(packer.get_packed_size()/8)-0];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("magic_number","bit[31:0]",32,$sformatf("'h%h", magic_number ));
    printer.print_generic("version_major","bit[15:0]",16,$sformatf("'h%h", version_major ));
    printer.print_generic("version_minor","bit[15:0]",16,$sformatf("'h%h", version_minor ));
    printer.print_generic("thiszone","bit[31:0]",32,$sformatf("'h%h", thiszone ));
    printer.print_generic("sigfigs","bit[31:0]",32,$sformatf("'h%h", sigfigs ));
    printer.print_generic("snaplen","bit[31:0]",32,$sformatf("'h%h", snaplen ));
    printer.print_generic("network","bit[31:0]",32,$sformatf("'h%h", network ));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i] ));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    pcap_hdr _rhs;
    assert($cast(_rhs,rhs));
    magic_number         = _rhs.magic_number;
    version_major        = _rhs.version_major;
    version_minor        = _rhs.version_minor;
    thiszone             = _rhs.thiszone;
    sigfigs              = _rhs.sigfigs;
    snaplen              = _rhs.snaplen;
    network              = _rhs.network;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    pcap_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      magic_number         == _rhs.magic_number &&
      version_major        == _rhs.version_major &&
      version_minor        == _rhs.version_minor &&
      thiszone             == _rhs.thiszone &&
      sigfigs              == _rhs.sigfigs &&
      snaplen              == _rhs.snaplen &&
      network              == _rhs.network &&
      payload              == _rhs.payload ;
    if (!do_compare)
      return 0;
    // temporary limitation: assoc arrays must be compared "item by item"
/*

    if (aa.size() != _rhs.aa.size())
      return 0;
    foreach (aa[i])
      if (!(_rhs.aa.exists(i) && aa[i] == _rhs.aa[i]))
        return 0;

*/
    // compare sub-object deeply
/*

    if (obj == null) begin
      if (_rhs.obj != null)
        return 0;
    end
    else
      do_compare = obj.compare(_rhs.obj,comparer);

      comparer.result = 1-do_compare;

*/
  endfunction : do_compare

endclass : pcap_hdr
`endif // PCAP_HDR__SVH
