
`ifndef PCAPREC_HDR__SVH
`define PCAPREC_HDR__SVH

class pcaprec_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 31: 0]                    ts_sec;
  rand bit [ 31: 0]                   ts_usec;
  rand bit [ 31: 0]                  incl_len;
  rand bit [ 31: 0]                  orig_len;
  rand bit [  7: 0]                   payload[];

  `uvm_object_utils_begin(pcaprec_hdr)
    `uvm_field_int( ts_sec , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ts_usec , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( incl_len , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( orig_len , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end


  function new(string name = "pcaprec_hdr");
    super.new(name);
    uid = new("pcaprec_hdr");
  endfunction : new

  virtual function void do_pack(uvm_packer packer);

    super.do_unpack(packer);

    packer.pack_field_int( ts_sec , $bits( ts_sec ) );
    packer.pack_field_int( ts_usec , $bits( ts_usec ) );
    packer.pack_field_int( incl_len , $bits( incl_len ) );
    packer.pack_field_int( orig_len , $bits( orig_len ) );
    foreach(payload[i]) packer.pack_field_int( payload[i] , 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);

    super.do_unpack(packer);

    ts_sec                        = packer.unpack_field_int( $bits( ts_sec ) );
    ts_usec                        = packer.unpack_field_int( $bits( ts_usec ) );
    incl_len                        = packer.unpack_field_int( $bits( incl_len ) );
    orig_len                        = packer.unpack_field_int( $bits( orig_len ) );
    payload=new[(packer.get_packed_size()/8)-0];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("ts_sec","bit[31:0]",32,$sformatf("'h%h", ts_sec ));
    printer.print_generic("ts_usec","bit[31:0]",32,$sformatf("'h%h", ts_usec ));
    printer.print_generic("incl_len","bit[31:0]",32,$sformatf("'h%h", incl_len ));
    printer.print_generic("orig_len","bit[31:0]",32,$sformatf("'h%h", orig_len ));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i] ));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    pcaprec_hdr _rhs;
    assert($cast(_rhs,rhs));
    ts_sec               = _rhs.ts_sec;
    ts_usec              = _rhs.ts_usec;
    incl_len             = _rhs.incl_len;
    orig_len             = _rhs.orig_len;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    pcaprec_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      ts_sec               == _rhs.ts_sec &&
      ts_usec              == _rhs.ts_usec &&
      incl_len             == _rhs.incl_len &&
      orig_len             == _rhs.orig_len &&
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

endclass : pcaprec_hdr
`endif // PCAPREC_HDR__SVH