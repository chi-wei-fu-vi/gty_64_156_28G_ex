
class gtye_common_qpll0_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg0_reg )
  rand uvm_reg_field qpll0_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg0 = uvm_reg_field::type_id::create( "qpll0_cfg0" );
    qpll0_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg0_reg

class gtye_common_common_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_common_cfg0_reg )
  rand uvm_reg_field common_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_common_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    common_cfg0 = uvm_reg_field::type_id::create( "common_cfg0" );
    common_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_common_cfg0_reg

class gtye_common_rsvd_attr0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_rsvd_attr0_reg )
  rand uvm_reg_field rsvd_attr0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_rsvd_attr0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rsvd_attr0 = uvm_reg_field::type_id::create( "rsvd_attr0" );
    rsvd_attr0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_rsvd_attr0_reg

class gtye_common_ppf0_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ppf0_cfg_reg )
  rand uvm_reg_field ppf0_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ppf0_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ppf0_cfg = uvm_reg_field::type_id::create( "ppf0_cfg" );
    ppf0_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ppf0_cfg_reg

class gtye_common_qpll0clkout_rate_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0clkout_rate_reg )
  rand uvm_reg_field qpll0clkout_rate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0clkout_rate_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0clkout_rate = uvm_reg_field::type_id::create( "qpll0clkout_rate" );
    qpll0clkout_rate.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0clkout_rate_reg

class gtye_common_qpll0_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg1_reg )
  rand uvm_reg_field qpll0_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg1 = uvm_reg_field::type_id::create( "qpll0_cfg1" );
    qpll0_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg1_reg

class gtye_common_qpll0_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg2_reg )
  rand uvm_reg_field qpll0_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg2 = uvm_reg_field::type_id::create( "qpll0_cfg2" );
    qpll0_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg2_reg

class gtye_common_qpll0_lock_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_lock_cfg_reg )
  rand uvm_reg_field qpll0_lock_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_lock_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_lock_cfg = uvm_reg_field::type_id::create( "qpll0_lock_cfg" );
    qpll0_lock_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_lock_cfg_reg

class gtye_common_qpll0_init_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_init_cfg0_reg )
  rand uvm_reg_field qpll0_init_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_init_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_init_cfg0 = uvm_reg_field::type_id::create( "qpll0_init_cfg0" );
    qpll0_init_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_init_cfg0_reg

class gtye_common_qpll0_init_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_init_cfg1_reg )
  rand uvm_reg_field qpll0_init_cfg1;
  rand uvm_reg_field qpll0_fbdiv;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_init_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_init_cfg1 = uvm_reg_field::type_id::create( "qpll0_init_cfg1" );
    qpll0_init_cfg1.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll0_fbdiv = uvm_reg_field::type_id::create( "qpll0_fbdiv" );
    qpll0_fbdiv.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_init_cfg1_reg

class gtye_common_qpll0_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg3_reg )
  rand uvm_reg_field qpll0_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg3 = uvm_reg_field::type_id::create( "qpll0_cfg3" );
    qpll0_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg3_reg

class gtye_common_qpll0_cp_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cp_reg )
  rand uvm_reg_field qpll0_cp;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cp_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cp = uvm_reg_field::type_id::create( "qpll0_cp" );
    qpll0_cp.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cp_reg

class gtye_common_qpll0_refclk_div_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_refclk_div_reg )
  rand uvm_reg_field qpll0_refclk_div;
  rand uvm_reg_field qpll0_ips_refclk_sel;
  rand uvm_reg_field qpll0_ips_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_refclk_div_reg" );
    super.new( .name( name ), .n_bits( 12 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_refclk_div = uvm_reg_field::type_id::create( "qpll0_refclk_div" );
    qpll0_refclk_div.configure( .parent( this ), .size( 5 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll0_ips_refclk_sel = uvm_reg_field::type_id::create( "qpll0_ips_refclk_sel" );
    qpll0_ips_refclk_sel.configure( .parent( this ), .size( 3 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll0_ips_en = uvm_reg_field::type_id::create( "qpll0_ips_en" );
    qpll0_ips_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_refclk_div_reg

class gtye_common_qpll0_lpf_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_lpf_reg )
  rand uvm_reg_field qpll0_lpf;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_lpf_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_lpf = uvm_reg_field::type_id::create( "qpll0_lpf" );
    qpll0_lpf.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_lpf_reg

class gtye_common_qpll0_cfg1_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg1_g3_reg )
  rand uvm_reg_field qpll0_cfg1_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg1_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg1_g3 = uvm_reg_field::type_id::create( "qpll0_cfg1_g3" );
    qpll0_cfg1_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg1_g3_reg

class gtye_common_qpll0_cfg2_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg2_g3_reg )
  rand uvm_reg_field qpll0_cfg2_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg2_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg2_g3 = uvm_reg_field::type_id::create( "qpll0_cfg2_g3" );
    qpll0_cfg2_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg2_g3_reg

class gtye_common_qpll0_lpf_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_lpf_g3_reg )
  rand uvm_reg_field qpll0_lpf_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_lpf_g3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_lpf_g3 = uvm_reg_field::type_id::create( "qpll0_lpf_g3" );
    qpll0_lpf_g3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_lpf_g3_reg

class gtye_common_qpll0_lock_cfg_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_lock_cfg_g3_reg )
  rand uvm_reg_field qpll0_lock_cfg_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_lock_cfg_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_lock_cfg_g3 = uvm_reg_field::type_id::create( "qpll0_lock_cfg_g3" );
    qpll0_lock_cfg_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_lock_cfg_g3_reg

class gtye_common_rsvd_attr00_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_rsvd_attr00_reg )
  rand uvm_reg_field rsvd_attr00;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_rsvd_attr00_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rsvd_attr00 = uvm_reg_field::type_id::create( "rsvd_attr00" );
    rsvd_attr00.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_rsvd_attr00_reg

