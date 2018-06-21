class drp_top_reg_block extends uvm_reg_block;
  `uvm_object_utils( drp_top_reg_block )
  // register blocks
  rand gtye_channel_reg_block ch;
  rand gtye_common_reg_block cm;
  rand vio_reg_block vio;  
  uvm_reg_map reg_map;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "drp_top_reg_block" );
    super.new( .name( name ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction: new

   //---------------------------------------------------------------------------
   // Function: build
   //---------------------------------------------------------------------------

  virtual function void build();
    ch = gtye_channel_reg_block::type_id::create( "ch" );
    ch.configure( .parent( this ) );
    ch.build();
    cm = gtye_common_reg_block::type_id::create( "cm" );
    cm.configure( .parent( this ) );
    cm.build();
    vio = vio_reg_block::type_id::create( "vio" );
    vio.configure( .parent( this ) );
    vio.build();
    reg_map = create_map( .name( "reg_map" ), .base_addr( 0 ), .n_bytes( 8 ),
                          .endian( UVM_LITTLE_ENDIAN ), .byte_addressing( 1 ) );
    reg_map.add_submap( ch.reg_map, .offset( 'h0 ) );
    reg_map.add_submap( cm.reg_map, .offset( 'h400 ) );
    reg_map.add_submap( vio.reg_map, .offset( 'h800 ) );
  endfunction: build
endclass: drp_top_reg_block