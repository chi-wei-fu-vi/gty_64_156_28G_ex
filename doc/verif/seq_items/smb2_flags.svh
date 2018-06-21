
`ifndef SMB2_FLAGS__SVH
`define SMB2_FLAGS__SVH


class smb2_flags extends uvm_sequence_item;
  rand bit                           response;
  rand bit                      async_command;
  rand bit                            chained;
  rand bit                             signedd;
  rand bit [ 23: 0]                reserved_a;
  rand bit                     dfs_operations;
  rand bit                  replay_operations;
  rand bit [  1: 0]                reserved_b;

  `uvm_object_utils_begin(smb2_flags)
    `uvm_field_int( response , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( async_command , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( chained , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( signedd , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( reserved_a , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( dfs_operations , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( replay_operations , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( reserved_b , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end


  function new(string name = "smb2_flags");
    super.new(name);
  endfunction : new


  virtual function void do_pack(uvm_packer packer);
    super.do_pack(packer);
    packer.pack_field_int( { response,async_command,chained,signedd,reserved_a,dfs_operations,replay_operations,reserved_b }, $bits( { response,async_command,chained,signedd,reserved_a,dfs_operations,replay_operations,reserved_b } ) );
  endfunction : do_pack
  virtual function void do_unpack(uvm_packer packer);
    super.do_unpack(packer);
    { response,async_command,chained,signedd,reserved_a,dfs_operations,replay_operations,reserved_b }                        = packer.unpack_field_int( $bits( { response,async_command,chained,signedd,reserved_a,dfs_operations,replay_operations,reserved_b } ) );
  endfunction : do_unpack

  virtual function void do_print(uvm_printer printer);
    printer.print_generic("response","bit[0:0]",1,$sformatf("'h%h", response));
    printer.print_generic("async_command","bit[0:0]",1,$sformatf("'h%h", async_command));
    printer.print_generic("chained","bit[0:0]",1,$sformatf("'h%h", chained));
    printer.print_generic("signedd","bit[0:0]",1,$sformatf("'h%h", signedd));
    printer.print_generic("reserved_a","bit[23:0]",24,$sformatf("'h%h", reserved_a));
    printer.print_generic("dfs_operations","bit[0:0]",1,$sformatf("'h%h", dfs_operations));
    printer.print_generic("replay_operations","bit[0:0]",1,$sformatf("'h%h", replay_operations));
    printer.print_generic("reserved_b","bit[1:0]",2,$sformatf("'h%h", reserved_b));
  endfunction : do_print


  virtual function void do_copy(uvm_object rhs);
    smb2_flags _rhs;
    assert($cast(_rhs,rhs));
    response             = _rhs.response;
    async_command        = _rhs.async_command;
    chained              = _rhs.chained;
    signedd              = _rhs.signedd;
    reserved_a           = _rhs.reserved_a;
    dfs_operations       = _rhs.dfs_operations;
    replay_operations    = _rhs.replay_operations;
    reserved_b           = _rhs.reserved_b;
  endfunction : do_copy


  virtual function bit do_compare(uvm_object rhs,uvm_comparer comparer);
    smb2_flags _rhs;
    assert($cast(_rhs,rhs));
    comparer.result = 1;
    do_compare =
      response             == _rhs.response &&
      async_command        == _rhs.async_command &&
      chained              == _rhs.chained &&
      signedd              == _rhs.signedd &&
      reserved_a           == _rhs.reserved_a &&
      dfs_operations       == _rhs.dfs_operations &&
      replay_operations    == _rhs.replay_operations &&
      reserved_b           == _rhs.reserved_b ;
    if (!do_compare)
      return 0;
  endfunction : do_compare

endclass : smb2_flags
`endif // SMB2_FLAGS__SVH