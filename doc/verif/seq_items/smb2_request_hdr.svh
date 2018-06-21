
`ifndef SMB2_REQUEST_HDR__SVH
`define SMB2_REQUEST_HDR__SVH


class smb2_request_hdr extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 31: 0]             smb_signature;
  rand bit [ 15: 0]             header_length;
  rand bit [ 15: 0]             credit_charge;
  rand bit [ 15: 0]                  chan_seq;
  rand bit [ 15: 0]                reserved_a;
  //rand bit [ 15: 0]                   command;
  rand SMB2_COM_e                     command;
  rand bit [ 15: 0]            credit_request;
  rand bit [ 31: 0]                     flags;
  rand bit [ 31: 0]              chain_offset;
  rand bit [ 63: 0]                       mid;
  rand bit [ 31: 0]                       pid;
  rand bit [ 31: 0]                       tid;
  rand bit [ 63: 0]                       sid;
  rand bit [127: 0]                 signature;
  rand bit [  7: 0]                   payload[];



  bit             smb_signature_corrupt = 0;
  bit             header_length_corrupt = 0;
  bit             credit_charge_corrupt = 0;
  bit                  chan_seq_corrupt = 0;
  bit                reserved_a_corrupt = 0;
  bit                   command_corrupt = 0;
  bit            credit_request_corrupt = 0;
  bit                     flags_corrupt = 0;
  bit              chain_offset_corrupt = 0;
  bit                       mid_corrupt = 0;
  bit                       pid_corrupt = 0;
  bit                       tid_corrupt = 0;
  bit                       sid_corrupt = 0;
  bit                 signature_corrupt = 0;
  bit                   payload_corrupt = 0;

  longint               cseq_packet_type = 64'b0000000000000000000000000000000000000000000000000000000000001000;
  `uvm_object_utils_begin(smb2_request_hdr)
    `uvm_field_int( smb_signature , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( header_length , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( credit_charge , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( chan_seq , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( reserved_a , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_enum( SMB2_COM_e, command , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( credit_request , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( flags , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( chain_offset , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( mid , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( pid , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( tid , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( sid , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( signature , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_array_int( payload , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end

  constraint smb_signature_C {
    if ( smb_signature_corrupt ) {
      ( smb_signature != 32'h424d53fe );
    }
    else {
      ( smb_signature == 32'h424d53fe );
    }

  }
  constraint header_length_C {
    if ( header_length_corrupt ) {
      ( header_length != 64 );
    }
    else {
      ( header_length == 64 );
    }

  }
  constraint credit_charge_C {
    if ( credit_charge_corrupt ) {
      ( credit_charge > 1 );
    }
    else {
      ( command == SMB2_NEGOTIATE ) -> ( credit_charge == 0 );
      ( command != SMB2_NEGOTIATE ) -> ( credit_charge == 1 );
    }

  }
  constraint chan_seq_C {
    if ( chan_seq_corrupt ) {
      ( chan_seq > 32767 );
    }
    else {
      ( chan_seq inside { [0 : 32767] } );
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
  constraint command_C {
    if ( command_corrupt ) {
      ( command > 18 );
    }
    else {
      ( command inside { [0 : 18 ] } );
    }

  }
  constraint credit_request_C {
    if ( credit_request_corrupt ) {
      ( credit_request == 0 );
      ( command == SMB2_NEGOTIATE )     -> ( credit_request != 0 );
      ( command == SMB2_SESSION_SETUP ) -> ( credit_request == 0 );
    }
    else {
      ( credit_request == 1 );
      ( command == SMB2_NEGOTIATE ) -> ( credit_request == 0 );
      //( command == SMB2_SESSION_SETUP ) -> ( credit_request == 31 );
      ( command == SMB2_SESSION_SETUP ) -> ( credit_request inside { [ 2 : 65535 ] } );
    }

  }
  constraint flags_C {
    if ( flags_corrupt ) {
      ( ( flags & 1 ) == 1 );
    }
    else {
      ( ( flags & 1 ) == 0 );
    }

  }
  constraint chain_offset_C {
    if ( chain_offset_corrupt ) {
      ( chain_offset != 0 );
    }
    else {
      ( chain_offset == 0 );
    }

  }
  constraint mid_C {
    if ( mid_corrupt ) {
      ( mid == 0 );
      ( command == SMB2_NEGOTIATE )     -> ( mid != 0 );
    }
    else {
      ( mid > 0 );
      ( command == SMB2_NEGOTIATE )     -> ( mid == 0 );
    }

  }
  constraint pid_C {
    if ( pid_corrupt ) {
      ( pid == 0 );
      ( command == SMB2_NEGOTIATE )     -> ( pid != 0 );
    }
    else {
      ( pid > 0 );
      ( command == SMB2_NEGOTIATE )     -> ( pid == 0 );
    }

  }
  constraint tid_C {
    if ( tid_corrupt ) {
      ( tid == 0 );
      ( command == SMB2_NEGOTIATE )     -> ( tid != 0 );
      ( command == SMB2_SESSION_SETUP ) -> ( tid != 0 );
      ( command == SMB2_TREE_CONNECT )  -> ( tid != 0 );
    }
    else {
      ( tid > 0 );
      ( command == SMB2_NEGOTIATE )     -> ( tid == 0 );
      ( command == SMB2_SESSION_SETUP ) -> ( tid == 0 );
      ( command == SMB2_TREE_CONNECT )  -> ( tid == 0 );
    }

  }
  constraint sid_C {
    if ( sid_corrupt ) {
      ( sid == 0 );
      ( command == SMB2_NEGOTIATE )     -> ( sid != 0 );
      ( command == SMB2_SESSION_SETUP ) -> ( sid != 0 );
    }
    else {
      ( sid > 0 );
      ( command == SMB2_NEGOTIATE )     -> ( sid == 0 );
      ( command == SMB2_SESSION_SETUP ) -> ( sid == 0 );
    }

  }
  constraint signature_C {
    if ( signature_corrupt ) {
      ( signature != 0 );
      ( ( flags & 8 ) == 1 ) -> ( signature == 0 );
    }
    else {
      ( signature == 0 );
      ( ( flags & 8 ) == 1 ) -> ( signature != 0 );
    }

  }
  constraint payload_C {
      ( payload.size() < 64 );
      ( command == SMB2_NEGOTIATE )             -> ( payload.size() > 36 );
      ( command == SMB2_SESSION_SETUP )         -> ( payload.size() > 24 );
      ( command == SMB2_LOGOFF )                -> ( payload.size() == 4 );
      ( command == SMB2_TREE_CONNECT )          -> ( payload.size() > 8 );
      ( command == SMB2_TREE_DISCONNECT )       -> ( payload.size() == 4 );
      ( command == SMB2_CREATE )                -> ( payload.size() > 56 );
      ( command == SMB2_IOCTL )                 -> ( payload.size() > 56 );
      ( command == SMB2_CLOSE )                 -> ( payload.size() == 24 );
      ( command == SMB2_FLUSH )                 -> ( payload.size() == 24 );
      ( command == SMB2_READ )                  -> ( payload.size() >= 48 );
      ( command == SMB2_WRITE )                 -> ( payload.size() >= 48 );
      ( command == SMB2_LOCK )                  -> ( payload.size() == 48 );
      ( command == SMB2_ECHO )                  -> ( payload.size() == 4 );
      ( command == SMB2_QUERY_DIRECTORY )       -> ( payload.size() >= 32 );
      ( command == SMB2_QUERY_INFO )            -> ( payload.size() >= 40 );
      ( command == SMB2_SET_INFO )              -> ( payload.size() >= 32 );
      ( command == SMB2_CANCEL )                -> ( payload.size() == 4 );
      ( command == SMB2_CHANGE_NOTIFY )         -> ( payload.size() == 32 );
      ( command == SMB2_OPLOCK_BREAK )          -> ( payload.size() == 44 );
  }

  function new(string name = "smb2_request_hdr");
    super.new(name);
    uid = new("smb2_request_hdr");
  endfunction : new


  function void post_randomize();
  endfunction : post_randomize



  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( smb_signature, $bits( smb_signature ) );
    packer.pack_field_int( header_length, $bits( header_length ) );
    packer.pack_field_int( credit_charge, $bits( credit_charge ) );
    packer.pack_field_int( chan_seq, $bits( chan_seq ) );
    packer.pack_field_int( reserved_a, $bits( reserved_a ) );
    packer.pack_field_int( command, $bits( command ) );
    packer.pack_field_int( credit_request, $bits( credit_request ) );
    packer.pack_field_int( flags, $bits( flags ) );
    packer.pack_field_int( chain_offset, $bits( chain_offset ) );
    packer.pack_field_int( mid, $bits( mid ) );
    packer.pack_field_int( pid, $bits( pid ) );
    packer.pack_field_int( tid, $bits( tid ) );
    packer.pack_field_int( sid, $bits( sid ) );
    packer.pack_field_int( signature[ 64 +: 64 ], $bits( signature[ 64 +: 64 ] ) );
    packer.pack_field_int( signature[ 0 +: 64 ], $bits( signature[ 0 +: 64 ] ) );
    foreach(payload[i]) packer.pack_field_int( payload[i], 8 );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    bit [15:0] command__;
    super.do_unpack(packer);
    smb_signature                        = packer.unpack_field_int( $bits( smb_signature ) );
    header_length                        = packer.unpack_field_int( $bits( header_length ) );
    credit_charge                        = packer.unpack_field_int( $bits( credit_charge ) );
    chan_seq                        = packer.unpack_field_int( $bits( chan_seq ) );
    reserved_a                        = packer.unpack_field_int( $bits( reserved_a ) );
    command__                        = packer.unpack_field_int( $bits( command__ ) );
    command = SMB2_COM_e'(command__);
    // `uvm_unpack_enum(command,SMB2_COM_e)
    credit_request                        = packer.unpack_field_int( $bits( credit_request ) );
    flags                        = packer.unpack_field_int( $bits( flags ) );
    chain_offset                        = packer.unpack_field_int( $bits( chain_offset ) );
    mid                        = packer.unpack_field_int( $bits( mid ) );
    pid                        = packer.unpack_field_int( $bits( pid ) );
    tid                        = packer.unpack_field_int( $bits( tid ) );
    sid                        = packer.unpack_field_int( $bits( sid ) );
    signature[ 64 +: 64 ]                        = packer.unpack_field_int( $bits( signature[ 64 +: 64 ] ) );
    signature[ 0 +: 64 ]                        = packer.unpack_field_int( $bits( signature[ 0 +: 64 ] ) );
    payload=new[(packer.get_packed_size()/8)-1];
    foreach (payload[i]) payload[i]                        = packer.unpack_field_int( 8 );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("smb_signature","bit[31:0]",32,$sformatf("'h%h", smb_signature));
    printer.print_generic("header_length","bit[15:0]",16,$sformatf("'h%h", header_length));
    printer.print_generic("credit_charge","bit[15:0]",16,$sformatf("'h%h", credit_charge));
    printer.print_generic("chan_seq","bit[15:0]",16,$sformatf("'h%h", chan_seq));
    printer.print_generic("reserved_a","bit[15:0]",16,$sformatf("'h%h", reserved_a));
    printer.print_generic("command","bit[15:0]",16,$sformatf("'h%h", command));
    printer.print_generic("credit_request","bit[15:0]",16,$sformatf("'h%h", credit_request));
    printer.print_generic("flags","bit[31:0]",32,$sformatf("'h%h", flags));
    printer.print_generic("chain_offset","bit[31:0]",32,$sformatf("'h%h", chain_offset));
    printer.print_generic("mid","bit[63:0]",64,$sformatf("'h%h", mid));
    printer.print_generic("pid","bit[31:0]",32,$sformatf("'h%h", pid));
    printer.print_generic("tid","bit[31:0]",32,$sformatf("'h%h", tid));
    printer.print_generic("sid","bit[63:0]",64,$sformatf("'h%h", sid));
    printer.print_generic("signature","bit[127:0]",128,$sformatf("'h%h", signature));
    printer.print_array_header("payload",payload.size(),$sformatf("bit[7:0][%0d]",payload.size()));
    foreach(payload[i])
      printer.print_generic($sformatf("[%0d]",i),"bit[7:0]",payload.size(),$sformatf("'h%h", payload[i]));
    printer.print_array_footer(payload.size());
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    smb2_request_hdr _rhs;
    assert($cast(_rhs,rhs));
    smb_signature        = _rhs.smb_signature;
    header_length        = _rhs.header_length;
    credit_charge        = _rhs.credit_charge;
    chan_seq             = _rhs.chan_seq;
    reserved_a           = _rhs.reserved_a;
    command              = _rhs.command;
    credit_request       = _rhs.credit_request;
    flags                = _rhs.flags;
    chain_offset         = _rhs.chain_offset;
    mid                  = _rhs.mid;
    pid                  = _rhs.pid;
    tid                  = _rhs.tid;
    sid                  = _rhs.sid;
    signature            = _rhs.signature;
    payload              = _rhs.payload;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    smb2_request_hdr _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      smb_signature        == _rhs.smb_signature &&
      header_length        == _rhs.header_length &&
      credit_charge        == _rhs.credit_charge &&
      chan_seq             == _rhs.chan_seq &&
      reserved_a           == _rhs.reserved_a &&
      command              == _rhs.command &&
      credit_request       == _rhs.credit_request &&
      flags                == _rhs.flags &&
      chain_offset         == _rhs.chain_offset &&
      mid                  == _rhs.mid &&
      pid                  == _rhs.pid &&
      tid                  == _rhs.tid &&
      sid                  == _rhs.sid &&
      signature            == _rhs.signature &&
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

endclass : smb2_request_hdr
`endif // SMB2_REQUEST_HDR__SVH