class gtye_common_qpll0_fbdiv_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_fbdiv_g3_reg )
  rand uvm_reg_field qpll0_fbdiv_g3;
  rand uvm_reg_field qpll0_rate_sw_use_drp;
  rand uvm_reg_field qpll0_pcie_en;
  rand uvm_reg_field rxrecclkout0_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_fbdiv_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_fbdiv_g3 = uvm_reg_field::type_id::create( "qpll0_fbdiv_g3" );
    qpll0_fbdiv_g3.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll0_rate_sw_use_drp = uvm_reg_field::type_id::create( "qpll0_rate_sw_use_drp" );
    qpll0_rate_sw_use_drp.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll0_pcie_en = uvm_reg_field::type_id::create( "qpll0_pcie_en" );
    qpll0_pcie_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxrecclkout0_sel = uvm_reg_field::type_id::create( "rxrecclkout0_sel" );
    rxrecclkout0_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_fbdiv_g3_reg

class gtye_common_qpll0_sdm_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_sdm_cfg0_reg )
  rand uvm_reg_field qpll0_sdm_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_sdm_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_sdm_cfg0 = uvm_reg_field::type_id::create( "qpll0_sdm_cfg0" );
    qpll0_sdm_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_sdm_cfg0_reg

class gtye_common_qpll0_sdm_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_sdm_cfg1_reg )
  rand uvm_reg_field qpll0_sdm_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_sdm_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_sdm_cfg1 = uvm_reg_field::type_id::create( "qpll0_sdm_cfg1" );
    qpll0_sdm_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_sdm_cfg1_reg

class gtye_common_sdm0initseed0_0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_sdm0initseed0_0_reg )
  rand uvm_reg_field sdm0initseed0_0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_sdm0initseed0_0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    sdm0initseed0_0 = uvm_reg_field::type_id::create( "sdm0initseed0_0" );
    sdm0initseed0_0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_sdm0initseed0_0_reg

class gtye_common_sdm0initseed0_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_sdm0initseed0_1_reg )
  rand uvm_reg_field sdm0initseed0_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_sdm0initseed0_1_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    sdm0initseed0_1 = uvm_reg_field::type_id::create( "sdm0initseed0_1" );
    sdm0initseed0_1.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_sdm0initseed0_1_reg

class gtye_common_qpll0_sdm_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_sdm_cfg2_reg )
  rand uvm_reg_field qpll0_sdm_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_sdm_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_sdm_cfg2 = uvm_reg_field::type_id::create( "qpll0_sdm_cfg2" );
    qpll0_sdm_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_sdm_cfg2_reg

class gtye_common_qpll0_cp_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cp_g3_reg )
  rand uvm_reg_field qpll0_cp_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cp_g3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cp_g3 = uvm_reg_field::type_id::create( "qpll0_cp_g3" );
    qpll0_cp_g3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cp_g3_reg

class gtye_common_rsvd_attr1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_rsvd_attr1_reg )
  rand uvm_reg_field rsvd_attr1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_rsvd_attr1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rsvd_attr1 = uvm_reg_field::type_id::create( "rsvd_attr1" );
    rsvd_attr1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_rsvd_attr1_reg

class gtye_common_qpll0_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll0_cfg4_reg )
  rand uvm_reg_field qpll0_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll0_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg4 = uvm_reg_field::type_id::create( "qpll0_cfg4" );
    qpll0_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll0_cfg4_reg

class gtye_common_ub_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg0_reg )
  rand uvm_reg_field ub_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg0 = uvm_reg_field::type_id::create( "ub_cfg0" );
    ub_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg0_reg

class gtye_common_ub_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg1_reg )
  rand uvm_reg_field ub_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg1 = uvm_reg_field::type_id::create( "ub_cfg1" );
    ub_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg1_reg

class gtye_common_ub_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg2_reg )
  rand uvm_reg_field ub_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg2 = uvm_reg_field::type_id::create( "ub_cfg2" );
    ub_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg2_reg

class gtye_common_ub_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg3_reg )
  rand uvm_reg_field ub_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg3 = uvm_reg_field::type_id::create( "ub_cfg3" );
    ub_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg3_reg

class gtye_common_ub_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg4_reg )
  rand uvm_reg_field ub_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg4 = uvm_reg_field::type_id::create( "ub_cfg4" );
    ub_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg4_reg

class gtye_common_ub_cfg5_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg5_reg )
  rand uvm_reg_field ub_cfg5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg5 = uvm_reg_field::type_id::create( "ub_cfg5" );
    ub_cfg5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg5_reg

class gtye_common_ub_cfg6_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ub_cfg6_reg )
  rand uvm_reg_field ub_cfg6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ub_cfg6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ub_cfg6 = uvm_reg_field::type_id::create( "ub_cfg6" );
    ub_cfg6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ub_cfg6_reg

class gtye_common_bias_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg0_reg )
  rand uvm_reg_field bias_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg0 = uvm_reg_field::type_id::create( "bias_cfg0" );
    bias_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg0_reg

class gtye_common_bias_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg1_reg )
  rand uvm_reg_field bias_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg1 = uvm_reg_field::type_id::create( "bias_cfg1" );
    bias_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg1_reg

class gtye_common_bias_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg2_reg )
  rand uvm_reg_field bias_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg2 = uvm_reg_field::type_id::create( "bias_cfg2" );
    bias_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg2_reg

class gtye_common_bias_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg3_reg )
  rand uvm_reg_field bias_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg3 = uvm_reg_field::type_id::create( "bias_cfg3" );
    bias_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg3_reg

class gtye_common_bias_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg4_reg )
  rand uvm_reg_field bias_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg4 = uvm_reg_field::type_id::create( "bias_cfg4" );
    bias_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg4_reg

