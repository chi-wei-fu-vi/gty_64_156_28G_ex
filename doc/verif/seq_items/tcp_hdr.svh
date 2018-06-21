
`ifndef TCP_HDR__SVH
`define TCP_HDR__SVH

class tcp_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 15: 0]                    source;
  rand bit [ 15: 0]                      dest;
  rand bit [ 31: 0]                       seq;
  rand bit [ 31: 0]                   ack_seq;
  rand bit [  3: 0]                      doff;
  rand bit [  3: 0]                      res1;
  rand bit [  1: 0]                      res2;
  rand bit                                urg;
  rand bit                                ack;
  rand bit                                psh;
  rand bit                                rst;
  rand bit                                syn;
  rand bit                                fin;
  rand bit [ 15: 0]                    window;
  rand bit [ 15: 0]                     check;
  rand bit [ 15: 0]                   urg_ptr;
  rand bit [  7: 0]                   options[];
  rand bit [  7: 0]                   payload[];



  bit                    source_corrupt = 0;
  bit                      dest_corrupt = 0;
  bit                       seq_corrupt = 0;
  bit                   ack_seq_corrupt = 0;
  bit                      doff_corrupt = 0;
  bit                      res1_corrupt = 0;
  bit                      res2_corrupt = 0;
  bit                       urg_corrupt = 0;
  bit                       ack_corrupt = 0;
  bit                       psh_corrupt = 0;
  bit                       rst_corrupt = 0;
  bit                       syn_corrupt = 0;
  bit                       fin_corrupt = 0;
  bit                    window_corrupt = 0;
  bit                     check_corrupt = 0;
  bit                   urg_ptr_corrupt = 0;
  bit                   payload_corrupt = 0;
  int                   hdr_len         = 20;


  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000000010;
  `uvm_object_utils_begin(tcp_hdr)
    `uvm_field_int( source , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dest , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( seq , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ack_seq , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( doff , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( res1 , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( res2 , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( urg , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( ack , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( psh , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( rst , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( syn , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( fin , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( window , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( check , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( urg_ptr , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint source_C {
    if ( source_corrupt ) {
      ( source == 0 );
    }
    else {
      ( source inside { [1 : 65535 ] } );
    }

  }
  constraint dest_C {
    if ( dest_corrupt ) {
      ( source == 0 );
    }
    else {
      ( source inside { [1 : 65535 ] } );
    }
  }
  constraint seq_C {
    if ( seq_corrupt ) {
      ( seq == 0 );
    }
    else {
      ( seq != 0 );
    }
  }
  constraint ack_seq_C {
    if ( ack_seq_corrupt ) {
      ( ack_seq == 0 );
    }
    else {
      ( ack_seq != 0 );
    }
  }
  constraint doff_C {
    if ( doff_corrupt ) {
      ( doff < 5 )                 -> hdr_len == 20;
    }
    else {
      ( doff inside { [5 : 15] } ) -> hdr_len == doff*4;
    }

  }
  constraint res1_C {
    if ( res1_corrupt ) {
      ( res1 inside { [1 : 15] } );
    }
    else {
      ( res1 == 0 );
    }

  }
  constraint res2_C {
    if ( res2_corrupt ) {
      ( res2 inside { [1 : 3] } );
    }
    else {
      ( res2 == 0 );
    }

  }
  constraint urg_C {
    if ( urg_corrupt ) {
      ( urg == 1 );
    }
    else {
      ( urg == 0 );
    }

  }
  constraint ack_C {
    if ( ack_corrupt ) {
      ( ack == 0 );
    }
    else {
      ( ack == 1 );
    }

  }
  constraint psh_C {
    if ( psh_corrupt ) {
      ( psh == 0 );
    }
    else {
      ( psh == 1 );
    }

  }
  constraint rst_C {
    if ( rst_corrupt ) {
      ( rst == 1 );
    }
    else {
      ( rst == 0 );
    }

  }
  constraint syn_C {
    if ( syn_corrupt ) {
      ( syn == 1 );
    }
    else {
      ( syn == 0 );
    }

  }
  constraint fin_C {
    if ( fin_corrupt ) {
      ( fin == 1 );
    }
    else {
      ( fin == 0 );
    }

  }
  constraint window_C {
    if ( window_corrupt ) {
      ( window == 0 );
    }
    else {
      ( window inside { [1 : 65535 ] } );
    }

  }
  constraint check_C {
      ( check == 0 );
  }
  constraint urg_ptr_C {
    if ( urg_ptr_corrupt ) {
      ( urg_ptr inside { [0 : 65535] } );
    }
    else {
      ( urg_ptr inside { [0 : 65535] } );
    }
  }
  constraint options_C {
      ( doff < 5 )                 -> options.size() == 0;
      ( doff inside { [5 : 15] } ) -> options.size() == doff*4 - 20;
  }

  function new(string name = "tcp_hdr");
    super.new(name);
    uid = new("tcp_hdr");
  endfunction : new


  function void post_randomize();
  endfunction : post_randomize

  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( source, $bits( source ) );
    packer.pack_field_int( dest, $bits( dest ) );
    packer.pack_field_int( seq, $bits( seq ) );
    packer.pack_field_int( ack_seq, $bits( ack_seq ) );
    packer.pack_field_int( { doff,res1,res2,urg,ack,psh,rst,syn,fin }, $bits( { doff,res1,res2,urg,ack,psh,rst,syn,fin } ) );
    packer.pack_field_int( window, $bits( window ) );
    packer.pack_field_int( check, $bits( check ) );
    packer.pack_field_int( urg_ptr, $bits( urg_ptr ) );
    if (doff > 5) foreach(options[i]) packer.pack_field_int( options[i], 8 );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    source                        = packer.unpack_field_int( $bits( source ) );
    dest                          = packer.unpack_field_int( $bits( dest ) );
    seq                           = packer.unpack_field_int( $bits( seq ) );
    ack_seq                       = packer.unpack_field_int( $bits( ack_seq ) );
    { doff,res1,res2,urg,ack,psh,rst,syn,fin } = packer.unpack_field_int( $bits( { doff,res1,res2,urg,ack,psh,rst,syn,fin } ) );
    window                        = packer.unpack_field_int( $bits( window ) );
    check                         = packer.unpack_field_int( $bits( check ) );
    urg_ptr                       = packer.unpack_field_int( $bits( urg_ptr ) );
    if (doff >5) begin
      options=new[(doff-5)*4];
      foreach (options[i]) options[i]  = packer.unpack_field_int( 8 );
    end
    payload=new[(packer.get_packed_size()/8)-doff*4];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("source","bit[15:0]",16,$sformatf("'h%h", source));
    printer.print_generic("dest","bit[15:0]",16,$sformatf("'h%h", dest));
    printer.print_generic("seq","bit[31:0]",32,$sformatf("'h%h", seq));
    printer.print_generic("ack_seq","bit[31:0]",32,$sformatf("'h%h", ack_seq));
    printer.print_generic("doff","bit[3:0]",4,$sformatf("'h%h", doff));
    printer.print_generic("res1","bit[3:0]",4,$sformatf("'h%h", res1));
    printer.print_generic("res2","bit[1:0]",2,$sformatf("'h%h", res2));
    printer.print_generic("urg","bit[0:0]",1,$sformatf("'h%h", urg));
    printer.print_generic("ack","bit[0:0]",1,$sformatf("'h%h", ack));
    printer.print_generic("psh","bit[0:0]",1,$sformatf("'h%h", psh));
    printer.print_generic("rst","bit[0:0]",1,$sformatf("'h%h", rst));
    printer.print_generic("syn","bit[0:0]",1,$sformatf("'h%h", syn));
    printer.print_generic("fin","bit[0:0]",1,$sformatf("'h%h", fin));
    printer.print_generic("window","bit[15:0]",16,$sformatf("'h%h", window));
    printer.print_generic("check","bit[15:0]",16,$sformatf("'h%h", check));
    printer.print_generic("urg_ptr","bit[15:0]",16,$sformatf("'h%h", urg_ptr));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    tcp_hdr _rhs;
    assert($cast(_rhs,rhs));
    source               = _rhs.source;
    dest                 = _rhs.dest;
    seq                  = _rhs.seq;
    ack_seq              = _rhs.ack_seq;
    doff                 = _rhs.doff;
    res1                 = _rhs.res1;
    res2                 = _rhs.res2;
    urg                  = _rhs.urg;
    ack                  = _rhs.ack;
    psh                  = _rhs.psh;
    rst                  = _rhs.rst;
    syn                  = _rhs.syn;
    fin                  = _rhs.fin;
    window               = _rhs.window;
    check                = _rhs.check;
    urg_ptr              = _rhs.urg_ptr;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    tcp_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      source               == _rhs.source &&
      dest                 == _rhs.dest &&
      seq                  == _rhs.seq &&
      ack_seq              == _rhs.ack_seq &&
      doff                 == _rhs.doff &&
      res1                 == _rhs.res1 &&
      res2                 == _rhs.res2 &&
      urg                  == _rhs.urg &&
      ack                  == _rhs.ack &&
      psh                  == _rhs.psh &&
      rst                  == _rhs.rst &&
      syn                  == _rhs.syn &&
      fin                  == _rhs.fin &&
      window               == _rhs.window &&
      check                == _rhs.check &&
      urg_ptr              == _rhs.urg_ptr &&
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

endclass : tcp_hdr
`endif // TCP_HDR__SVH