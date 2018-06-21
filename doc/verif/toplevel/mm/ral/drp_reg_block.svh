class drp_reg_block extends uvm_reg_block;
  `uvm_object_utils( drp_reg_block )
  // register blocks
  rand drp_top_reg_block top;  
  uvm_reg_map reg_map;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "drp_reg_block" );
    super.new( .name( name ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction: new

   //---------------------------------------------------------------------------
   // Function: build
   //---------------------------------------------------------------------------

  virtual function void build();
    top = drp_top_reg_block::type_id::create( "top" );
    top.configure( .parent( this ) );
    top.build();
    reg_map = create_map( .name( "reg_map" ), .base_addr( 0 ), .n_bytes( 8 ),
                          .endian( UVM_LITTLE_ENDIAN ), .byte_addressing( 1 ) );
    reg_map.add_submap( top.reg_map, .offset( 'h0 ) );
  endfunction: build
endclass: drp_reg_block