class gtye_common_qpll1_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg0_reg )
  rand uvm_reg_field qpll1_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg0 = uvm_reg_field::type_id::create( "qpll1_cfg0" );
    qpll1_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg0_reg

class gtye_common_common_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_common_cfg1_reg )
  rand uvm_reg_field common_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_common_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    common_cfg1 = uvm_reg_field::type_id::create( "common_cfg1" );
    common_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_common_cfg1_reg

class gtye_common_por_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_por_cfg_reg )
  rand uvm_reg_field por_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_por_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    por_cfg = uvm_reg_field::type_id::create( "por_cfg" );
    por_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_por_cfg_reg

class gtye_common_ppf1_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_ppf1_cfg_reg )
  rand uvm_reg_field ppf1_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_ppf1_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ppf1_cfg = uvm_reg_field::type_id::create( "ppf1_cfg" );
    ppf1_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_ppf1_cfg_reg

class gtye_common_qpll1clkout_rate_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1clkout_rate_reg )
  rand uvm_reg_field qpll1clkout_rate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1clkout_rate_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1clkout_rate = uvm_reg_field::type_id::create( "qpll1clkout_rate" );
    qpll1clkout_rate.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1clkout_rate_reg

class gtye_common_bias_cfg_rsvd_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_bias_cfg_rsvd_reg )
  rand uvm_reg_field bias_cfg_rsvd;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_bias_cfg_rsvd_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    bias_cfg_rsvd = uvm_reg_field::type_id::create( "bias_cfg_rsvd" );
    bias_cfg_rsvd.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_bias_cfg_rsvd_reg

class gtye_common_qpll1_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg1_reg )
  rand uvm_reg_field qpll1_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg1 = uvm_reg_field::type_id::create( "qpll1_cfg1" );
    qpll1_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg1_reg

class gtye_common_qpll1_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg2_reg )
  rand uvm_reg_field qpll1_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg2 = uvm_reg_field::type_id::create( "qpll1_cfg2" );
    qpll1_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg2_reg

class gtye_common_qpll1_lock_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_lock_cfg_reg )
  rand uvm_reg_field qpll1_lock_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_lock_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_lock_cfg = uvm_reg_field::type_id::create( "qpll1_lock_cfg" );
    qpll1_lock_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_lock_cfg_reg

class gtye_common_qpll1_init_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_init_cfg0_reg )
  rand uvm_reg_field qpll1_init_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_init_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_init_cfg0 = uvm_reg_field::type_id::create( "qpll1_init_cfg0" );
    qpll1_init_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_init_cfg0_reg

class gtye_common_qpll1_init_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_init_cfg1_reg )
  rand uvm_reg_field qpll1_init_cfg1;
  rand uvm_reg_field qpll1_fbdiv;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_init_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_init_cfg1 = uvm_reg_field::type_id::create( "qpll1_init_cfg1" );
    qpll1_init_cfg1.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll1_fbdiv = uvm_reg_field::type_id::create( "qpll1_fbdiv" );
    qpll1_fbdiv.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_init_cfg1_reg

class gtye_common_qpll1_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg3_reg )
  rand uvm_reg_field qpll1_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg3 = uvm_reg_field::type_id::create( "qpll1_cfg3" );
    qpll1_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg3_reg

class gtye_common_qpll1_cp_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cp_reg )
  rand uvm_reg_field qpll1_cp;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cp_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cp = uvm_reg_field::type_id::create( "qpll1_cp" );
    qpll1_cp.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cp_reg

class gtye_common_qpll1_refclk_div_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_refclk_div_reg )
  rand uvm_reg_field qpll1_refclk_div;
  rand uvm_reg_field qpll1_ips_refclk_sel;
  rand uvm_reg_field sarc_en;
  rand uvm_reg_field qpll1_ips_en;
  rand uvm_reg_field sarc_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_refclk_div_reg" );
    super.new( .name( name ), .n_bits( 14 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_refclk_div = uvm_reg_field::type_id::create( "qpll1_refclk_div" );
    qpll1_refclk_div.configure( .parent( this ), .size( 5 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll1_ips_refclk_sel = uvm_reg_field::type_id::create( "qpll1_ips_refclk_sel" );
    qpll1_ips_refclk_sel.configure( .parent( this ), .size( 3 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sarc_en = uvm_reg_field::type_id::create( "sarc_en" );
    sarc_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll1_ips_en = uvm_reg_field::type_id::create( "qpll1_ips_en" );
    qpll1_ips_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sarc_sel = uvm_reg_field::type_id::create( "sarc_sel" );
    sarc_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_refclk_div_reg

class gtye_common_qpll1_lpf_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_lpf_reg )
  rand uvm_reg_field qpll1_lpf;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_lpf_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_lpf = uvm_reg_field::type_id::create( "qpll1_lpf" );
    qpll1_lpf.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_lpf_reg

class gtye_common_qpll1_cfg1_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg1_g3_reg )
  rand uvm_reg_field qpll1_cfg1_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg1_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg1_g3 = uvm_reg_field::type_id::create( "qpll1_cfg1_g3" );
    qpll1_cfg1_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg1_g3_reg

class gtye_common_qpll1_cfg2_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg2_g3_reg )
  rand uvm_reg_field qpll1_cfg2_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg2_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg2_g3 = uvm_reg_field::type_id::create( "qpll1_cfg2_g3" );
    qpll1_cfg2_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg2_g3_reg

class gtye_common_qpll1_lpf_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_lpf_g3_reg )
  rand uvm_reg_field qpll1_lpf_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_lpf_g3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_lpf_g3 = uvm_reg_field::type_id::create( "qpll1_lpf_g3" );
    qpll1_lpf_g3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_lpf_g3_reg

class gtye_common_qpll1_lock_cfg_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_lock_cfg_g3_reg )
  rand uvm_reg_field qpll1_lock_cfg_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_lock_cfg_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_lock_cfg_g3 = uvm_reg_field::type_id::create( "qpll1_lock_cfg_g3" );
    qpll1_lock_cfg_g3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_lock_cfg_g3_reg

class gtye_common_rsvd_attr2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_rsvd_attr2_reg )
  rand uvm_reg_field rsvd_attr2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_rsvd_attr2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rsvd_attr2 = uvm_reg_field::type_id::create( "rsvd_attr2" );
    rsvd_attr2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_rsvd_attr2_reg

class gtye_common_qpll1_fbdiv_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_fbdiv_g3_reg )
  rand uvm_reg_field qpll1_fbdiv_g3;
  rand uvm_reg_field qpll1_rate_sw_use_drp;
  rand uvm_reg_field qpll1_pci_en;
  rand uvm_reg_field rxrecclkout1_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_fbdiv_g3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_fbdiv_g3 = uvm_reg_field::type_id::create( "qpll1_fbdiv_g3" );
    qpll1_fbdiv_g3.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll1_rate_sw_use_drp = uvm_reg_field::type_id::create( "qpll1_rate_sw_use_drp" );
    qpll1_rate_sw_use_drp.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    qpll1_pci_en = uvm_reg_field::type_id::create( "qpll1_pci_en" );
    qpll1_pci_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxrecclkout1_sel = uvm_reg_field::type_id::create( "rxrecclkout1_sel" );
    rxrecclkout1_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_fbdiv_g3_reg

class gtye_common_qpll1_sdm_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_sdm_cfg0_reg )
  rand uvm_reg_field qpll1_sdm_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_sdm_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_sdm_cfg0 = uvm_reg_field::type_id::create( "qpll1_sdm_cfg0" );
    qpll1_sdm_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_sdm_cfg0_reg

class gtye_common_qpll1_sdm_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_sdm_cfg1_reg )
  rand uvm_reg_field qpll1_sdm_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_sdm_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_sdm_cfg1 = uvm_reg_field::type_id::create( "qpll1_sdm_cfg1" );
    qpll1_sdm_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_sdm_cfg1_reg

class gtye_common_sdm1initseed0_0_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_sdm1initseed0_0_reg )
  rand uvm_reg_field sdm1initseed0_0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_sdm1initseed0_0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    sdm1initseed0_0 = uvm_reg_field::type_id::create( "sdm1initseed0_0" );
    sdm1initseed0_0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_sdm1initseed0_0_reg

class gtye_common_sdm1initseed0_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_sdm1initseed0_1_reg )
  rand uvm_reg_field sdm1initseed0_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_sdm1initseed0_1_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    sdm1initseed0_1 = uvm_reg_field::type_id::create( "sdm1initseed0_1" );
    sdm1initseed0_1.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_sdm1initseed0_1_reg

class gtye_common_qpll1_sdm_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_sdm_cfg2_reg )
  rand uvm_reg_field qpll1_sdm_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_sdm_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_sdm_cfg2 = uvm_reg_field::type_id::create( "qpll1_sdm_cfg2" );
    qpll1_sdm_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_sdm_cfg2_reg

class gtye_common_qpll1_cp_g3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cp_g3_reg )
  rand uvm_reg_field qpll1_cp_g3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cp_g3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cp_g3 = uvm_reg_field::type_id::create( "qpll1_cp_g3" );
    qpll1_cp_g3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cp_g3_reg

class gtye_common_rsvd_attr3_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_rsvd_attr3_reg )
  rand uvm_reg_field rsvd_attr3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_rsvd_attr3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rsvd_attr3 = uvm_reg_field::type_id::create( "rsvd_attr3" );
    rsvd_attr3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_rsvd_attr3_reg

class gtye_common_qpll1_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_common_qpll1_cfg4_reg )
  rand uvm_reg_field qpll1_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_qpll1_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1_cfg4 = uvm_reg_field::type_id::create( "qpll1_cfg4" );
    qpll1_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_common_qpll1_cfg4_reg
  
class gtye_common_reg_block extends uvm_reg_block;
  `uvm_object_utils( gtye_common_reg_block )
  rand gtye_common_qpll0_cfg0_reg qpll0_cfg0;
  rand gtye_common_common_cfg0_reg common_cfg0;
  rand gtye_common_rsvd_attr0_reg rsvd_attr0;
  rand gtye_common_ppf0_cfg_reg ppf0_cfg;
  rand gtye_common_qpll0clkout_rate_reg qpll0clkout_rate;
  rand gtye_common_qpll0_cfg1_reg qpll0_cfg1;
  rand gtye_common_qpll0_cfg2_reg qpll0_cfg2;
  rand gtye_common_qpll0_lock_cfg_reg qpll0_lock_cfg;
  rand gtye_common_qpll0_init_cfg0_reg qpll0_init_cfg0;
  rand gtye_common_qpll0_init_cfg1_reg qpll0_init_cfg1;
  rand gtye_common_qpll0_cfg3_reg qpll0_cfg3;
  rand gtye_common_qpll0_cp_reg qpll0_cp;
  rand gtye_common_qpll0_refclk_div_reg qpll0_refclk_div;
  rand gtye_common_qpll0_lpf_reg qpll0_lpf;
  rand gtye_common_qpll0_cfg1_g3_reg qpll0_cfg1_g3;
  rand gtye_common_qpll0_cfg2_g3_reg qpll0_cfg2_g3;
  rand gtye_common_qpll0_lpf_g3_reg qpll0_lpf_g3;
  rand gtye_common_qpll0_lock_cfg_g3_reg qpll0_lock_cfg_g3;
  rand gtye_common_rsvd_attr00_reg rsvd_attr00;
  rand gtye_common_qpll0_fbdiv_g3_reg qpll0_fbdiv_g3;
  rand gtye_common_qpll0_sdm_cfg0_reg qpll0_sdm_cfg0;
  rand gtye_common_qpll0_sdm_cfg1_reg qpll0_sdm_cfg1;
  rand gtye_common_sdm0initseed0_0_reg sdm0initseed0_0;
  rand gtye_common_sdm0initseed0_1_reg sdm0initseed0_1;
  rand gtye_common_qpll0_sdm_cfg2_reg qpll0_sdm_cfg2;
  rand gtye_common_qpll0_cp_g3_reg qpll0_cp_g3;
  rand gtye_common_rsvd_attr1_reg rsvd_attr1;
  rand gtye_common_qpll0_cfg4_reg qpll0_cfg4;
  rand gtye_common_ub_cfg0_reg ub_cfg0;
  rand gtye_common_ub_cfg1_reg ub_cfg1;
  rand gtye_common_ub_cfg2_reg ub_cfg2;
  rand gtye_common_ub_cfg3_reg ub_cfg3;
  rand gtye_common_ub_cfg4_reg ub_cfg4;
  rand gtye_common_ub_cfg5_reg ub_cfg5;
  rand gtye_common_ub_cfg6_reg ub_cfg6;
  rand gtye_common_bias_cfg0_reg bias_cfg0;
  rand gtye_common_bias_cfg1_reg bias_cfg1;
  rand gtye_common_bias_cfg2_reg bias_cfg2;
  rand gtye_common_bias_cfg3_reg bias_cfg3;
  rand gtye_common_bias_cfg4_reg bias_cfg4;
  rand gtye_common_qpll1_cfg0_reg qpll1_cfg0;
  rand gtye_common_common_cfg1_reg common_cfg1;
  rand gtye_common_por_cfg_reg por_cfg;
  rand gtye_common_ppf1_cfg_reg ppf1_cfg;
  rand gtye_common_qpll1clkout_rate_reg qpll1clkout_rate;
  rand gtye_common_bias_cfg_rsvd_reg bias_cfg_rsvd;
  rand gtye_common_qpll1_cfg1_reg qpll1_cfg1;
  rand gtye_common_qpll1_cfg2_reg qpll1_cfg2;
  rand gtye_common_qpll1_lock_cfg_reg qpll1_lock_cfg;
  rand gtye_common_qpll1_init_cfg0_reg qpll1_init_cfg0;
  rand gtye_common_qpll1_init_cfg1_reg qpll1_init_cfg1;
  rand gtye_common_qpll1_cfg3_reg qpll1_cfg3;
  rand gtye_common_qpll1_cp_reg qpll1_cp;
  rand gtye_common_qpll1_refclk_div_reg qpll1_refclk_div;
  rand gtye_common_qpll1_lpf_reg qpll1_lpf;
  rand gtye_common_qpll1_cfg1_g3_reg qpll1_cfg1_g3;
  rand gtye_common_qpll1_cfg2_g3_reg qpll1_cfg2_g3;
  rand gtye_common_qpll1_lpf_g3_reg qpll1_lpf_g3;
  rand gtye_common_qpll1_lock_cfg_g3_reg qpll1_lock_cfg_g3;
  rand gtye_common_rsvd_attr2_reg rsvd_attr2;
  rand gtye_common_qpll1_fbdiv_g3_reg qpll1_fbdiv_g3;
  rand gtye_common_qpll1_sdm_cfg0_reg qpll1_sdm_cfg0;
  rand gtye_common_qpll1_sdm_cfg1_reg qpll1_sdm_cfg1;
  rand gtye_common_sdm1initseed0_0_reg sdm1initseed0_0;
  rand gtye_common_sdm1initseed0_1_reg sdm1initseed0_1;
  rand gtye_common_qpll1_sdm_cfg2_reg qpll1_sdm_cfg2;
  rand gtye_common_qpll1_cp_g3_reg qpll1_cp_g3;
  rand gtye_common_rsvd_attr3_reg rsvd_attr3;
  rand gtye_common_qpll1_cfg4_reg qpll1_cfg4;
   
  uvm_reg_map reg_map;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_common_reg_block" );
    super.new( .name( name ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0_cfg0 = gtye_common_qpll0_cfg0_reg::type_id::create( "qpll0_cfg0" );
    qpll0_cfg0.configure( .blk_parent( this ) );
    qpll0_cfg0.build();
    common_cfg0 = gtye_common_common_cfg0_reg::type_id::create( "common_cfg0" );
    common_cfg0.configure( .blk_parent( this ) );
    common_cfg0.build();
    rsvd_attr0 = gtye_common_rsvd_attr0_reg::type_id::create( "rsvd_attr0" );
    rsvd_attr0.configure( .blk_parent( this ) );
    rsvd_attr0.build();
    ppf0_cfg = gtye_common_ppf0_cfg_reg::type_id::create( "ppf0_cfg" );
    ppf0_cfg.configure( .blk_parent( this ) );
    ppf0_cfg.build();
    qpll0clkout_rate = gtye_common_qpll0clkout_rate_reg::type_id::create( "qpll0clkout_rate" );
    qpll0clkout_rate.configure( .blk_parent( this ) );
    qpll0clkout_rate.build();
    qpll0_cfg1 = gtye_common_qpll0_cfg1_reg::type_id::create( "qpll0_cfg1" );
    qpll0_cfg1.configure( .blk_parent( this ) );
    qpll0_cfg1.build();
    qpll0_cfg2 = gtye_common_qpll0_cfg2_reg::type_id::create( "qpll0_cfg2" );
    qpll0_cfg2.configure( .blk_parent( this ) );
    qpll0_cfg2.build();
    qpll0_lock_cfg = gtye_common_qpll0_lock_cfg_reg::type_id::create( "qpll0_lock_cfg" );
    qpll0_lock_cfg.configure( .blk_parent( this ) );
    qpll0_lock_cfg.build();
    qpll0_init_cfg0 = gtye_common_qpll0_init_cfg0_reg::type_id::create( "qpll0_init_cfg0" );
    qpll0_init_cfg0.configure( .blk_parent( this ) );
    qpll0_init_cfg0.build();
    qpll0_init_cfg1 = gtye_common_qpll0_init_cfg1_reg::type_id::create( "qpll0_init_cfg1" );
    qpll0_init_cfg1.configure( .blk_parent( this ) );
    qpll0_init_cfg1.build();
    qpll0_cfg3 = gtye_common_qpll0_cfg3_reg::type_id::create( "qpll0_cfg3" );
    qpll0_cfg3.configure( .blk_parent( this ) );
    qpll0_cfg3.build();
    qpll0_cp = gtye_common_qpll0_cp_reg::type_id::create( "qpll0_cp" );
    qpll0_cp.configure( .blk_parent( this ) );
    qpll0_cp.build();
    qpll0_refclk_div = gtye_common_qpll0_refclk_div_reg::type_id::create( "qpll0_refclk_div" );
    qpll0_refclk_div.configure( .blk_parent( this ) );
    qpll0_refclk_div.build();
    qpll0_lpf = gtye_common_qpll0_lpf_reg::type_id::create( "qpll0_lpf" );
    qpll0_lpf.configure( .blk_parent( this ) );
    qpll0_lpf.build();
    qpll0_cfg1_g3 = gtye_common_qpll0_cfg1_g3_reg::type_id::create( "qpll0_cfg1_g3" );
    qpll0_cfg1_g3.configure( .blk_parent( this ) );
    qpll0_cfg1_g3.build();
    qpll0_cfg2_g3 = gtye_common_qpll0_cfg2_g3_reg::type_id::create( "qpll0_cfg2_g3" );
    qpll0_cfg2_g3.configure( .blk_parent( this ) );
    qpll0_cfg2_g3.build();
    qpll0_lpf_g3 = gtye_common_qpll0_lpf_g3_reg::type_id::create( "qpll0_lpf_g3" );
    qpll0_lpf_g3.configure( .blk_parent( this ) );
    qpll0_lpf_g3.build();
    qpll0_lock_cfg_g3 = gtye_common_qpll0_lock_cfg_g3_reg::type_id::create( "qpll0_lock_cfg_g3" );
    qpll0_lock_cfg_g3.configure( .blk_parent( this ) );
    qpll0_lock_cfg_g3.build();
    rsvd_attr00 = gtye_common_rsvd_attr00_reg::type_id::create( "rsvd_attr00" );
    rsvd_attr00.configure( .blk_parent( this ) );
    rsvd_attr00.build();
    qpll0_fbdiv_g3 = gtye_common_qpll0_fbdiv_g3_reg::type_id::create( "qpll0_fbdiv_g3" );
    qpll0_fbdiv_g3.configure( .blk_parent( this ) );
    qpll0_fbdiv_g3.build();
    qpll0_sdm_cfg0 = gtye_common_qpll0_sdm_cfg0_reg::type_id::create( "qpll0_sdm_cfg0" );
    qpll0_sdm_cfg0.configure( .blk_parent( this ) );
    qpll0_sdm_cfg0.build();
    qpll0_sdm_cfg1 = gtye_common_qpll0_sdm_cfg1_reg::type_id::create( "qpll0_sdm_cfg1" );
    qpll0_sdm_cfg1.configure( .blk_parent( this ) );
    qpll0_sdm_cfg1.build();
    sdm0initseed0_0 = gtye_common_sdm0initseed0_0_reg::type_id::create( "sdm0initseed0_0" );
    sdm0initseed0_0.configure( .blk_parent( this ) );
    sdm0initseed0_0.build();
    sdm0initseed0_1 = gtye_common_sdm0initseed0_1_reg::type_id::create( "sdm0initseed0_1" );
    sdm0initseed0_1.configure( .blk_parent( this ) );
    sdm0initseed0_1.build();
    qpll0_sdm_cfg2 = gtye_common_qpll0_sdm_cfg2_reg::type_id::create( "qpll0_sdm_cfg2" );
    qpll0_sdm_cfg2.configure( .blk_parent( this ) );
    qpll0_sdm_cfg2.build();
    qpll0_cp_g3 = gtye_common_qpll0_cp_g3_reg::type_id::create( "qpll0_cp_g3" );
    qpll0_cp_g3.configure( .blk_parent( this ) );
    qpll0_cp_g3.build();
    rsvd_attr1 = gtye_common_rsvd_attr1_reg::type_id::create( "rsvd_attr1" );
    rsvd_attr1.configure( .blk_parent( this ) );
    rsvd_attr1.build();
    qpll0_cfg4 = gtye_common_qpll0_cfg4_reg::type_id::create( "qpll0_cfg4" );
    qpll0_cfg4.configure( .blk_parent( this ) );
    qpll0_cfg4.build();
    ub_cfg0 = gtye_common_ub_cfg0_reg::type_id::create( "ub_cfg0" );
    ub_cfg0.configure( .blk_parent( this ) );
    ub_cfg0.build();
    ub_cfg1 = gtye_common_ub_cfg1_reg::type_id::create( "ub_cfg1" );
    ub_cfg1.configure( .blk_parent( this ) );
    ub_cfg1.build();
    ub_cfg2 = gtye_common_ub_cfg2_reg::type_id::create( "ub_cfg2" );
    ub_cfg2.configure( .blk_parent( this ) );
    ub_cfg2.build();
    ub_cfg3 = gtye_common_ub_cfg3_reg::type_id::create( "ub_cfg3" );
    ub_cfg3.configure( .blk_parent( this ) );
    ub_cfg3.build();
    ub_cfg4 = gtye_common_ub_cfg4_reg::type_id::create( "ub_cfg4" );
    ub_cfg4.configure( .blk_parent( this ) );
    ub_cfg4.build();
    ub_cfg5 = gtye_common_ub_cfg5_reg::type_id::create( "ub_cfg5" );
    ub_cfg5.configure( .blk_parent( this ) );
    ub_cfg5.build();
    ub_cfg6 = gtye_common_ub_cfg6_reg::type_id::create( "ub_cfg6" );
    ub_cfg6.configure( .blk_parent( this ) );
    ub_cfg6.build();
    bias_cfg0 = gtye_common_bias_cfg0_reg::type_id::create( "bias_cfg0" );
    bias_cfg0.configure( .blk_parent( this ) );
    bias_cfg0.build();
    bias_cfg1 = gtye_common_bias_cfg1_reg::type_id::create( "bias_cfg1" );
    bias_cfg1.configure( .blk_parent( this ) );
    bias_cfg1.build();
    bias_cfg2 = gtye_common_bias_cfg2_reg::type_id::create( "bias_cfg2" );
    bias_cfg2.configure( .blk_parent( this ) );
    bias_cfg2.build();
    bias_cfg3 = gtye_common_bias_cfg3_reg::type_id::create( "bias_cfg3" );
    bias_cfg3.configure( .blk_parent( this ) );
    bias_cfg3.build();
    bias_cfg4 = gtye_common_bias_cfg4_reg::type_id::create( "bias_cfg4" );
    bias_cfg4.configure( .blk_parent( this ) );
    bias_cfg4.build();
    qpll1_cfg0 = gtye_common_qpll1_cfg0_reg::type_id::create( "qpll1_cfg0" );
    qpll1_cfg0.configure( .blk_parent( this ) );
    qpll1_cfg0.build();
    common_cfg1 = gtye_common_common_cfg1_reg::type_id::create( "common_cfg1" );
    common_cfg1.configure( .blk_parent( this ) );
    common_cfg1.build();
    por_cfg = gtye_common_por_cfg_reg::type_id::create( "por_cfg" );
    por_cfg.configure( .blk_parent( this ) );
    por_cfg.build();
    ppf1_cfg = gtye_common_ppf1_cfg_reg::type_id::create( "ppf1_cfg" );
    ppf1_cfg.configure( .blk_parent( this ) );
    ppf1_cfg.build();
    qpll1clkout_rate = gtye_common_qpll1clkout_rate_reg::type_id::create( "qpll1clkout_rate" );
    qpll1clkout_rate.configure( .blk_parent( this ) );
    qpll1clkout_rate.build();
    bias_cfg_rsvd = gtye_common_bias_cfg_rsvd_reg::type_id::create( "bias_cfg_rsvd" );
    bias_cfg_rsvd.configure( .blk_parent( this ) );
    bias_cfg_rsvd.build();
    qpll1_cfg1 = gtye_common_qpll1_cfg1_reg::type_id::create( "qpll1_cfg1" );
    qpll1_cfg1.configure( .blk_parent( this ) );
    qpll1_cfg1.build();
    qpll1_cfg2 = gtye_common_qpll1_cfg2_reg::type_id::create( "qpll1_cfg2" );
    qpll1_cfg2.configure( .blk_parent( this ) );
    qpll1_cfg2.build();
    qpll1_lock_cfg = gtye_common_qpll1_lock_cfg_reg::type_id::create( "qpll1_lock_cfg" );
    qpll1_lock_cfg.configure( .blk_parent( this ) );
    qpll1_lock_cfg.build();
    qpll1_init_cfg0 = gtye_common_qpll1_init_cfg0_reg::type_id::create( "qpll1_init_cfg0" );
    qpll1_init_cfg0.configure( .blk_parent( this ) );
    qpll1_init_cfg0.build();
    qpll1_init_cfg1 = gtye_common_qpll1_init_cfg1_reg::type_id::create( "qpll1_init_cfg1" );
    qpll1_init_cfg1.configure( .blk_parent( this ) );
    qpll1_init_cfg1.build();
    qpll1_cfg3 = gtye_common_qpll1_cfg3_reg::type_id::create( "qpll1_cfg3" );
    qpll1_cfg3.configure( .blk_parent( this ) );
    qpll1_cfg3.build();
    qpll1_cp = gtye_common_qpll1_cp_reg::type_id::create( "qpll1_cp" );
    qpll1_cp.configure( .blk_parent( this ) );
    qpll1_cp.build();
    qpll1_refclk_div = gtye_common_qpll1_refclk_div_reg::type_id::create( "qpll1_refclk_div" );
    qpll1_refclk_div.configure( .blk_parent( this ) );
    qpll1_refclk_div.build();
    qpll1_lpf = gtye_common_qpll1_lpf_reg::type_id::create( "qpll1_lpf" );
    qpll1_lpf.configure( .blk_parent( this ) );
    qpll1_lpf.build();
    qpll1_cfg1_g3 = gtye_common_qpll1_cfg1_g3_reg::type_id::create( "qpll1_cfg1_g3" );
    qpll1_cfg1_g3.configure( .blk_parent( this ) );
    qpll1_cfg1_g3.build();
    qpll1_cfg2_g3 = gtye_common_qpll1_cfg2_g3_reg::type_id::create( "qpll1_cfg2_g3" );
    qpll1_cfg2_g3.configure( .blk_parent( this ) );
    qpll1_cfg2_g3.build();
    qpll1_lpf_g3 = gtye_common_qpll1_lpf_g3_reg::type_id::create( "qpll1_lpf_g3" );
    qpll1_lpf_g3.configure( .blk_parent( this ) );
    qpll1_lpf_g3.build();
    qpll1_lock_cfg_g3 = gtye_common_qpll1_lock_cfg_g3_reg::type_id::create( "qpll1_lock_cfg_g3" );
    qpll1_lock_cfg_g3.configure( .blk_parent( this ) );
    qpll1_lock_cfg_g3.build();
    rsvd_attr2 = gtye_common_rsvd_attr2_reg::type_id::create( "rsvd_attr2" );
    rsvd_attr2.configure( .blk_parent( this ) );
    rsvd_attr2.build();
    qpll1_fbdiv_g3 = gtye_common_qpll1_fbdiv_g3_reg::type_id::create( "qpll1_fbdiv_g3" );
    qpll1_fbdiv_g3.configure( .blk_parent( this ) );
    qpll1_fbdiv_g3.build();
    qpll1_sdm_cfg0 = gtye_common_qpll1_sdm_cfg0_reg::type_id::create( "qpll1_sdm_cfg0" );
    qpll1_sdm_cfg0.configure( .blk_parent( this ) );
    qpll1_sdm_cfg0.build();
    qpll1_sdm_cfg1 = gtye_common_qpll1_sdm_cfg1_reg::type_id::create( "qpll1_sdm_cfg1" );
    qpll1_sdm_cfg1.configure( .blk_parent( this ) );
    qpll1_sdm_cfg1.build();
    sdm1initseed0_0 = gtye_common_sdm1initseed0_0_reg::type_id::create( "sdm1initseed0_0" );
    sdm1initseed0_0.configure( .blk_parent( this ) );
    sdm1initseed0_0.build();
    sdm1initseed0_1 = gtye_common_sdm1initseed0_1_reg::type_id::create( "sdm1initseed0_1" );
    sdm1initseed0_1.configure( .blk_parent( this ) );
    sdm1initseed0_1.build();
    qpll1_sdm_cfg2 = gtye_common_qpll1_sdm_cfg2_reg::type_id::create( "qpll1_sdm_cfg2" );
    qpll1_sdm_cfg2.configure( .blk_parent( this ) );
    qpll1_sdm_cfg2.build();
    qpll1_cp_g3 = gtye_common_qpll1_cp_g3_reg::type_id::create( "qpll1_cp_g3" );
    qpll1_cp_g3.configure( .blk_parent( this ) );
    qpll1_cp_g3.build();
    rsvd_attr3 = gtye_common_rsvd_attr3_reg::type_id::create( "rsvd_attr3" );
    rsvd_attr3.configure( .blk_parent( this ) );
    rsvd_attr3.build();
    qpll1_cfg4 = gtye_common_qpll1_cfg4_reg::type_id::create( "qpll1_cfg4" );
    qpll1_cfg4.configure( .blk_parent( this ) );
    qpll1_cfg4.build();
    reg_map = create_map( .name( "reg_map" ), .base_addr( 0 ), .n_bytes( 8 ),
                          .endian( UVM_LITTLE_ENDIAN ), .byte_addressing( 1 ) );
    reg_map.add_reg( .rg( qpll0_cfg0 ), .offset( 8 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( common_cfg0 ), .offset( 9 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rsvd_attr0 ), .offset( 11 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ppf0_cfg ), .offset( 13 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0clkout_rate ), .offset( 14 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg1 ), .offset( 16 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg2 ), .offset( 17 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_lock_cfg ), .offset( 18 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_init_cfg0 ), .offset( 19 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_init_cfg1 ), .offset( 20 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg3 ), .offset( 21 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cp ), .offset( 22 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_refclk_div ), .offset( 24 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_lpf ), .offset( 25 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg1_g3 ), .offset( 26 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg2_g3 ), .offset( 27 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_lpf_g3 ), .offset( 28 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_lock_cfg_g3 ), .offset( 29 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rsvd_attr00 ), .offset( 30 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_fbdiv_g3 ), .offset( 31 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_sdm_cfg0 ), .offset( 32 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_sdm_cfg1 ), .offset( 33 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( sdm0initseed0_0 ), .offset( 34 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( sdm0initseed0_1 ), .offset( 35 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_sdm_cfg2 ), .offset( 36 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cp_g3 ), .offset( 37 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rsvd_attr1 ), .offset( 45 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll0_cfg4 ), .offset( 48 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg0 ), .offset( 72 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg1 ), .offset( 76 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg2 ), .offset( 80 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg3 ), .offset( 84 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg4 ), .offset( 88 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg5 ), .offset( 92 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ub_cfg6 ), .offset( 95 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg0 ), .offset( 129 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg1 ), .offset( 130 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg2 ), .offset( 131 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg3 ), .offset( 132 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg4 ), .offset( 134 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg0 ), .offset( 136 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( common_cfg1 ), .offset( 137 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( por_cfg ), .offset( 139 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ppf1_cfg ), .offset( 141 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1clkout_rate ), .offset( 142 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( bias_cfg_rsvd ), .offset( 143 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg1 ), .offset( 144 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg2 ), .offset( 145 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_lock_cfg ), .offset( 146 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_init_cfg0 ), .offset( 147 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_init_cfg1 ), .offset( 148 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg3 ), .offset( 149 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cp ), .offset( 150 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_refclk_div ), .offset( 152 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_lpf ), .offset( 153 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg1_g3 ), .offset( 154 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg2_g3 ), .offset( 155 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_lpf_g3 ), .offset( 156 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_lock_cfg_g3 ), .offset( 157 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rsvd_attr2 ), .offset( 158 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_fbdiv_g3 ), .offset( 159 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_sdm_cfg0 ), .offset( 160 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_sdm_cfg1 ), .offset( 161 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( sdm1initseed0_0 ), .offset( 162 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( sdm1initseed0_1 ), .offset( 163 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_sdm_cfg2 ), .offset( 164 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cp_g3 ), .offset( 165 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rsvd_attr3 ), .offset( 173 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( qpll1_cfg4 ), .offset( 176 ), .rights( "RW" ) );
  endfunction : build

endclass: gtye_common_reg_block