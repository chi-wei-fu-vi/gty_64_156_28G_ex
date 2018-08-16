
class gtye_channel_cdr_swap_mode_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cdr_swap_mode_en_reg )
  rand uvm_reg_field cdr_swap_mode_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cdr_swap_mode_en_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cdr_swap_mode_en = uvm_reg_field::type_id::create( "cdr_swap_mode_en" );
    cdr_swap_mode_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cdr_swap_mode_en_reg

class gtye_channel_rxbufreset_time_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxbufreset_time_reg )
  rand uvm_reg_field rxbufreset_time;
  rand uvm_reg_field cfok_pwrsve_en;
  rand uvm_reg_field eye_scan_swap_en;
  rand uvm_reg_field rx_data_width;
  rand uvm_reg_field rxcdrfreqreset_time;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxbufreset_time_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbufreset_time = uvm_reg_field::type_id::create( "rxbufreset_time" );
    rxbufreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    cfok_pwrsve_en = uvm_reg_field::type_id::create( "cfok_pwrsve_en" );
    cfok_pwrsve_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    eye_scan_swap_en = uvm_reg_field::type_id::create( "eye_scan_swap_en" );
    eye_scan_swap_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_data_width = uvm_reg_field::type_id::create( "rx_data_width" );
    rx_data_width.configure( .parent( this ), .size( 4 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxcdrfreqreset_time = uvm_reg_field::type_id::create( "rxcdrfreqreset_time" );
    rxcdrfreqreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxbufreset_time_reg

class gtye_channel_rxcdrphreset_time_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdrphreset_time_reg )
  rand uvm_reg_field rxcdrphreset_time;
  rand uvm_reg_field pci3_rx_elecidle_h2l_disable;
  rand uvm_reg_field rxdfelpmreset_time;
  rand uvm_reg_field rx_fabint_usrclk_flop;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdrphreset_time_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdrphreset_time = uvm_reg_field::type_id::create( "rxcdrphreset_time" );
    rxcdrphreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_rx_elecidle_h2l_disable = uvm_reg_field::type_id::create( "pci3_rx_elecidle_h2l_disable" );
    pci3_rx_elecidle_h2l_disable.configure( .parent( this ), .size( 3 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxdfelpmreset_time = uvm_reg_field::type_id::create( "rxdfelpmreset_time" );
    rxdfelpmreset_time.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_fabint_usrclk_flop = uvm_reg_field::type_id::create( "rx_fabint_usrclk_flop" );
    rx_fabint_usrclk_flop.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdrphreset_time_reg

class gtye_channel_rxpmareset_time_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxpmareset_time_reg )
  rand uvm_reg_field rxpmareset_time;
  rand uvm_reg_field pci3_rx_elecidle_lp4_disable;
  rand uvm_reg_field pci3_rx_fifo_disable;
  rand uvm_reg_field pci3_rx_elecidle_ei2_enable;
  rand uvm_reg_field rxpcsreset_time;
  rand uvm_reg_field rxelecidle_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxpmareset_time_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpmareset_time = uvm_reg_field::type_id::create( "rxpmareset_time" );
    rxpmareset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_rx_elecidle_lp4_disable = uvm_reg_field::type_id::create( "pci3_rx_elecidle_lp4_disable" );
    pci3_rx_elecidle_lp4_disable.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_rx_fifo_disable = uvm_reg_field::type_id::create( "pci3_rx_fifo_disable" );
    pci3_rx_fifo_disable.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_rx_elecidle_ei2_enable = uvm_reg_field::type_id::create( "pci3_rx_elecidle_ei2_enable" );
    pci3_rx_elecidle_ei2_enable.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxpcsreset_time = uvm_reg_field::type_id::create( "rxpcsreset_time" );
    rxpcsreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxelecidle_cfg = uvm_reg_field::type_id::create( "rxelecidle_cfg" );
    rxelecidle_cfg.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxpmareset_time_reg

class gtye_channel_rxdfe_hb_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hb_cfg1_reg )
  rand uvm_reg_field rxdfe_hb_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hb_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hb_cfg1 = uvm_reg_field::type_id::create( "rxdfe_hb_cfg1" );
    rxdfe_hb_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hb_cfg1_reg

class gtye_channel_txpmareset_time_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txpmareset_time_reg )
  rand uvm_reg_field txpmareset_time;
  rand uvm_reg_field txpcsreset_time;
  rand uvm_reg_field rx_pma_power_save;
  rand uvm_reg_field tx_pma_power_save;
  rand uvm_reg_field srstmode;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txpmareset_time_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpmareset_time = uvm_reg_field::type_id::create( "txpmareset_time" );
    txpmareset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txpcsreset_time = uvm_reg_field::type_id::create( "txpcsreset_time" );
    txpcsreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_pma_power_save = uvm_reg_field::type_id::create( "rx_pma_power_save" );
    rx_pma_power_save.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_pma_power_save = uvm_reg_field::type_id::create( "tx_pma_power_save" );
    tx_pma_power_save.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    srstmode = uvm_reg_field::type_id::create( "srstmode" );
    srstmode.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txpmareset_time_reg

class gtye_channel_tx_fifo_byp_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_fifo_byp_en_reg )
  rand uvm_reg_field tx_fifo_byp_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_fifo_byp_en_reg" );
    super.new( .name( name ), .n_bits( 4 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_fifo_byp_en = uvm_reg_field::type_id::create( "tx_fifo_byp_en" );
    tx_fifo_byp_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_fifo_byp_en_reg

class gtye_channel_tx_fabint_usrclk_flop_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_fabint_usrclk_flop_reg )
  rand uvm_reg_field tx_fabint_usrclk_flop;
  rand uvm_reg_field rxpmaclk_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_fabint_usrclk_flop_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_fabint_usrclk_flop = uvm_reg_field::type_id::create( "tx_fabint_usrclk_flop" );
    tx_fabint_usrclk_flop.configure( .parent( this ), .size( 1 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxpmaclk_sel = uvm_reg_field::type_id::create( "rxpmaclk_sel" );
    rxpmaclk_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_fabint_usrclk_flop_reg

class gtye_channel_tx_progclk_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_progclk_sel_reg )
  rand uvm_reg_field tx_progclk_sel;
  rand uvm_reg_field rxiscanreset_time;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_progclk_sel_reg" );
    super.new( .name( name ), .n_bits( 12 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_progclk_sel = uvm_reg_field::type_id::create( "tx_progclk_sel" );
    tx_progclk_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxiscanreset_time = uvm_reg_field::type_id::create( "rxiscanreset_time" );
    rxiscanreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_progclk_sel_reg

class gtye_channel_txamonsel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txamonsel_reg )
  rand uvm_reg_field txamonsel;
  rand uvm_reg_field blocksel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txamonsel_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txamonsel = uvm_reg_field::type_id::create( "txamonsel" );
    txamonsel.configure( .parent( this ), .size( 6 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    blocksel = uvm_reg_field::type_id::create( "blocksel" );
    blocksel.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txamonsel_reg

class gtye_channel_rxcdr_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg0_reg )
  rand uvm_reg_field rxcdr_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg0 = uvm_reg_field::type_id::create( "rxcdr_cfg0" );
    rxcdr_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg0_reg

class gtye_channel_rxcdr_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg1_reg )
  rand uvm_reg_field rxcdr_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg1 = uvm_reg_field::type_id::create( "rxcdr_cfg1" );
    rxcdr_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg1_reg

class gtye_channel_rxcdr_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg2_reg )
  rand uvm_reg_field rxcdr_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg2 = uvm_reg_field::type_id::create( "rxcdr_cfg2" );
    rxcdr_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg2_reg

class gtye_channel_rxcdr_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg3_reg )
  rand uvm_reg_field rxcdr_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg3 = uvm_reg_field::type_id::create( "rxcdr_cfg3" );
    rxcdr_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg3_reg

class gtye_channel_rxcdr_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg4_reg )
  rand uvm_reg_field rxcdr_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg4 = uvm_reg_field::type_id::create( "rxcdr_cfg4" );
    rxcdr_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg4_reg

class gtye_channel_cpll_lock_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_lock_cfg_reg )
  rand uvm_reg_field cpll_lock_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_lock_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_lock_cfg = uvm_reg_field::type_id::create( "cpll_lock_cfg" );
    cpll_lock_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_lock_cfg_reg

class gtye_channel_chan_bond_max_skew_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_max_skew_reg )
  rand uvm_reg_field chan_bond_max_skew;
  rand uvm_reg_field chan_bond_seq_len;
  rand uvm_reg_field chan_bond_seq_1_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_max_skew_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_max_skew = uvm_reg_field::type_id::create( "chan_bond_max_skew" );
    chan_bond_max_skew.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_len = uvm_reg_field::type_id::create( "chan_bond_seq_len" );
    chan_bond_seq_len.configure( .parent( this ), .size( 2 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_1_1 = uvm_reg_field::type_id::create( "chan_bond_seq_1_1" );
    chan_bond_seq_1_1.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_max_skew_reg

class gtye_channel_pci3_rx_elecidle_hi_count_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pci3_rx_elecidle_hi_count_reg )
  rand uvm_reg_field pci3_rx_elecidle_hi_count;
  rand uvm_reg_field chan_bond_seq_1_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pci3_rx_elecidle_hi_count_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pci3_rx_elecidle_hi_count = uvm_reg_field::type_id::create( "pci3_rx_elecidle_hi_count" );
    pci3_rx_elecidle_hi_count.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_1_3 = uvm_reg_field::type_id::create( "chan_bond_seq_1_3" );
    chan_bond_seq_1_3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pci3_rx_elecidle_hi_count_reg

class gtye_channel_pci3_rx_elecidle_h2l_count_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pci3_rx_elecidle_h2l_count_reg )
  rand uvm_reg_field pci3_rx_elecidle_h2l_count;
  rand uvm_reg_field chan_bond_seq_1_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pci3_rx_elecidle_h2l_count_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pci3_rx_elecidle_h2l_count = uvm_reg_field::type_id::create( "pci3_rx_elecidle_h2l_count" );
    pci3_rx_elecidle_h2l_count.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_1_4 = uvm_reg_field::type_id::create( "chan_bond_seq_1_4" );
    chan_bond_seq_1_4.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pci3_rx_elecidle_h2l_count_reg

class gtye_channel_rx_buffer_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_buffer_cfg_reg )
  rand uvm_reg_field rx_buffer_cfg;
  rand uvm_reg_field rx_defer_reset_buf_en;
  rand uvm_reg_field oobdivctl;
  rand uvm_reg_field pci3_auto_realign;
  rand uvm_reg_field pci3_pipe_rx_elecidle;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_buffer_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_buffer_cfg = uvm_reg_field::type_id::create( "rx_buffer_cfg" );
    rx_buffer_cfg.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_defer_reset_buf_en = uvm_reg_field::type_id::create( "rx_defer_reset_buf_en" );
    rx_defer_reset_buf_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    oobdivctl = uvm_reg_field::type_id::create( "oobdivctl" );
    oobdivctl.configure( .parent( this ), .size( 2 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_auto_realign = uvm_reg_field::type_id::create( "pci3_auto_realign" );
    pci3_auto_realign.configure( .parent( this ), .size( 2 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_pipe_rx_elecidle = uvm_reg_field::type_id::create( "pci3_pipe_rx_elecidle" );
    pci3_pipe_rx_elecidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_buffer_cfg_reg

class gtye_channel_chan_bond_seq_1_enable_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_1_enable_reg )
  rand uvm_reg_field chan_bond_seq_1_enable;
  rand uvm_reg_field pci3_rx_async_ebuf_bypass;
  rand uvm_reg_field chan_bond_seq_2_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_1_enable_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_1_enable = uvm_reg_field::type_id::create( "chan_bond_seq_1_enable" );
    chan_bond_seq_1_enable.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pci3_rx_async_ebuf_bypass = uvm_reg_field::type_id::create( "pci3_rx_async_ebuf_bypass" );
    pci3_rx_async_ebuf_bypass.configure( .parent( this ), .size( 2 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_2_1 = uvm_reg_field::type_id::create( "chan_bond_seq_2_1" );
    chan_bond_seq_2_1.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_1_enable_reg

class gtye_channel_chan_bond_seq_2_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_2_2_reg )
  rand uvm_reg_field chan_bond_seq_2_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_2_2_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_2_2 = uvm_reg_field::type_id::create( "chan_bond_seq_2_2" );
    chan_bond_seq_2_2.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_2_2_reg

class gtye_channel_chan_bond_seq_2_3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_2_3_reg )
  rand uvm_reg_field chan_bond_seq_2_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_2_3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_2_3 = uvm_reg_field::type_id::create( "chan_bond_seq_2_3" );
    chan_bond_seq_2_3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_2_3_reg

class gtye_channel_chan_bond_seq_2_4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_2_4_reg )
  rand uvm_reg_field chan_bond_seq_2_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_2_4_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_2_4 = uvm_reg_field::type_id::create( "chan_bond_seq_2_4" );
    chan_bond_seq_2_4.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_2_4_reg

class gtye_channel_chan_bond_seq_2_enable_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_2_enable_reg )
  rand uvm_reg_field chan_bond_seq_2_enable;
  rand uvm_reg_field chan_bond_seq_2_use;
  rand uvm_reg_field clk_cor_keep_idle;
  rand uvm_reg_field clk_cor_min_lat;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_2_enable_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_2_enable = uvm_reg_field::type_id::create( "chan_bond_seq_2_enable" );
    chan_bond_seq_2_enable.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_seq_2_use = uvm_reg_field::type_id::create( "chan_bond_seq_2_use" );
    chan_bond_seq_2_use.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_keep_idle = uvm_reg_field::type_id::create( "clk_cor_keep_idle" );
    clk_cor_keep_idle.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_min_lat = uvm_reg_field::type_id::create( "clk_cor_min_lat" );
    clk_cor_min_lat.configure( .parent( this ), .size( 6 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_2_enable_reg

class gtye_channel_clk_cor_max_lat_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_max_lat_reg )
  rand uvm_reg_field clk_cor_max_lat;
  rand uvm_reg_field clk_cor_precedence;
  rand uvm_reg_field clk_cor_repeat_wait;
  rand uvm_reg_field clk_cor_seq_len;
  rand uvm_reg_field chan_bond_keep_align;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_max_lat_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_max_lat = uvm_reg_field::type_id::create( "clk_cor_max_lat" );
    clk_cor_max_lat.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_precedence = uvm_reg_field::type_id::create( "clk_cor_precedence" );
    clk_cor_precedence.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_repeat_wait = uvm_reg_field::type_id::create( "clk_cor_repeat_wait" );
    clk_cor_repeat_wait.configure( .parent( this ), .size( 5 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_seq_len = uvm_reg_field::type_id::create( "clk_cor_seq_len" );
    clk_cor_seq_len.configure( .parent( this ), .size( 2 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    chan_bond_keep_align = uvm_reg_field::type_id::create( "chan_bond_keep_align" );
    chan_bond_keep_align.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_max_lat_reg

class gtye_channel_clk_cor_seq_1_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_1_1_reg )
  rand uvm_reg_field clk_cor_seq_1_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_1_1_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_1_1 = uvm_reg_field::type_id::create( "clk_cor_seq_1_1" );
    clk_cor_seq_1_1.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_1_1_reg

class gtye_channel_clk_cor_seq_1_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_1_2_reg )
  rand uvm_reg_field clk_cor_seq_1_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_1_2_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_1_2 = uvm_reg_field::type_id::create( "clk_cor_seq_1_2" );
    clk_cor_seq_1_2.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_1_2_reg

class gtye_channel_clk_cor_seq_1_3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_1_3_reg )
  rand uvm_reg_field clk_cor_seq_1_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_1_3_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_1_3 = uvm_reg_field::type_id::create( "clk_cor_seq_1_3" );
    clk_cor_seq_1_3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_1_3_reg

class gtye_channel_clk_cor_seq_1_4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_1_4_reg )
  rand uvm_reg_field clk_cor_seq_1_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_1_4_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_1_4 = uvm_reg_field::type_id::create( "clk_cor_seq_1_4" );
    clk_cor_seq_1_4.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_1_4_reg

class gtye_channel_clk_cor_seq_1_enable_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_1_enable_reg )
  rand uvm_reg_field clk_cor_seq_1_enable;
  rand uvm_reg_field clk_cor_seq_2_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_1_enable_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_1_enable = uvm_reg_field::type_id::create( "clk_cor_seq_1_enable" );
    clk_cor_seq_1_enable.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_seq_2_1 = uvm_reg_field::type_id::create( "clk_cor_seq_2_1" );
    clk_cor_seq_2_1.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_1_enable_reg

class gtye_channel_clk_cor_seq_2_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_2_2_reg )
  rand uvm_reg_field clk_cor_seq_2_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_2_2_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_2_2 = uvm_reg_field::type_id::create( "clk_cor_seq_2_2" );
    clk_cor_seq_2_2.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_2_2_reg

class gtye_channel_clk_cor_seq_2_enable_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_2_enable_reg )
  rand uvm_reg_field clk_cor_seq_2_enable;
  rand uvm_reg_field clk_cor_seq_2_use;
  rand uvm_reg_field clk_correct_use;
  rand uvm_reg_field clk_cor_seq_2_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_2_enable_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_2_enable = uvm_reg_field::type_id::create( "clk_cor_seq_2_enable" );
    clk_cor_seq_2_enable.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_seq_2_use = uvm_reg_field::type_id::create( "clk_cor_seq_2_use" );
    clk_cor_seq_2_use.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_correct_use = uvm_reg_field::type_id::create( "clk_correct_use" );
    clk_correct_use.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    clk_cor_seq_2_3 = uvm_reg_field::type_id::create( "clk_cor_seq_2_3" );
    clk_cor_seq_2_3.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_2_enable_reg

class gtye_channel_clk_cor_seq_2_4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_clk_cor_seq_2_4_reg )
  rand uvm_reg_field clk_cor_seq_2_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_clk_cor_seq_2_4_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    clk_cor_seq_2_4 = uvm_reg_field::type_id::create( "clk_cor_seq_2_4" );
    clk_cor_seq_2_4.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_clk_cor_seq_2_4_reg

class gtye_channel_rxdfe_he_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_he_cfg0_reg )
  rand uvm_reg_field rxdfe_he_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_he_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_he_cfg0 = uvm_reg_field::type_id::create( "rxdfe_he_cfg0" );
    rxdfe_he_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_he_cfg0_reg

class gtye_channel_align_comma_word_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_align_comma_word_reg )
  rand uvm_reg_field align_comma_word;
  rand uvm_reg_field align_comma_double;
  rand uvm_reg_field show_realign_comma;
  rand uvm_reg_field align_comma_enable;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_align_comma_word_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    align_comma_word = uvm_reg_field::type_id::create( "align_comma_word" );
    align_comma_word.configure( .parent( this ), .size( 3 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    align_comma_double = uvm_reg_field::type_id::create( "align_comma_double" );
    align_comma_double.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    show_realign_comma = uvm_reg_field::type_id::create( "show_realign_comma" );
    show_realign_comma.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    align_comma_enable = uvm_reg_field::type_id::create( "align_comma_enable" );
    align_comma_enable.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_align_comma_word_reg

class gtye_channel_cpll_fbdiv_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_fbdiv_reg )
  rand uvm_reg_field cpll_fbdiv;
  rand uvm_reg_field cpll_fbdiv_45;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_fbdiv_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_fbdiv = uvm_reg_field::type_id::create( "cpll_fbdiv" );
    cpll_fbdiv.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    cpll_fbdiv_45 = uvm_reg_field::type_id::create( "cpll_fbdiv_45" );
    cpll_fbdiv_45.configure( .parent( this ), .size( 1 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_fbdiv_reg

class gtye_channel_rxcdr_lock_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_lock_cfg0_reg )
  rand uvm_reg_field rxcdr_lock_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_lock_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_lock_cfg0 = uvm_reg_field::type_id::create( "rxcdr_lock_cfg0" );
    rxcdr_lock_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_lock_cfg0_reg

class gtye_channel_cpll_refclk_div_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_refclk_div_reg )
  rand uvm_reg_field cpll_refclk_div;
  rand uvm_reg_field cpll_ips_en;
  rand uvm_reg_field cpll_ips_refclk_sel;
  rand uvm_reg_field sata_cpll_cfg;
  rand uvm_reg_field a_txdiffctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_refclk_div_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_refclk_div = uvm_reg_field::type_id::create( "cpll_refclk_div" );
    cpll_refclk_div.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    cpll_ips_en = uvm_reg_field::type_id::create( "cpll_ips_en" );
    cpll_ips_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    cpll_ips_refclk_sel = uvm_reg_field::type_id::create( "cpll_ips_refclk_sel" );
    cpll_ips_refclk_sel.configure( .parent( this ), .size( 3 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sata_cpll_cfg = uvm_reg_field::type_id::create( "sata_cpll_cfg" );
    sata_cpll_cfg.configure( .parent( this ), .size( 2 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    a_txdiffctrl = uvm_reg_field::type_id::create( "a_txdiffctrl" );
    a_txdiffctrl.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_refclk_div_reg

class gtye_channel_cpll_init_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_init_cfg0_reg )
  rand uvm_reg_field cpll_init_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_init_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_init_cfg0 = uvm_reg_field::type_id::create( "cpll_init_cfg0" );
    cpll_init_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_init_cfg0_reg

class gtye_channel_dec_pcomma_detect_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_dec_pcomma_detect_reg )
  rand uvm_reg_field dec_pcomma_detect;
  rand uvm_reg_field tx_divreset_time;
  rand uvm_reg_field rx_divreset_time;
  rand uvm_reg_field a_txprogdivreset;
  rand uvm_reg_field a_rxprogdivreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_dec_pcomma_detect_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    dec_pcomma_detect = uvm_reg_field::type_id::create( "dec_pcomma_detect" );
    dec_pcomma_detect.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_divreset_time = uvm_reg_field::type_id::create( "tx_divreset_time" );
    tx_divreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_divreset_time = uvm_reg_field::type_id::create( "rx_divreset_time" );
    rx_divreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    a_txprogdivreset = uvm_reg_field::type_id::create( "a_txprogdivreset" );
    a_txprogdivreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    a_rxprogdivreset = uvm_reg_field::type_id::create( "a_rxprogdivreset" );
    a_rxprogdivreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_dec_pcomma_detect_reg

class gtye_channel_rxcdr_lock_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_lock_cfg1_reg )
  rand uvm_reg_field rxcdr_lock_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_lock_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_lock_cfg1 = uvm_reg_field::type_id::create( "rxcdr_lock_cfg1" );
    rxcdr_lock_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_lock_cfg1_reg

class gtye_channel_rxcfok_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcfok_cfg1_reg )
  rand uvm_reg_field rxcfok_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcfok_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcfok_cfg1 = uvm_reg_field::type_id::create( "rxcfok_cfg1" );
    rxcfok_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcfok_cfg1_reg

class gtye_channel_rxdfe_h2_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h2_cfg0_reg )
  rand uvm_reg_field rxdfe_h2_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h2_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h2_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h2_cfg0" );
    rxdfe_h2_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h2_cfg0_reg

class gtye_channel_rxdfe_h2_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h2_cfg1_reg )
  rand uvm_reg_field rxdfe_h2_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h2_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h2_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h2_cfg1" );
    rxdfe_h2_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h2_cfg1_reg

class gtye_channel_rxcfok_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcfok_cfg2_reg )
  rand uvm_reg_field rxcfok_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcfok_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcfok_cfg2 = uvm_reg_field::type_id::create( "rxcfok_cfg2" );
    rxcfok_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcfok_cfg2_reg

class gtye_channel_rxlpm_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_cfg_reg )
  rand uvm_reg_field rxlpm_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_cfg = uvm_reg_field::type_id::create( "rxlpm_cfg" );
    rxlpm_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_cfg_reg

class gtye_channel_rxlpm_kh_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_kh_cfg0_reg )
  rand uvm_reg_field rxlpm_kh_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_kh_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_kh_cfg0 = uvm_reg_field::type_id::create( "rxlpm_kh_cfg0" );
    rxlpm_kh_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_kh_cfg0_reg

class gtye_channel_rxlpm_kh_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_kh_cfg1_reg )
  rand uvm_reg_field rxlpm_kh_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_kh_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_kh_cfg1 = uvm_reg_field::type_id::create( "rxlpm_kh_cfg1" );
    rxlpm_kh_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_kh_cfg1_reg

class gtye_channel_rxdfelpm_kl_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfelpm_kl_cfg0_reg )
  rand uvm_reg_field rxdfelpm_kl_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfelpm_kl_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfelpm_kl_cfg0 = uvm_reg_field::type_id::create( "rxdfelpm_kl_cfg0" );
    rxdfelpm_kl_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfelpm_kl_cfg0_reg

class gtye_channel_rxdfelpm_kl_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfelpm_kl_cfg1_reg )
  rand uvm_reg_field rxdfelpm_kl_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfelpm_kl_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfelpm_kl_cfg1 = uvm_reg_field::type_id::create( "rxdfelpm_kl_cfg1" );
    rxdfelpm_kl_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfelpm_kl_cfg1_reg

class gtye_channel_rxlpm_os_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_os_cfg0_reg )
  rand uvm_reg_field rxlpm_os_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_os_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_os_cfg0 = uvm_reg_field::type_id::create( "rxlpm_os_cfg0" );
    rxlpm_os_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_os_cfg0_reg

class gtye_channel_rxlpm_os_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_os_cfg1_reg )
  rand uvm_reg_field rxlpm_os_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_os_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_os_cfg1 = uvm_reg_field::type_id::create( "rxlpm_os_cfg1" );
    rxlpm_os_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_os_cfg1_reg

class gtye_channel_rxlpm_gc_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxlpm_gc_cfg_reg )
  rand uvm_reg_field rxlpm_gc_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxlpm_gc_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpm_gc_cfg = uvm_reg_field::type_id::create( "rxlpm_gc_cfg" );
    rxlpm_gc_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxlpm_gc_cfg_reg

class gtye_channel_dmonitor_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_dmonitor_cfg1_reg )
  rand uvm_reg_field dmonitor_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_dmonitor_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    dmonitor_cfg1 = uvm_reg_field::type_id::create( "dmonitor_cfg1" );
    dmonitor_cfg1.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_dmonitor_cfg1_reg

class gtye_channel_es_control_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_control_reg )
  rand uvm_reg_field es_control;
  rand uvm_reg_field es_prescale;
  rand uvm_reg_field es_eye_scan_en;
  rand uvm_reg_field es_errdet_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_control_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_control = uvm_reg_field::type_id::create( "es_control" );
    es_control.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    es_prescale = uvm_reg_field::type_id::create( "es_prescale" );
    es_prescale.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    es_eye_scan_en = uvm_reg_field::type_id::create( "es_eye_scan_en" );
    es_eye_scan_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    es_errdet_en = uvm_reg_field::type_id::create( "es_errdet_en" );
    es_errdet_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_control_reg

class gtye_channel_rxdfe_gc_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_gc_cfg2_reg )
  rand uvm_reg_field rxdfe_gc_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_gc_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_gc_cfg2 = uvm_reg_field::type_id::create( "rxdfe_gc_cfg2" );
    rxdfe_gc_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_gc_cfg2_reg

class gtye_channel_txdly_lcfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txdly_lcfg_reg )
  rand uvm_reg_field txdly_lcfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txdly_lcfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txdly_lcfg = uvm_reg_field::type_id::create( "txdly_lcfg" );
    txdly_lcfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txdly_lcfg_reg

class gtye_channel_es_qualifier0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier0_reg )
  rand uvm_reg_field es_qualifier0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier0 = uvm_reg_field::type_id::create( "es_qualifier0" );
    es_qualifier0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier0_reg

class gtye_channel_es_qualifier1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier1_reg )
  rand uvm_reg_field es_qualifier1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier1 = uvm_reg_field::type_id::create( "es_qualifier1" );
    es_qualifier1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier1_reg

class gtye_channel_es_qualifier2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier2_reg )
  rand uvm_reg_field es_qualifier2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier2 = uvm_reg_field::type_id::create( "es_qualifier2" );
    es_qualifier2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier2_reg

class gtye_channel_es_qualifier3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier3_reg )
  rand uvm_reg_field es_qualifier3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier3 = uvm_reg_field::type_id::create( "es_qualifier3" );
    es_qualifier3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier3_reg

class gtye_channel_es_qualifier4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier4_reg )
  rand uvm_reg_field es_qualifier4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier4 = uvm_reg_field::type_id::create( "es_qualifier4" );
    es_qualifier4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier4_reg

class gtye_channel_es_qual_mask0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask0_reg )
  rand uvm_reg_field es_qual_mask0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask0 = uvm_reg_field::type_id::create( "es_qual_mask0" );
    es_qual_mask0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask0_reg

class gtye_channel_es_qual_mask1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask1_reg )
  rand uvm_reg_field es_qual_mask1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask1 = uvm_reg_field::type_id::create( "es_qual_mask1" );
    es_qual_mask1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask1_reg

class gtye_channel_es_qual_mask2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask2_reg )
  rand uvm_reg_field es_qual_mask2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask2 = uvm_reg_field::type_id::create( "es_qual_mask2" );
    es_qual_mask2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask2_reg

class gtye_channel_es_qual_mask3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask3_reg )
  rand uvm_reg_field es_qual_mask3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask3 = uvm_reg_field::type_id::create( "es_qual_mask3" );
    es_qual_mask3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask3_reg

class gtye_channel_es_qual_mask4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask4_reg )
  rand uvm_reg_field es_qual_mask4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask4 = uvm_reg_field::type_id::create( "es_qual_mask4" );
    es_qual_mask4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask4_reg

class gtye_channel_es_sdata_mask0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask0_reg )
  rand uvm_reg_field es_sdata_mask0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask0 = uvm_reg_field::type_id::create( "es_sdata_mask0" );
    es_sdata_mask0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask0_reg

class gtye_channel_es_sdata_mask1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask1_reg )
  rand uvm_reg_field es_sdata_mask1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask1 = uvm_reg_field::type_id::create( "es_sdata_mask1" );
    es_sdata_mask1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask1_reg

class gtye_channel_es_sdata_mask2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask2_reg )
  rand uvm_reg_field es_sdata_mask2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask2 = uvm_reg_field::type_id::create( "es_sdata_mask2" );
    es_sdata_mask2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask2_reg

class gtye_channel_es_sdata_mask3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask3_reg )
  rand uvm_reg_field es_sdata_mask3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask3 = uvm_reg_field::type_id::create( "es_sdata_mask3" );
    es_sdata_mask3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask3_reg

class gtye_channel_es_sdata_mask4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask4_reg )
  rand uvm_reg_field es_sdata_mask4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask4 = uvm_reg_field::type_id::create( "es_sdata_mask4" );
    es_sdata_mask4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask4_reg

class gtye_channel_fts_lane_deskew_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_fts_lane_deskew_en_reg )
  rand uvm_reg_field fts_lane_deskew_en;
  rand uvm_reg_field fts_deskew_seq_enable;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_fts_lane_deskew_en_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    fts_lane_deskew_en = uvm_reg_field::type_id::create( "fts_lane_deskew_en" );
    fts_lane_deskew_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    fts_deskew_seq_enable = uvm_reg_field::type_id::create( "fts_deskew_seq_enable" );
    fts_deskew_seq_enable.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_fts_lane_deskew_en_reg

class gtye_channel_es_horz_offset_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_horz_offset_reg )
  rand uvm_reg_field es_horz_offset;
  rand uvm_reg_field fts_lane_deskew_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_horz_offset_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_horz_offset = uvm_reg_field::type_id::create( "es_horz_offset" );
    es_horz_offset.configure( .parent( this ), .size( 12 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    fts_lane_deskew_cfg = uvm_reg_field::type_id::create( "fts_lane_deskew_cfg" );
    fts_lane_deskew_cfg.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_horz_offset_reg

class gtye_channel_rxdfe_hc_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hc_cfg1_reg )
  rand uvm_reg_field rxdfe_hc_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hc_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hc_cfg1 = uvm_reg_field::type_id::create( "rxdfe_hc_cfg1" );
    rxdfe_hc_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hc_cfg1_reg

class gtye_channel_es_pma_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_pma_cfg_reg )
  rand uvm_reg_field es_pma_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_pma_cfg_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_pma_cfg = uvm_reg_field::type_id::create( "es_pma_cfg" );
    es_pma_cfg.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_pma_cfg_reg

class gtye_channel_rx_dfe_agc_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_dfe_agc_cfg1_reg )
  rand uvm_reg_field rx_dfe_agc_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_dfe_agc_cfg1_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_dfe_agc_cfg1 = uvm_reg_field::type_id::create( "rx_dfe_agc_cfg1" );
    rx_dfe_agc_cfg1.configure( .parent( this ), .size( 3 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_dfe_agc_cfg1_reg

class gtye_channel_txfe_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txfe_cfg2_reg )
  rand uvm_reg_field txfe_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txfe_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txfe_cfg2 = uvm_reg_field::type_id::create( "txfe_cfg2" );
    txfe_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txfe_cfg2_reg

class gtye_channel_txfe_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txfe_cfg3_reg )
  rand uvm_reg_field txfe_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txfe_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txfe_cfg3 = uvm_reg_field::type_id::create( "txfe_cfg3" );
    txfe_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txfe_cfg3_reg

class gtye_channel_pcie_64b_dyn_clksw_dis_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_64b_dyn_clksw_dis_reg )
  rand uvm_reg_field pcie_64b_dyn_clksw_dis;
  rand uvm_reg_field local_master;
  rand uvm_reg_field pcs_pcie_en;
  rand uvm_reg_field pcie_gen4_64bit_int_en;
  rand uvm_reg_field align_mcomma_det;
  rand uvm_reg_field align_mcomma_value;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_64b_dyn_clksw_dis_reg" );
    super.new( .name( name ), .n_bits( 15 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_64b_dyn_clksw_dis = uvm_reg_field::type_id::create( "pcie_64b_dyn_clksw_dis" );
    pcie_64b_dyn_clksw_dis.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    local_master = uvm_reg_field::type_id::create( "local_master" );
    local_master.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcs_pcie_en = uvm_reg_field::type_id::create( "pcs_pcie_en" );
    pcs_pcie_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie_gen4_64bit_int_en = uvm_reg_field::type_id::create( "pcie_gen4_64bit_int_en" );
    pcie_gen4_64bit_int_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    align_mcomma_det = uvm_reg_field::type_id::create( "align_mcomma_det" );
    align_mcomma_det.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    align_mcomma_value = uvm_reg_field::type_id::create( "align_mcomma_value" );
    align_mcomma_value.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_64b_dyn_clksw_dis_reg

class gtye_channel_align_pcomma_det_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_align_pcomma_det_reg )
  rand uvm_reg_field align_pcomma_det;
  rand uvm_reg_field align_pcomma_value;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_align_pcomma_det_reg" );
    super.new( .name( name ), .n_bits( 11 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    align_pcomma_det = uvm_reg_field::type_id::create( "align_pcomma_det" );
    align_pcomma_det.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    align_pcomma_value = uvm_reg_field::type_id::create( "align_pcomma_value" );
    align_pcomma_value.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_align_pcomma_det_reg

class gtye_channel_tx_progdiv_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_progdiv_cfg_reg )
  rand uvm_reg_field tx_progdiv_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_progdiv_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_progdiv_cfg = uvm_reg_field::type_id::create( "tx_progdiv_cfg" );
    tx_progdiv_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_progdiv_cfg_reg

class gtye_channel_rxdfe_os_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_os_cfg0_reg )
  rand uvm_reg_field rxdfe_os_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_os_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_os_cfg0 = uvm_reg_field::type_id::create( "rxdfe_os_cfg0" );
    rxdfe_os_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_os_cfg0_reg

class gtye_channel_rxphdly_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxphdly_cfg_reg )
  rand uvm_reg_field rxphdly_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxphdly_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxphdly_cfg = uvm_reg_field::type_id::create( "rxphdly_cfg" );
    rxphdly_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxphdly_cfg_reg

class gtye_channel_rxdfe_os_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_os_cfg1_reg )
  rand uvm_reg_field rxdfe_os_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_os_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_os_cfg1 = uvm_reg_field::type_id::create( "rxdfe_os_cfg1" );
    rxdfe_os_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_os_cfg1_reg

class gtye_channel_rxdly_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdly_cfg_reg )
  rand uvm_reg_field rxdly_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdly_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdly_cfg = uvm_reg_field::type_id::create( "rxdly_cfg" );
    rxdly_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdly_cfg_reg

class gtye_channel_rxdly_lcfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdly_lcfg_reg )
  rand uvm_reg_field rxdly_lcfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdly_lcfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdly_lcfg = uvm_reg_field::type_id::create( "rxdly_lcfg" );
    rxdly_lcfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdly_lcfg_reg

class gtye_channel_rxdfe_hf_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hf_cfg0_reg )
  rand uvm_reg_field rxdfe_hf_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hf_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hf_cfg0 = uvm_reg_field::type_id::create( "rxdfe_hf_cfg0" );
    rxdfe_hf_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hf_cfg0_reg

class gtye_channel_rxdfe_hd_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hd_cfg0_reg )
  rand uvm_reg_field rxdfe_hd_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hd_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hd_cfg0 = uvm_reg_field::type_id::create( "rxdfe_hd_cfg0" );
    rxdfe_hd_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hd_cfg0_reg

class gtye_channel_rx_bias_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_bias_cfg0_reg )
  rand uvm_reg_field rx_bias_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_bias_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_bias_cfg0 = uvm_reg_field::type_id::create( "rx_bias_cfg0" );
    rx_bias_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_bias_cfg0_reg

class gtye_channel_pcs_rsvd0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcs_rsvd0_reg )
  rand uvm_reg_field pcs_rsvd0;
  rand uvm_reg_field pcie_gen4_new_eieos_det_en;
  rand uvm_reg_field usb3_rxtermination_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcs_rsvd0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcs_rsvd0 = uvm_reg_field::type_id::create( "pcs_rsvd0" );
    pcs_rsvd0.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie_gen4_new_eieos_det_en = uvm_reg_field::type_id::create( "pcie_gen4_new_eieos_det_en" );
    pcie_gen4_new_eieos_det_en.configure( .parent( this ), .size( 5 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb3_rxtermination_ctrl = uvm_reg_field::type_id::create( "usb3_rxtermination_ctrl" );
    usb3_rxtermination_ctrl.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcs_rsvd0_reg

class gtye_channel_rxph_monitor_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxph_monitor_sel_reg )
  rand uvm_reg_field rxph_monitor_sel;
  rand uvm_reg_field rx_cm_buf_pd;
  rand uvm_reg_field rx_cm_buf_cfg;
  rand uvm_reg_field rx_cm_trim;
  rand uvm_reg_field rx_cm_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxph_monitor_sel_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxph_monitor_sel = uvm_reg_field::type_id::create( "rxph_monitor_sel" );
    rxph_monitor_sel.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_cm_buf_pd = uvm_reg_field::type_id::create( "rx_cm_buf_pd" );
    rx_cm_buf_pd.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_cm_buf_cfg = uvm_reg_field::type_id::create( "rx_cm_buf_cfg" );
    rx_cm_buf_cfg.configure( .parent( this ), .size( 4 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_cm_trim = uvm_reg_field::type_id::create( "rx_cm_trim" );
    rx_cm_trim.configure( .parent( this ), .size( 4 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_cm_sel = uvm_reg_field::type_id::create( "rx_cm_sel" );
    rx_cm_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxph_monitor_sel_reg

class gtye_channel_rx_i2v_filter_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_i2v_filter_en_reg )
  rand uvm_reg_field rx_i2v_filter_en;
  rand uvm_reg_field rx_sum_dfetaprep_en;
  rand uvm_reg_field rx_sum_vcm_ovwr;
  rand uvm_reg_field rx_sum_iref_tune;
  rand uvm_reg_field eyescan_vp_range;
  rand uvm_reg_field rx_sum_vcmtune;
  rand uvm_reg_field rx_sum_vref_tune;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_i2v_filter_en_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_i2v_filter_en = uvm_reg_field::type_id::create( "rx_i2v_filter_en" );
    rx_i2v_filter_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_dfetaprep_en = uvm_reg_field::type_id::create( "rx_sum_dfetaprep_en" );
    rx_sum_dfetaprep_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_vcm_ovwr = uvm_reg_field::type_id::create( "rx_sum_vcm_ovwr" );
    rx_sum_vcm_ovwr.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_iref_tune = uvm_reg_field::type_id::create( "rx_sum_iref_tune" );
    rx_sum_iref_tune.configure( .parent( this ), .size( 4 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    eyescan_vp_range = uvm_reg_field::type_id::create( "eyescan_vp_range" );
    eyescan_vp_range.configure( .parent( this ), .size( 2 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_vcmtune = uvm_reg_field::type_id::create( "rx_sum_vcmtune" );
    rx_sum_vcmtune.configure( .parent( this ), .size( 4 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_vref_tune = uvm_reg_field::type_id::create( "rx_sum_vref_tune" );
    rx_sum_vref_tune.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_i2v_filter_en_reg

class gtye_channel_cbcc_data_source_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cbcc_data_source_sel_reg )
  rand uvm_reg_field cbcc_data_source_sel;
  rand uvm_reg_field oob_pwrup;
  rand uvm_reg_field rxoob_cfg;
  rand uvm_reg_field rxout_div;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cbcc_data_source_sel_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cbcc_data_source_sel = uvm_reg_field::type_id::create( "cbcc_data_source_sel" );
    cbcc_data_source_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    oob_pwrup = uvm_reg_field::type_id::create( "oob_pwrup" );
    oob_pwrup.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxoob_cfg = uvm_reg_field::type_id::create( "rxoob_cfg" );
    rxoob_cfg.configure( .parent( this ), .size( 9 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxout_div = uvm_reg_field::type_id::create( "rxout_div" );
    rxout_div.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cbcc_data_source_sel_reg

class gtye_channel_rx_sig_valid_dly_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_sig_valid_dly_reg )
  rand uvm_reg_field rx_sig_valid_dly;
  rand uvm_reg_field rxslide_mode;
  rand uvm_reg_field rxprbs_err_loopback;
  rand uvm_reg_field rxslide_auto_wait;
  rand uvm_reg_field rxbuf_en;
  rand uvm_reg_field rx_xclk_sel;
  rand uvm_reg_field rxgearbox_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_sig_valid_dly_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_sig_valid_dly = uvm_reg_field::type_id::create( "rx_sig_valid_dly" );
    rx_sig_valid_dly.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxslide_mode = uvm_reg_field::type_id::create( "rxslide_mode" );
    rxslide_mode.configure( .parent( this ), .size( 2 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxprbs_err_loopback = uvm_reg_field::type_id::create( "rxprbs_err_loopback" );
    rxprbs_err_loopback.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxslide_auto_wait = uvm_reg_field::type_id::create( "rxslide_auto_wait" );
    rxslide_auto_wait.configure( .parent( this ), .size( 4 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_en = uvm_reg_field::type_id::create( "rxbuf_en" );
    rxbuf_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_xclk_sel = uvm_reg_field::type_id::create( "rx_xclk_sel" );
    rx_xclk_sel.configure( .parent( this ), .size( 2 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxgearbox_en = uvm_reg_field::type_id::create( "rxgearbox_en" );
    rxgearbox_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_sig_valid_dly_reg

class gtye_channel_rxbuf_thresh_ovflw_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxbuf_thresh_ovflw_reg )
  rand uvm_reg_field rxbuf_thresh_ovflw;
  rand uvm_reg_field dmonitor_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxbuf_thresh_ovflw_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbuf_thresh_ovflw = uvm_reg_field::type_id::create( "rxbuf_thresh_ovflw" );
    rxbuf_thresh_ovflw.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    dmonitor_cfg0 = uvm_reg_field::type_id::create( "dmonitor_cfg0" );
    dmonitor_cfg0.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxbuf_thresh_ovflw_reg

class gtye_channel_rxbuf_thresh_ovrd_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxbuf_thresh_ovrd_reg )
  rand uvm_reg_field rxbuf_thresh_ovrd;
  rand uvm_reg_field rxbuf_reset_on_commaalign;
  rand uvm_reg_field rxbuf_reset_on_rate_change;
  rand uvm_reg_field rxbuf_reset_on_cb_change;
  rand uvm_reg_field rxbuf_thresh_undflw;
  rand uvm_reg_field rx_clkmux_en;
  rand uvm_reg_field rx_disperr_seq_match;
  rand uvm_reg_field rx_widemode_cdr;
  rand uvm_reg_field rx_int_datawidth;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxbuf_thresh_ovrd_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbuf_thresh_ovrd = uvm_reg_field::type_id::create( "rxbuf_thresh_ovrd" );
    rxbuf_thresh_ovrd.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_reset_on_commaalign = uvm_reg_field::type_id::create( "rxbuf_reset_on_commaalign" );
    rxbuf_reset_on_commaalign.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_reset_on_rate_change = uvm_reg_field::type_id::create( "rxbuf_reset_on_rate_change" );
    rxbuf_reset_on_rate_change.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_reset_on_cb_change = uvm_reg_field::type_id::create( "rxbuf_reset_on_cb_change" );
    rxbuf_reset_on_cb_change.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_thresh_undflw = uvm_reg_field::type_id::create( "rxbuf_thresh_undflw" );
    rxbuf_thresh_undflw.configure( .parent( this ), .size( 6 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_clkmux_en = uvm_reg_field::type_id::create( "rx_clkmux_en" );
    rx_clkmux_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_disperr_seq_match = uvm_reg_field::type_id::create( "rx_disperr_seq_match" );
    rx_disperr_seq_match.configure( .parent( this ), .size( 1 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_widemode_cdr = uvm_reg_field::type_id::create( "rx_widemode_cdr" );
    rx_widemode_cdr.configure( .parent( this ), .size( 2 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_int_datawidth = uvm_reg_field::type_id::create( "rx_int_datawidth" );
    rx_int_datawidth.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxbuf_thresh_ovrd_reg

class gtye_channel_rxbuf_eidle_hi_cnt_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxbuf_eidle_hi_cnt_reg )
  rand uvm_reg_field rxbuf_eidle_hi_cnt;
  rand uvm_reg_field rxcdr_hold_during_eidle;
  rand uvm_reg_field rx_dfe_lpm_hold_during_eidle;
  rand uvm_reg_field rx_widemode_cdr_gen3;
  rand uvm_reg_field rxbuf_eidle_lo_cnt;
  rand uvm_reg_field rxbuf_reset_on_eidle;
  rand uvm_reg_field rxcdr_fr_reset_on_eidle;
  rand uvm_reg_field rxcdr_ph_reset_on_eidle;
  rand uvm_reg_field rxbuf_addr_mode;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxbuf_eidle_hi_cnt_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbuf_eidle_hi_cnt = uvm_reg_field::type_id::create( "rxbuf_eidle_hi_cnt" );
    rxbuf_eidle_hi_cnt.configure( .parent( this ), .size( 4 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxcdr_hold_during_eidle = uvm_reg_field::type_id::create( "rxcdr_hold_during_eidle" );
    rxcdr_hold_during_eidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfe_lpm_hold_during_eidle = uvm_reg_field::type_id::create( "rx_dfe_lpm_hold_during_eidle" );
    rx_dfe_lpm_hold_during_eidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_widemode_cdr_gen3 = uvm_reg_field::type_id::create( "rx_widemode_cdr_gen3" );
    rx_widemode_cdr_gen3.configure( .parent( this ), .size( 2 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_eidle_lo_cnt = uvm_reg_field::type_id::create( "rxbuf_eidle_lo_cnt" );
    rxbuf_eidle_lo_cnt.configure( .parent( this ), .size( 4 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_reset_on_eidle = uvm_reg_field::type_id::create( "rxbuf_reset_on_eidle" );
    rxbuf_reset_on_eidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxcdr_fr_reset_on_eidle = uvm_reg_field::type_id::create( "rxcdr_fr_reset_on_eidle" );
    rxcdr_fr_reset_on_eidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxcdr_ph_reset_on_eidle = uvm_reg_field::type_id::create( "rxcdr_ph_reset_on_eidle" );
    rxcdr_ph_reset_on_eidle.configure( .parent( this ), .size( 1 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxbuf_addr_mode = uvm_reg_field::type_id::create( "rxbuf_addr_mode" );
    rxbuf_addr_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxbuf_eidle_hi_cnt_reg

class gtye_channel_sata_burst_val_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_sata_burst_val_reg )
  rand uvm_reg_field sata_burst_val;
  rand uvm_reg_field sas_12g_mode;
  rand uvm_reg_field usb_txidle_tune_enable;
  rand uvm_reg_field usb_rxidle_p0_ctrl;
  rand uvm_reg_field sata_burst_seq_len;
  rand uvm_reg_field sata_eidle_val;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_sata_burst_val_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    sata_burst_val = uvm_reg_field::type_id::create( "sata_burst_val" );
    sata_burst_val.configure( .parent( this ), .size( 3 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sas_12g_mode = uvm_reg_field::type_id::create( "sas_12g_mode" );
    sas_12g_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_txidle_tune_enable = uvm_reg_field::type_id::create( "usb_txidle_tune_enable" );
    usb_txidle_tune_enable.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_rxidle_p0_ctrl = uvm_reg_field::type_id::create( "usb_rxidle_p0_ctrl" );
    usb_rxidle_p0_ctrl.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sata_burst_seq_len = uvm_reg_field::type_id::create( "sata_burst_seq_len" );
    sata_burst_seq_len.configure( .parent( this ), .size( 4 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sata_eidle_val = uvm_reg_field::type_id::create( "sata_eidle_val" );
    sata_eidle_val.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_sata_burst_val_reg

class gtye_channel_usb_poll_sata_min_burst_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_poll_sata_min_burst_reg )
  rand uvm_reg_field usb_poll_sata_min_burst;
  rand uvm_reg_field rx_widemode_cdr_gen4;
  rand uvm_reg_field usb_u2_sas_min_com;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_poll_sata_min_burst_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_poll_sata_min_burst = uvm_reg_field::type_id::create( "usb_poll_sata_min_burst" );
    usb_poll_sata_min_burst.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_widemode_cdr_gen4 = uvm_reg_field::type_id::create( "rx_widemode_cdr_gen4" );
    rx_widemode_cdr_gen4.configure( .parent( this ), .size( 2 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_u2_sas_min_com = uvm_reg_field::type_id::create( "usb_u2_sas_min_com" );
    usb_u2_sas_min_com.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_poll_sata_min_burst_reg

class gtye_channel_usb_ping_sata_min_init_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_ping_sata_min_init_reg )
  rand uvm_reg_field usb_ping_sata_min_init;
  rand uvm_reg_field usb_u1_sata_min_wake;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_ping_sata_min_init_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_ping_sata_min_init = uvm_reg_field::type_id::create( "usb_ping_sata_min_init" );
    usb_ping_sata_min_init.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_u1_sata_min_wake = uvm_reg_field::type_id::create( "usb_u1_sata_min_wake" );
    usb_u1_sata_min_wake.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_ping_sata_min_init_reg

class gtye_channel_usb_poll_sata_max_burst_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_poll_sata_max_burst_reg )
  rand uvm_reg_field usb_poll_sata_max_burst;
  rand uvm_reg_field usb_u2_sas_max_com;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_poll_sata_max_burst_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_poll_sata_max_burst = uvm_reg_field::type_id::create( "usb_poll_sata_max_burst" );
    usb_poll_sata_max_burst.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_u2_sas_max_com = uvm_reg_field::type_id::create( "usb_u2_sas_max_com" );
    usb_u2_sas_max_com.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_poll_sata_max_burst_reg

class gtye_channel_usb_ping_sata_max_init_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_ping_sata_max_init_reg )
  rand uvm_reg_field usb_ping_sata_max_init;
  rand uvm_reg_field usb_u1_sata_max_wake;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_ping_sata_max_init_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_ping_sata_max_init = uvm_reg_field::type_id::create( "usb_ping_sata_max_init" );
    usb_ping_sata_max_init.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_u1_sata_max_wake = uvm_reg_field::type_id::create( "usb_u1_sata_max_wake" );
    usb_u1_sata_max_wake.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_ping_sata_max_init_reg

class gtye_channel_rx_clk25_div_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_clk25_div_reg )
  rand uvm_reg_field rx_clk25_div;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_clk25_div_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_clk25_div = uvm_reg_field::type_id::create( "rx_clk25_div" );
    rx_clk25_div.configure( .parent( this ), .size( 5 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_clk25_div_reg

class gtye_channel_rxdfe_ut_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_ut_cfg1_reg )
  rand uvm_reg_field rxdfe_ut_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_ut_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_ut_cfg1 = uvm_reg_field::type_id::create( "rxdfe_ut_cfg1" );
    rxdfe_ut_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_ut_cfg1_reg

class gtye_channel_txphdly_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txphdly_cfg1_reg )
  rand uvm_reg_field txphdly_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txphdly_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txphdly_cfg1 = uvm_reg_field::type_id::create( "txphdly_cfg1" );
    txphdly_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txphdly_cfg1_reg

class gtye_channel_rxdfe_vp_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_vp_cfg0_reg )
  rand uvm_reg_field rxdfe_vp_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_vp_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_vp_cfg0 = uvm_reg_field::type_id::create( "rxdfe_vp_cfg0" );
    rxdfe_vp_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_vp_cfg0_reg

class gtye_channel_txph_monitor_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txph_monitor_sel_reg )
  rand uvm_reg_field txph_monitor_sel;
  rand uvm_reg_field tapdly_set_tx;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txph_monitor_sel_reg" );
    super.new( .name( name ), .n_bits( 7 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txph_monitor_sel = uvm_reg_field::type_id::create( "txph_monitor_sel" );
    txph_monitor_sel.configure( .parent( this ), .size( 5 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tapdly_set_tx = uvm_reg_field::type_id::create( "tapdly_set_tx" );
    tapdly_set_tx.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txph_monitor_sel_reg

class gtye_channel_adapt_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_adapt_cfg2_reg )
  rand uvm_reg_field adapt_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_adapt_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    adapt_cfg2 = uvm_reg_field::type_id::create( "adapt_cfg2" );
    adapt_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_adapt_cfg2_reg

class gtye_channel_rxdfe_vp_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_vp_cfg1_reg )
  rand uvm_reg_field rxdfe_vp_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_vp_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_vp_cfg1 = uvm_reg_field::type_id::create( "rxdfe_vp_cfg1" );
    rxdfe_vp_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_vp_cfg1_reg

class gtye_channel_term_rcal_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_term_rcal_cfg_reg )
  rand uvm_reg_field term_rcal_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_term_rcal_cfg_reg" );
    super.new( .name( name ), .n_bits( 15 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    term_rcal_cfg = uvm_reg_field::type_id::create( "term_rcal_cfg" );
    term_rcal_cfg.configure( .parent( this ), .size( 15 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_term_rcal_cfg_reg

class gtye_channel_rxpi_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxpi_cfg0_reg )
  rand uvm_reg_field rxpi_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxpi_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpi_cfg0 = uvm_reg_field::type_id::create( "rxpi_cfg0" );
    rxpi_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxpi_cfg0_reg

class gtye_channel_pd_trans_time_from_p2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pd_trans_time_from_p2_reg )
  rand uvm_reg_field pd_trans_time_from_p2;
  rand uvm_reg_field term_rcal_ovrd;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pd_trans_time_from_p2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pd_trans_time_from_p2 = uvm_reg_field::type_id::create( "pd_trans_time_from_p2" );
    pd_trans_time_from_p2.configure( .parent( this ), .size( 12 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    term_rcal_ovrd = uvm_reg_field::type_id::create( "term_rcal_ovrd" );
    term_rcal_ovrd.configure( .parent( this ), .size( 3 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pd_trans_time_from_p2_reg

class gtye_channel_pd_trans_time_none_p2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pd_trans_time_none_p2_reg )
  rand uvm_reg_field pd_trans_time_none_p2;
  rand uvm_reg_field pd_trans_time_to_p2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pd_trans_time_none_p2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pd_trans_time_none_p2 = uvm_reg_field::type_id::create( "pd_trans_time_none_p2" );
    pd_trans_time_none_p2.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pd_trans_time_to_p2 = uvm_reg_field::type_id::create( "pd_trans_time_to_p2" );
    pd_trans_time_to_p2.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pd_trans_time_none_p2_reg

class gtye_channel_trans_time_rate_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_trans_time_rate_reg )
  rand uvm_reg_field trans_time_rate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_trans_time_rate_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    trans_time_rate = uvm_reg_field::type_id::create( "trans_time_rate" );
    trans_time_rate.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_trans_time_rate_reg

class gtye_channel_tst_rsv0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tst_rsv0_reg )
  rand uvm_reg_field tst_rsv0;
  rand uvm_reg_field tst_rsv1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tst_rsv0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tst_rsv0 = uvm_reg_field::type_id::create( "tst_rsv0" );
    tst_rsv0.configure( .parent( this ), .size( 8 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tst_rsv1 = uvm_reg_field::type_id::create( "tst_rsv1" );
    tst_rsv1.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tst_rsv0_reg

class gtye_channel_tx_clk25_div_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_clk25_div_reg )
  rand uvm_reg_field tx_clk25_div;
  rand uvm_reg_field tx_xclk_sel;
  rand uvm_reg_field tx_data_width;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_clk25_div_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_clk25_div = uvm_reg_field::type_id::create( "tx_clk25_div" );
    tx_clk25_div.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_xclk_sel = uvm_reg_field::type_id::create( "tx_xclk_sel" );
    tx_xclk_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_data_width = uvm_reg_field::type_id::create( "tx_data_width" );
    tx_data_width.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_clk25_div_reg

class gtye_channel_tx_deemph0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_deemph0_reg )
  rand uvm_reg_field tx_deemph0;
  rand uvm_reg_field tx_deemph1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_deemph0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_deemph0 = uvm_reg_field::type_id::create( "tx_deemph0" );
    tx_deemph0.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_deemph1 = uvm_reg_field::type_id::create( "tx_deemph1" );
    tx_deemph1.configure( .parent( this ), .size( 6 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_deemph0_reg

class gtye_channel_tx_maincursor_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_maincursor_sel_reg )
  rand uvm_reg_field tx_maincursor_sel;
  rand uvm_reg_field txgearbox_en;
  rand uvm_reg_field txout_div;
  rand uvm_reg_field txbuf_en;
  rand uvm_reg_field txbuf_reset_on_rate_change;
  rand uvm_reg_field tx_rxdetect_ref;
  rand uvm_reg_field txfifo_addr_cfg;
  rand uvm_reg_field tx_sw_meas;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_maincursor_sel_reg" );
    super.new( .name( name ), .n_bits( 15 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_maincursor_sel = uvm_reg_field::type_id::create( "tx_maincursor_sel" );
    tx_maincursor_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txgearbox_en = uvm_reg_field::type_id::create( "txgearbox_en" );
    txgearbox_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txout_div = uvm_reg_field::type_id::create( "txout_div" );
    txout_div.configure( .parent( this ), .size( 3 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txbuf_en = uvm_reg_field::type_id::create( "txbuf_en" );
    txbuf_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txbuf_reset_on_rate_change = uvm_reg_field::type_id::create( "txbuf_reset_on_rate_change" );
    txbuf_reset_on_rate_change.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_rxdetect_ref = uvm_reg_field::type_id::create( "tx_rxdetect_ref" );
    tx_rxdetect_ref.configure( .parent( this ), .size( 3 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txfifo_addr_cfg = uvm_reg_field::type_id::create( "txfifo_addr_cfg" );
    txfifo_addr_cfg.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_sw_meas = uvm_reg_field::type_id::create( "tx_sw_meas" );
    tx_sw_meas.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_maincursor_sel_reg

class gtye_channel_tx_rxdetect_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_rxdetect_cfg_reg )
  rand uvm_reg_field tx_rxdetect_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_rxdetect_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_rxdetect_cfg = uvm_reg_field::type_id::create( "tx_rxdetect_cfg" );
    tx_rxdetect_cfg.configure( .parent( this ), .size( 14 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_rxdetect_cfg_reg

class gtye_channel_tx_clkmux_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_clkmux_en_reg )
  rand uvm_reg_field tx_clkmux_en;
  rand uvm_reg_field tx_loopback_drive_hiz;
  rand uvm_reg_field tx_drive_mode;
  rand uvm_reg_field tx_eidle_assert_delay;
  rand uvm_reg_field tx_eidle_deassert_delay;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_clkmux_en_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_clkmux_en = uvm_reg_field::type_id::create( "tx_clkmux_en" );
    tx_clkmux_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_loopback_drive_hiz = uvm_reg_field::type_id::create( "tx_loopback_drive_hiz" );
    tx_loopback_drive_hiz.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_drive_mode = uvm_reg_field::type_id::create( "tx_drive_mode" );
    tx_drive_mode.configure( .parent( this ), .size( 5 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_eidle_assert_delay = uvm_reg_field::type_id::create( "tx_eidle_assert_delay" );
    tx_eidle_assert_delay.configure( .parent( this ), .size( 3 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_eidle_deassert_delay = uvm_reg_field::type_id::create( "tx_eidle_deassert_delay" );
    tx_eidle_deassert_delay.configure( .parent( this ), .size( 3 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_clkmux_en_reg

class gtye_channel_tx_margin_full_0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_margin_full_0_reg )
  rand uvm_reg_field tx_margin_full_0;
  rand uvm_reg_field tx_margin_full_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_margin_full_0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_margin_full_0 = uvm_reg_field::type_id::create( "tx_margin_full_0" );
    tx_margin_full_0.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_margin_full_1 = uvm_reg_field::type_id::create( "tx_margin_full_1" );
    tx_margin_full_1.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_margin_full_0_reg

class gtye_channel_tx_margin_full_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_margin_full_2_reg )
  rand uvm_reg_field tx_margin_full_2;
  rand uvm_reg_field tx_margin_full_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_margin_full_2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_margin_full_2 = uvm_reg_field::type_id::create( "tx_margin_full_2" );
    tx_margin_full_2.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_margin_full_3 = uvm_reg_field::type_id::create( "tx_margin_full_3" );
    tx_margin_full_3.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_margin_full_2_reg

class gtye_channel_tx_margin_full_4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_margin_full_4_reg )
  rand uvm_reg_field tx_margin_full_4;
  rand uvm_reg_field tx_margin_low_0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_margin_full_4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_margin_full_4 = uvm_reg_field::type_id::create( "tx_margin_full_4" );
    tx_margin_full_4.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_margin_low_0 = uvm_reg_field::type_id::create( "tx_margin_low_0" );
    tx_margin_low_0.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_margin_full_4_reg

class gtye_channel_tx_margin_low_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_margin_low_1_reg )
  rand uvm_reg_field tx_margin_low_1;
  rand uvm_reg_field tx_margin_low_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_margin_low_1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_margin_low_1 = uvm_reg_field::type_id::create( "tx_margin_low_1" );
    tx_margin_low_1.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_margin_low_2 = uvm_reg_field::type_id::create( "tx_margin_low_2" );
    tx_margin_low_2.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_margin_low_1_reg

class gtye_channel_tx_margin_low_3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_margin_low_3_reg )
  rand uvm_reg_field tx_margin_low_3;
  rand uvm_reg_field tx_margin_low_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_margin_low_3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_margin_low_3 = uvm_reg_field::type_id::create( "tx_margin_low_3" );
    tx_margin_low_3.configure( .parent( this ), .size( 7 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_margin_low_4 = uvm_reg_field::type_id::create( "tx_margin_low_4" );
    tx_margin_low_4.configure( .parent( this ), .size( 7 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_margin_low_3_reg

class gtye_channel_rxdfe_h3_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h3_cfg0_reg )
  rand uvm_reg_field rxdfe_h3_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h3_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h3_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h3_cfg0" );
    rxdfe_h3_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h3_cfg0_reg

class gtye_channel_tx_int_datawidth_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_int_datawidth_reg )
  rand uvm_reg_field tx_int_datawidth;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_int_datawidth_reg" );
    super.new( .name( name ), .n_bits( 12 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_int_datawidth = uvm_reg_field::type_id::create( "tx_int_datawidth" );
    tx_int_datawidth.configure( .parent( this ), .size( 2 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_int_datawidth_reg

class gtye_channel_rxprbs_linkacq_cnt_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxprbs_linkacq_cnt_reg )
  rand uvm_reg_field rxprbs_linkacq_cnt;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxprbs_linkacq_cnt_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxprbs_linkacq_cnt = uvm_reg_field::type_id::create( "rxprbs_linkacq_cnt" );
    rxprbs_linkacq_cnt.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxprbs_linkacq_cnt_reg

class gtye_channel_tx_pmadata_opt_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_pmadata_opt_reg )
  rand uvm_reg_field tx_pmadata_opt;
  rand uvm_reg_field rxsync_ovrd;
  rand uvm_reg_field txsync_ovrd;
  rand uvm_reg_field tx_idle_data_zero;
  rand uvm_reg_field a_rxoscalreset;
  rand uvm_reg_field rxoob_clk_cfg;
  rand uvm_reg_field txsync_skip_da;
  rand uvm_reg_field rxsync_skip_da;
  rand uvm_reg_field rxoscalreset_time;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_pmadata_opt_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_pmadata_opt = uvm_reg_field::type_id::create( "tx_pmadata_opt" );
    tx_pmadata_opt.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxsync_ovrd = uvm_reg_field::type_id::create( "rxsync_ovrd" );
    rxsync_ovrd.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txsync_ovrd = uvm_reg_field::type_id::create( "txsync_ovrd" );
    txsync_ovrd.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_idle_data_zero = uvm_reg_field::type_id::create( "tx_idle_data_zero" );
    tx_idle_data_zero.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    a_rxoscalreset = uvm_reg_field::type_id::create( "a_rxoscalreset" );
    a_rxoscalreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxoob_clk_cfg = uvm_reg_field::type_id::create( "rxoob_clk_cfg" );
    rxoob_clk_cfg.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txsync_skip_da = uvm_reg_field::type_id::create( "txsync_skip_da" );
    txsync_skip_da.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxsync_skip_da = uvm_reg_field::type_id::create( "rxsync_skip_da" );
    rxsync_skip_da.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxoscalreset_time = uvm_reg_field::type_id::create( "rxoscalreset_time" );
    rxoscalreset_time.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_pmadata_opt_reg

class gtye_channel_txsync_multilane_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txsync_multilane_reg )
  rand uvm_reg_field txsync_multilane;
  rand uvm_reg_field rxsync_multilane;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txsync_multilane_reg" );
    super.new( .name( name ), .n_bits( 11 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txsync_multilane = uvm_reg_field::type_id::create( "txsync_multilane" );
    txsync_multilane.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxsync_multilane = uvm_reg_field::type_id::create( "rxsync_multilane" );
    rxsync_multilane.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txsync_multilane_reg

class gtye_channel_acjtag_mode_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_acjtag_mode_reg )
  rand uvm_reg_field acjtag_mode;
  rand uvm_reg_field acjtag_debug_mode;
  rand uvm_reg_field acjtag_reset;
  rand uvm_reg_field rx_sum_vcm_bias_tune_en;
  rand uvm_reg_field rx_tune_afe_os;
  rand uvm_reg_field rx_dfe_kl_lpm_kl_cfg0;
  rand uvm_reg_field rx_dfe_kl_lpm_kl_cfg1;
  rand uvm_reg_field rx_sum_degen_avtt_overite;
  rand uvm_reg_field rx_sum_pwr_saving;
  rand uvm_reg_field rx_en_sum_rcal_b;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_acjtag_mode_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    acjtag_mode = uvm_reg_field::type_id::create( "acjtag_mode" );
    acjtag_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    acjtag_debug_mode = uvm_reg_field::type_id::create( "acjtag_debug_mode" );
    acjtag_debug_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    acjtag_reset = uvm_reg_field::type_id::create( "acjtag_reset" );
    acjtag_reset.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_vcm_bias_tune_en = uvm_reg_field::type_id::create( "rx_sum_vcm_bias_tune_en" );
    rx_sum_vcm_bias_tune_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_tune_afe_os = uvm_reg_field::type_id::create( "rx_tune_afe_os" );
    rx_tune_afe_os.configure( .parent( this ), .size( 2 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfe_kl_lpm_kl_cfg0 = uvm_reg_field::type_id::create( "rx_dfe_kl_lpm_kl_cfg0" );
    rx_dfe_kl_lpm_kl_cfg0.configure( .parent( this ), .size( 2 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfe_kl_lpm_kl_cfg1 = uvm_reg_field::type_id::create( "rx_dfe_kl_lpm_kl_cfg1" );
    rx_dfe_kl_lpm_kl_cfg1.configure( .parent( this ), .size( 3 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_degen_avtt_overite = uvm_reg_field::type_id::create( "rx_sum_degen_avtt_overite" );
    rx_sum_degen_avtt_overite.configure( .parent( this ), .size( 1 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_pwr_saving = uvm_reg_field::type_id::create( "rx_sum_pwr_saving" );
    rx_sum_pwr_saving.configure( .parent( this ), .size( 1 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_en_sum_rcal_b = uvm_reg_field::type_id::create( "rx_en_sum_rcal_b" );
    rx_en_sum_rcal_b.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_acjtag_mode_reg

class gtye_channel_rxdfelpm_kl_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfelpm_kl_cfg2_reg )
  rand uvm_reg_field rxdfelpm_kl_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfelpm_kl_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfelpm_kl_cfg2 = uvm_reg_field::type_id::create( "rxdfelpm_kl_cfg2" );
    rxdfelpm_kl_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfelpm_kl_cfg2_reg

class gtye_channel_txdly_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txdly_cfg_reg )
  rand uvm_reg_field txdly_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txdly_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txdly_cfg = uvm_reg_field::type_id::create( "txdly_cfg" );
    txdly_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txdly_cfg_reg

class gtye_channel_txph_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txph_cfg_reg )
  rand uvm_reg_field txph_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txph_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txph_cfg = uvm_reg_field::type_id::create( "txph_cfg" );
    txph_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txph_cfg_reg

class gtye_channel_txphdly_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txphdly_cfg0_reg )
  rand uvm_reg_field txphdly_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txphdly_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txphdly_cfg0 = uvm_reg_field::type_id::create( "txphdly_cfg0" );
    txphdly_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txphdly_cfg0_reg

class gtye_channel_adapt_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_adapt_cfg0_reg )
  rand uvm_reg_field adapt_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_adapt_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    adapt_cfg0 = uvm_reg_field::type_id::create( "adapt_cfg0" );
    adapt_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_adapt_cfg0_reg

class gtye_channel_adapt_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_adapt_cfg1_reg )
  rand uvm_reg_field adapt_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_adapt_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    adapt_cfg1 = uvm_reg_field::type_id::create( "adapt_cfg1" );
    adapt_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_adapt_cfg1_reg

class gtye_channel_rxcfok_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcfok_cfg0_reg )
  rand uvm_reg_field rxcfok_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcfok_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcfok_cfg0 = uvm_reg_field::type_id::create( "rxcfok_cfg0" );
    rxcfok_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcfok_cfg0_reg

class gtye_channel_es_clk_phase_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_clk_phase_sel_reg )
  rand uvm_reg_field es_clk_phase_sel;
  rand uvm_reg_field use_pcs_clk_phase_sel;
  rand uvm_reg_field sample_clk_phase;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_clk_phase_sel_reg" );
    super.new( .name( name ), .n_bits( 12 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_clk_phase_sel = uvm_reg_field::type_id::create( "es_clk_phase_sel" );
    es_clk_phase_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    use_pcs_clk_phase_sel = uvm_reg_field::type_id::create( "use_pcs_clk_phase_sel" );
    use_pcs_clk_phase_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    sample_clk_phase = uvm_reg_field::type_id::create( "sample_clk_phase" );
    sample_clk_phase.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_clk_phase_sel_reg

class gtye_channel_tx_pma_rsv0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_pma_rsv0_reg )
  rand uvm_reg_field tx_pma_rsv0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_pma_rsv0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_pma_rsv0 = uvm_reg_field::type_id::create( "tx_pma_rsv0" );
    tx_pma_rsv0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_pma_rsv0_reg

class gtye_channel_rx_afe_cm_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_afe_cm_en_reg )
  rand uvm_reg_field rx_afe_cm_en;
  rand uvm_reg_field rx_capff_sarc_enb;
  rand uvm_reg_field rx_eyescan_vs_neg_dir;
  rand uvm_reg_field rx_eyescan_vs_ut_sign;
  rand uvm_reg_field rx_eyescan_vs_code;
  rand uvm_reg_field rx_eyescan_vs_range;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_afe_cm_en_reg" );
    super.new( .name( name ), .n_bits( 13 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_afe_cm_en = uvm_reg_field::type_id::create( "rx_afe_cm_en" );
    rx_afe_cm_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_capff_sarc_enb = uvm_reg_field::type_id::create( "rx_capff_sarc_enb" );
    rx_capff_sarc_enb.configure( .parent( this ), .size( 1 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_eyescan_vs_neg_dir = uvm_reg_field::type_id::create( "rx_eyescan_vs_neg_dir" );
    rx_eyescan_vs_neg_dir.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_eyescan_vs_ut_sign = uvm_reg_field::type_id::create( "rx_eyescan_vs_ut_sign" );
    rx_eyescan_vs_ut_sign.configure( .parent( this ), .size( 1 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_eyescan_vs_code = uvm_reg_field::type_id::create( "rx_eyescan_vs_code" );
    rx_eyescan_vs_code.configure( .parent( this ), .size( 7 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_eyescan_vs_range = uvm_reg_field::type_id::create( "rx_eyescan_vs_range" );
    rx_eyescan_vs_range.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_afe_cm_en_reg

class gtye_channel_rxdfe_h5_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h5_cfg1_reg )
  rand uvm_reg_field rxdfe_h5_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h5_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h5_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h5_cfg1" );
    rxdfe_h5_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h5_cfg1_reg

class gtye_channel_gearbox_mode_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_gearbox_mode_reg )
  rand uvm_reg_field gearbox_mode;
  rand uvm_reg_field txpi_synfreq_ppm;
  rand uvm_reg_field txpi_invstrobe_sel;
  rand uvm_reg_field txpi_gray_sel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_gearbox_mode_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    gearbox_mode = uvm_reg_field::type_id::create( "gearbox_mode" );
    gearbox_mode.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txpi_synfreq_ppm = uvm_reg_field::type_id::create( "txpi_synfreq_ppm" );
    txpi_synfreq_ppm.configure( .parent( this ), .size( 3 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txpi_invstrobe_sel = uvm_reg_field::type_id::create( "txpi_invstrobe_sel" );
    txpi_invstrobe_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txpi_gray_sel = uvm_reg_field::type_id::create( "txpi_gray_sel" );
    txpi_gray_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_gearbox_mode_reg

class gtye_channel_txpi_ppm_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txpi_ppm_cfg_reg )
  rand uvm_reg_field txpi_ppm_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txpi_ppm_cfg_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpi_ppm_cfg = uvm_reg_field::type_id::create( "txpi_ppm_cfg" );
    txpi_ppm_cfg.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txpi_ppm_cfg_reg

class gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg )
  rand uvm_reg_field rx_dfelpm_klkh_agc_stup_en;
  rand uvm_reg_field rx_dfelpm_cfg0;
  rand uvm_reg_field rx_dfelpm_cfg1;
  rand uvm_reg_field rx_dfe_kl_lpm_kh_cfg0;
  rand uvm_reg_field rx_dfe_kl_lpm_kh_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_dfelpm_klkh_agc_stup_en = uvm_reg_field::type_id::create( "rx_dfelpm_klkh_agc_stup_en" );
    rx_dfelpm_klkh_agc_stup_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfelpm_cfg0 = uvm_reg_field::type_id::create( "rx_dfelpm_cfg0" );
    rx_dfelpm_cfg0.configure( .parent( this ), .size( 4 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfelpm_cfg1 = uvm_reg_field::type_id::create( "rx_dfelpm_cfg1" );
    rx_dfelpm_cfg1.configure( .parent( this ), .size( 1 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfe_kl_lpm_kh_cfg0 = uvm_reg_field::type_id::create( "rx_dfe_kl_lpm_kh_cfg0" );
    rx_dfe_kl_lpm_kh_cfg0.configure( .parent( this ), .size( 2 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_dfe_kl_lpm_kh_cfg1 = uvm_reg_field::type_id::create( "rx_dfe_kl_lpm_kh_cfg1" );
    rx_dfe_kl_lpm_kh_cfg1.configure( .parent( this ), .size( 3 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg

class gtye_channel_txfe_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txfe_cfg0_reg )
  rand uvm_reg_field txfe_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txfe_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txfe_cfg0 = uvm_reg_field::type_id::create( "txfe_cfg0" );
    txfe_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txfe_cfg0_reg

class gtye_channel_rxdfe_ut_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_ut_cfg0_reg )
  rand uvm_reg_field rxdfe_ut_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_ut_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_ut_cfg0 = uvm_reg_field::type_id::create( "rxdfe_ut_cfg0" );
    rxdfe_ut_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_ut_cfg0_reg

class gtye_channel_cpll_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_cfg0_reg )
  rand uvm_reg_field cpll_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_cfg0 = uvm_reg_field::type_id::create( "cpll_cfg0" );
    cpll_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_cfg0_reg

class gtye_channel_cpll_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_cfg1_reg )
  rand uvm_reg_field cpll_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_cfg1 = uvm_reg_field::type_id::create( "cpll_cfg1" );
    cpll_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_cfg1_reg

class gtye_channel_txfe_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txfe_cfg1_reg )
  rand uvm_reg_field txfe_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txfe_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txfe_cfg1 = uvm_reg_field::type_id::create( "txfe_cfg1" );
    txfe_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txfe_cfg1_reg

class gtye_channel_rxcdr_cfg0_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg0_gen3_reg )
  rand uvm_reg_field rxcdr_cfg0_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg0_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg0_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg0_gen3" );
    rxcdr_cfg0_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg0_gen3_reg

class gtye_channel_rxcdr_cfg1_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg1_gen3_reg )
  rand uvm_reg_field rxcdr_cfg1_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg1_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg1_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg1_gen3" );
    rxcdr_cfg1_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg1_gen3_reg

class gtye_channel_rxcdr_cfg2_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg2_gen3_reg )
  rand uvm_reg_field rxcdr_cfg2_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg2_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg2_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg2_gen3" );
    rxcdr_cfg2_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg2_gen3_reg

class gtye_channel_rxcdr_cfg3_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg3_gen3_reg )
  rand uvm_reg_field rxcdr_cfg3_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg3_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg3_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg3_gen3" );
    rxcdr_cfg3_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg3_gen3_reg

class gtye_channel_rxcdr_cfg4_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg4_gen3_reg )
  rand uvm_reg_field rxcdr_cfg4_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg4_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg4_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg4_gen3" );
    rxcdr_cfg4_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg4_gen3_reg

class gtye_channel_txpi_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txpi_cfg0_reg )
  rand uvm_reg_field txpi_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txpi_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpi_cfg0 = uvm_reg_field::type_id::create( "txpi_cfg0" );
    txpi_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txpi_cfg0_reg

class gtye_channel_txpi_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txpi_cfg1_reg )
  rand uvm_reg_field txpi_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txpi_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpi_cfg1 = uvm_reg_field::type_id::create( "txpi_cfg1" );
    txpi_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txpi_cfg1_reg

class gtye_channel_pcie_rxpma_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_rxpma_cfg_reg )
  rand uvm_reg_field pcie_rxpma_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_rxpma_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_rxpma_cfg = uvm_reg_field::type_id::create( "pcie_rxpma_cfg" );
    pcie_rxpma_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_rxpma_cfg_reg

class gtye_channel_pcie_txpcs_cfg_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_txpcs_cfg_gen3_reg )
  rand uvm_reg_field pcie_txpcs_cfg_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_txpcs_cfg_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_txpcs_cfg_gen3 = uvm_reg_field::type_id::create( "pcie_txpcs_cfg_gen3" );
    pcie_txpcs_cfg_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_txpcs_cfg_gen3_reg

class gtye_channel_pcie_txpma_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_txpma_cfg_reg )
  rand uvm_reg_field pcie_txpma_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_txpma_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_txpma_cfg = uvm_reg_field::type_id::create( "pcie_txpma_cfg" );
    pcie_txpma_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_txpma_cfg_reg

class gtye_channel_rx_clk_slip_ovrd_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_clk_slip_ovrd_reg )
  rand uvm_reg_field rx_clk_slip_ovrd;
  rand uvm_reg_field txpi_ppm;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_clk_slip_ovrd_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_clk_slip_ovrd = uvm_reg_field::type_id::create( "rx_clk_slip_ovrd" );
    rx_clk_slip_ovrd.configure( .parent( this ), .size( 5 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txpi_ppm = uvm_reg_field::type_id::create( "txpi_ppm" );
    txpi_ppm.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_clk_slip_ovrd_reg

class gtye_channel_pcie_pll_sel_mode_gen4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_pll_sel_mode_gen4_reg )
  rand uvm_reg_field pcie_pll_sel_mode_gen4;
  rand uvm_reg_field pcie_pll_sel_mode_gen3;
  rand uvm_reg_field pcie_pll_sel_mode_gen12;
  rand uvm_reg_field rate_sw_use_drp;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_pll_sel_mode_gen4_reg" );
    super.new( .name( name ), .n_bits( 15 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_pll_sel_mode_gen4 = uvm_reg_field::type_id::create( "pcie_pll_sel_mode_gen4" );
    pcie_pll_sel_mode_gen4.configure( .parent( this ), .size( 2 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie_pll_sel_mode_gen3 = uvm_reg_field::type_id::create( "pcie_pll_sel_mode_gen3" );
    pcie_pll_sel_mode_gen3.configure( .parent( this ), .size( 2 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie_pll_sel_mode_gen12 = uvm_reg_field::type_id::create( "pcie_pll_sel_mode_gen12" );
    pcie_pll_sel_mode_gen12.configure( .parent( this ), .size( 2 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rate_sw_use_drp = uvm_reg_field::type_id::create( "rate_sw_use_drp" );
    rate_sw_use_drp.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_pll_sel_mode_gen4_reg

class gtye_channel_rxdfe_hd_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hd_cfg1_reg )
  rand uvm_reg_field rxdfe_hd_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hd_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hd_cfg1 = uvm_reg_field::type_id::create( "rxdfe_hd_cfg1" );
    rxdfe_hd_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hd_cfg1_reg

class gtye_channel_rxcdr_cfg5_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg5_gen3_reg )
  rand uvm_reg_field rxcdr_cfg5_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg5_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg5_gen3 = uvm_reg_field::type_id::create( "rxcdr_cfg5_gen3" );
    rxcdr_cfg5_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg5_gen3_reg

class gtye_channel_rxdfe_kh_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_kh_cfg3_reg )
  rand uvm_reg_field rxdfe_kh_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_kh_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_kh_cfg3 = uvm_reg_field::type_id::create( "rxdfe_kh_cfg3" );
    rxdfe_kh_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_kh_cfg3_reg

class gtye_channel_rxdfe_kh_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_kh_cfg2_reg )
  rand uvm_reg_field rxdfe_kh_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_kh_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_kh_cfg2 = uvm_reg_field::type_id::create( "rxdfe_kh_cfg2" );
    rxdfe_kh_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_kh_cfg2_reg

class gtye_channel_rxdfe_kh_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_kh_cfg1_reg )
  rand uvm_reg_field rxdfe_kh_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_kh_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_kh_cfg1 = uvm_reg_field::type_id::create( "rxdfe_kh_cfg1" );
    rxdfe_kh_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_kh_cfg1_reg

class gtye_channel_rxdfe_h5_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h5_cfg0_reg )
  rand uvm_reg_field rxdfe_h5_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h5_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h5_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h5_cfg0" );
    rxdfe_h5_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h5_cfg0_reg

class gtye_channel_rxcdr_cfg5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg5_reg )
  rand uvm_reg_field rxcdr_cfg5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg5 = uvm_reg_field::type_id::create( "rxcdr_cfg5" );
    rxcdr_cfg5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg5_reg

class gtye_channel_rxdfe_he_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_he_cfg1_reg )
  rand uvm_reg_field rxdfe_he_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_he_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_he_cfg1 = uvm_reg_field::type_id::create( "rxdfe_he_cfg1" );
    rxdfe_he_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_he_cfg1_reg

class gtye_channel_cpll_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_cfg3_reg )
  rand uvm_reg_field cpll_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_cfg3 = uvm_reg_field::type_id::create( "cpll_cfg3" );
    cpll_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_cfg3_reg

class gtye_channel_rxdfe_h6_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h6_cfg0_reg )
  rand uvm_reg_field rxdfe_h6_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h6_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h6_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h6_cfg0" );
    rxdfe_h6_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h6_cfg0_reg

class gtye_channel_rxdfe_h6_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h6_cfg1_reg )
  rand uvm_reg_field rxdfe_h6_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h6_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h6_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h6_cfg1" );
    rxdfe_h6_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h6_cfg1_reg

class gtye_channel_rxdfe_h7_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h7_cfg0_reg )
  rand uvm_reg_field rxdfe_h7_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h7_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h7_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h7_cfg0" );
    rxdfe_h7_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h7_cfg0_reg

class gtye_channel_ddi_realign_wait_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ddi_realign_wait_reg )
  rand uvm_reg_field ddi_realign_wait;
  rand uvm_reg_field ddi_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ddi_realign_wait_reg" );
    super.new( .name( name ), .n_bits( 7 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ddi_realign_wait = uvm_reg_field::type_id::create( "ddi_realign_wait" );
    ddi_realign_wait.configure( .parent( this ), .size( 5 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    ddi_ctrl = uvm_reg_field::type_id::create( "ddi_ctrl" );
    ddi_ctrl.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ddi_realign_wait_reg

class gtye_channel_txgbox_fifo_init_rd_addr_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txgbox_fifo_init_rd_addr_reg )
  rand uvm_reg_field txgbox_fifo_init_rd_addr;
  rand uvm_reg_field tx_sample_period;
  rand uvm_reg_field rxgbox_fifo_init_rd_addr;
  rand uvm_reg_field rx_sample_period;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txgbox_fifo_init_rd_addr_reg" );
    super.new( .name( name ), .n_bits( 12 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txgbox_fifo_init_rd_addr = uvm_reg_field::type_id::create( "txgbox_fifo_init_rd_addr" );
    txgbox_fifo_init_rd_addr.configure( .parent( this ), .size( 3 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_sample_period = uvm_reg_field::type_id::create( "tx_sample_period" );
    tx_sample_period.configure( .parent( this ), .size( 3 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxgbox_fifo_init_rd_addr = uvm_reg_field::type_id::create( "rxgbox_fifo_init_rd_addr" );
    rxgbox_fifo_init_rd_addr.configure( .parent( this ), .size( 3 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sample_period = uvm_reg_field::type_id::create( "rx_sample_period" );
    rx_sample_period.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txgbox_fifo_init_rd_addr_reg

class gtye_channel_cpll_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_cpll_cfg2_reg )
  rand uvm_reg_field cpll_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_cpll_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cpll_cfg2 = uvm_reg_field::type_id::create( "cpll_cfg2" );
    cpll_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_cpll_cfg2_reg

class gtye_channel_rxphsamp_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxphsamp_cfg_reg )
  rand uvm_reg_field rxphsamp_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxphsamp_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxphsamp_cfg = uvm_reg_field::type_id::create( "rxphsamp_cfg" );
    rxphsamp_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxphsamp_cfg_reg

class gtye_channel_rxphslip_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxphslip_cfg_reg )
  rand uvm_reg_field rxphslip_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxphslip_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxphslip_cfg = uvm_reg_field::type_id::create( "rxphslip_cfg" );
    rxphslip_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxphslip_cfg_reg

class gtye_channel_rxphbeacon_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxphbeacon_cfg_reg )
  rand uvm_reg_field rxphbeacon_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxphbeacon_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxphbeacon_cfg = uvm_reg_field::type_id::create( "rxphbeacon_cfg" );
    rxphbeacon_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxphbeacon_cfg_reg

class gtye_channel_rxdfe_h7_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h7_cfg1_reg )
  rand uvm_reg_field rxdfe_h7_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h7_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h7_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h7_cfg1" );
    rxdfe_h7_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h7_cfg1_reg

class gtye_channel_rxdfe_h8_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h8_cfg0_reg )
  rand uvm_reg_field rxdfe_h8_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h8_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h8_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h8_cfg0" );
    rxdfe_h8_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h8_cfg0_reg

class gtye_channel_rxdfe_h8_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h8_cfg1_reg )
  rand uvm_reg_field rxdfe_h8_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h8_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h8_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h8_cfg1" );
    rxdfe_h8_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h8_cfg1_reg

class gtye_channel_pcie_bufg_div_ctrl_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_bufg_div_ctrl_reg )
  rand uvm_reg_field pcie_bufg_div_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_bufg_div_ctrl_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_bufg_div_ctrl = uvm_reg_field::type_id::create( "pcie_bufg_div_ctrl" );
    pcie_bufg_div_ctrl.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_bufg_div_ctrl_reg

class gtye_channel_pcie_rxpcs_cfg_gen3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie_rxpcs_cfg_gen3_reg )
  rand uvm_reg_field pcie_rxpcs_cfg_gen3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie_rxpcs_cfg_gen3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie_rxpcs_cfg_gen3 = uvm_reg_field::type_id::create( "pcie_rxpcs_cfg_gen3" );
    pcie_rxpcs_cfg_gen3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie_rxpcs_cfg_gen3_reg

class gtye_channel_rxdfe_h9_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h9_cfg0_reg )
  rand uvm_reg_field rxdfe_h9_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h9_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h9_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h9_cfg0" );
    rxdfe_h9_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h9_cfg0_reg

class gtye_channel_rx_progdiv_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_progdiv_cfg_reg )
  rand uvm_reg_field rx_progdiv_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_progdiv_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_progdiv_cfg = uvm_reg_field::type_id::create( "rx_progdiv_cfg" );
    rx_progdiv_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_progdiv_cfg_reg

class gtye_channel_rxdfe_h9_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h9_cfg1_reg )
  rand uvm_reg_field rxdfe_h9_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h9_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h9_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h9_cfg1" );
    rxdfe_h9_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h9_cfg1_reg

class gtye_channel_rxdfe_ha_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_ha_cfg0_reg )
  rand uvm_reg_field rxdfe_ha_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_ha_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_ha_cfg0 = uvm_reg_field::type_id::create( "rxdfe_ha_cfg0" );
    rxdfe_ha_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_ha_cfg0_reg

class gtye_channel_chan_bond_seq_1_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_chan_bond_seq_1_2_reg )
  rand uvm_reg_field chan_bond_seq_1_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_chan_bond_seq_1_2_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    chan_bond_seq_1_2 = uvm_reg_field::type_id::create( "chan_bond_seq_1_2" );
    chan_bond_seq_1_2.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_chan_bond_seq_1_2_reg

class gtye_channel_rxdfe_gc_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_gc_cfg0_reg )
  rand uvm_reg_field rxdfe_gc_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_gc_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_gc_cfg0 = uvm_reg_field::type_id::create( "rxdfe_gc_cfg0" );
    rxdfe_gc_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_gc_cfg0_reg

class gtye_channel_rxdfe_gc_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_gc_cfg1_reg )
  rand uvm_reg_field rxdfe_gc_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_gc_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_gc_cfg1 = uvm_reg_field::type_id::create( "rxdfe_gc_cfg1" );
    rxdfe_gc_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_gc_cfg1_reg

class gtye_channel_rx_ddi_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_ddi_sel_reg )
  rand uvm_reg_field rx_ddi_sel;
  rand uvm_reg_field dec_valid_comma_only;
  rand uvm_reg_field dec_mcomma_detect;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_ddi_sel_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_ddi_sel = uvm_reg_field::type_id::create( "rx_ddi_sel" );
    rx_ddi_sel.configure( .parent( this ), .size( 6 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    dec_valid_comma_only = uvm_reg_field::type_id::create( "dec_valid_comma_only" );
    dec_valid_comma_only.configure( .parent( this ), .size( 1 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    dec_mcomma_detect = uvm_reg_field::type_id::create( "dec_mcomma_detect" );
    dec_mcomma_detect.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_ddi_sel_reg

class gtye_channel_rxdfe_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_cfg0_reg )
  rand uvm_reg_field rxdfe_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_cfg0 = uvm_reg_field::type_id::create( "rxdfe_cfg0" );
    rxdfe_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_cfg0_reg

class gtye_channel_rxdfe_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_cfg1_reg )
  rand uvm_reg_field rxdfe_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_cfg1 = uvm_reg_field::type_id::create( "rxdfe_cfg1" );
    rxdfe_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_cfg1_reg

class gtye_channel_rx_resload_ovrd_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_resload_ovrd_reg )
  rand uvm_reg_field rx_resload_ovrd;
  rand uvm_reg_field rx_ctle_pwr_saving;
  rand uvm_reg_field rx_degen_ctrl;
  rand uvm_reg_field rx_resload_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_resload_ovrd_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_resload_ovrd = uvm_reg_field::type_id::create( "rx_resload_ovrd" );
    rx_resload_ovrd.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_ctle_pwr_saving = uvm_reg_field::type_id::create( "rx_ctle_pwr_saving" );
    rx_ctle_pwr_saving.configure( .parent( this ), .size( 1 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_degen_ctrl = uvm_reg_field::type_id::create( "rx_degen_ctrl" );
    rx_degen_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_resload_ctrl = uvm_reg_field::type_id::create( "rx_resload_ctrl" );
    rx_resload_ctrl.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_resload_ovrd_reg

class gtye_channel_rx_en_ctle_rcal_b_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_en_ctle_rcal_b_reg )
  rand uvm_reg_field rx_en_ctle_rcal_b;
  rand uvm_reg_field rx_ctle_res_ctrl;
  rand uvm_reg_field rx_sum_res_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_en_ctle_rcal_b_reg" );
    super.new( .name( name ), .n_bits( 13 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_en_ctle_rcal_b = uvm_reg_field::type_id::create( "rx_en_ctle_rcal_b" );
    rx_en_ctle_rcal_b.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_ctle_res_ctrl = uvm_reg_field::type_id::create( "rx_ctle_res_ctrl" );
    rx_ctle_res_ctrl.configure( .parent( this ), .size( 4 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_sum_res_ctrl = uvm_reg_field::type_id::create( "rx_sum_res_ctrl" );
    rx_sum_res_ctrl.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_en_ctle_rcal_b_reg

class gtye_channel_rxpi_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxpi_cfg1_reg )
  rand uvm_reg_field rxpi_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxpi_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpi_cfg1 = uvm_reg_field::type_id::create( "rxpi_cfg1" );
    rxpi_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxpi_cfg1_reg

class gtye_channel_lpbk_en_rcal_b_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_lpbk_en_rcal_b_reg )
  rand uvm_reg_field lpbk_en_rcal_b;
  rand uvm_reg_field lpbk_ind_ctrl2;
  rand uvm_reg_field lpbk_bias_ctrl;
  rand uvm_reg_field rx_xmode_sel;
  rand uvm_reg_field iscan_ck_ph_sel2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_lpbk_en_rcal_b_reg" );
    super.new( .name( name ), .n_bits( 14 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    lpbk_en_rcal_b = uvm_reg_field::type_id::create( "lpbk_en_rcal_b" );
    lpbk_en_rcal_b.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    lpbk_ind_ctrl2 = uvm_reg_field::type_id::create( "lpbk_ind_ctrl2" );
    lpbk_ind_ctrl2.configure( .parent( this ), .size( 3 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    lpbk_bias_ctrl = uvm_reg_field::type_id::create( "lpbk_bias_ctrl" );
    lpbk_bias_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_xmode_sel = uvm_reg_field::type_id::create( "rx_xmode_sel" );
    rx_xmode_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    iscan_ck_ph_sel2 = uvm_reg_field::type_id::create( "iscan_ck_ph_sel2" );
    iscan_ck_ph_sel2.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_lpbk_en_rcal_b_reg

class gtye_channel_lpbk_ind_ctrl1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_lpbk_ind_ctrl1_reg )
  rand uvm_reg_field lpbk_ind_ctrl1;
  rand uvm_reg_field lpbk_rg_ctrl;
  rand uvm_reg_field lpbk_ind_ctrl0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_lpbk_ind_ctrl1_reg" );
    super.new( .name( name ), .n_bits( 14 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    lpbk_ind_ctrl1 = uvm_reg_field::type_id::create( "lpbk_ind_ctrl1" );
    lpbk_ind_ctrl1.configure( .parent( this ), .size( 3 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    lpbk_rg_ctrl = uvm_reg_field::type_id::create( "lpbk_rg_ctrl" );
    lpbk_rg_ctrl.configure( .parent( this ), .size( 4 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    lpbk_ind_ctrl0 = uvm_reg_field::type_id::create( "lpbk_ind_ctrl0" );
    lpbk_ind_ctrl0.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_lpbk_ind_ctrl1_reg

class gtye_channel_ckcal1_cfg_3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal1_cfg_3_reg )
  rand uvm_reg_field ckcal1_cfg_3;
  rand uvm_reg_field ckcal1_dcc_pwrdn;
  rand uvm_reg_field ckcal1_iq_pwrdn;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal1_cfg_3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal1_cfg_3 = uvm_reg_field::type_id::create( "ckcal1_cfg_3" );
    ckcal1_cfg_3.configure( .parent( this ), .size( 13 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    ckcal1_dcc_pwrdn = uvm_reg_field::type_id::create( "ckcal1_dcc_pwrdn" );
    ckcal1_dcc_pwrdn.configure( .parent( this ), .size( 2 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    ckcal1_iq_pwrdn = uvm_reg_field::type_id::create( "ckcal1_iq_pwrdn" );
    ckcal1_iq_pwrdn.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal1_cfg_3_reg

class gtye_channel_ckcal2_cfg_3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal2_cfg_3_reg )
  rand uvm_reg_field ckcal2_cfg_3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal2_cfg_3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal2_cfg_3 = uvm_reg_field::type_id::create( "ckcal2_cfg_3" );
    ckcal2_cfg_3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal2_cfg_3_reg

class gtye_channel_ckcal2_cfg_4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal2_cfg_4_reg )
  rand uvm_reg_field ckcal2_cfg_4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal2_cfg_4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal2_cfg_4 = uvm_reg_field::type_id::create( "ckcal2_cfg_4" );
    ckcal2_cfg_4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal2_cfg_4_reg

class gtye_channel_rx_pma_rsv0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_pma_rsv0_reg )
  rand uvm_reg_field rx_pma_rsv0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_pma_rsv0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_pma_rsv0 = uvm_reg_field::type_id::create( "rx_pma_rsv0" );
    rx_pma_rsv0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_pma_rsv0_reg

class gtye_channel_ckcal2_cfg_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal2_cfg_2_reg )
  rand uvm_reg_field ckcal2_cfg_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal2_cfg_2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal2_cfg_2 = uvm_reg_field::type_id::create( "ckcal2_cfg_2" );
    ckcal2_cfg_2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal2_cfg_2_reg

class gtye_channel_rxcdr_lock_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_lock_cfg2_reg )
  rand uvm_reg_field rxcdr_lock_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_lock_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_lock_cfg2 = uvm_reg_field::type_id::create( "rxcdr_lock_cfg2" );
    rxcdr_lock_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_lock_cfg2_reg

class gtye_channel_ckcal1_cfg_2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal1_cfg_2_reg )
  rand uvm_reg_field ckcal1_cfg_2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal1_cfg_2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal1_cfg_2 = uvm_reg_field::type_id::create( "ckcal1_cfg_2" );
    ckcal1_cfg_2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal1_cfg_2_reg

class gtye_channel_rtx_buf_term_ctrl_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rtx_buf_term_ctrl_reg )
  rand uvm_reg_field rtx_buf_term_ctrl;
  rand uvm_reg_field rtx_buf_cml_ctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rtx_buf_term_ctrl_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rtx_buf_term_ctrl = uvm_reg_field::type_id::create( "rtx_buf_term_ctrl" );
    rtx_buf_term_ctrl.configure( .parent( this ), .size( 2 ), .lsb_pos( 3 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rtx_buf_cml_ctrl = uvm_reg_field::type_id::create( "rtx_buf_cml_ctrl" );
    rtx_buf_cml_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rtx_buf_term_ctrl_reg

class gtye_channel_txph_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txph_cfg2_reg )
  rand uvm_reg_field txph_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txph_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txph_cfg2 = uvm_reg_field::type_id::create( "txph_cfg2" );
    txph_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txph_cfg2_reg

class gtye_channel_rxcdr_lock_cfg4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_lock_cfg4_reg )
  rand uvm_reg_field rxcdr_lock_cfg4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_lock_cfg4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_lock_cfg4 = uvm_reg_field::type_id::create( "rxcdr_lock_cfg4" );
    rxcdr_lock_cfg4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_lock_cfg4_reg

class gtye_channel_ctle3_ocap_ext_ctrl_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ctle3_ocap_ext_ctrl_reg )
  rand uvm_reg_field ctle3_ocap_ext_ctrl;
  rand uvm_reg_field ctle3_ocap_ext_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ctle3_ocap_ext_ctrl_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ctle3_ocap_ext_ctrl = uvm_reg_field::type_id::create( "ctle3_ocap_ext_ctrl" );
    ctle3_ocap_ext_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    ctle3_ocap_ext_en = uvm_reg_field::type_id::create( "ctle3_ocap_ext_en" );
    ctle3_ocap_ext_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ctle3_ocap_ext_ctrl_reg

class gtye_channel_tx_vreg_vrefsel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_vreg_vrefsel_reg )
  rand uvm_reg_field tx_vreg_vrefsel;
  rand uvm_reg_field tx_vreg_ctrl;
  rand uvm_reg_field tx_vreg_pdb;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_vreg_vrefsel_reg" );
    super.new( .name( name ), .n_bits( 14 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_vreg_vrefsel = uvm_reg_field::type_id::create( "tx_vreg_vrefsel" );
    tx_vreg_vrefsel.configure( .parent( this ), .size( 2 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_vreg_ctrl = uvm_reg_field::type_id::create( "tx_vreg_ctrl" );
    tx_vreg_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_vreg_pdb = uvm_reg_field::type_id::create( "tx_vreg_pdb" );
    tx_vreg_pdb.configure( .parent( this ), .size( 1 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_vreg_vrefsel_reg

class gtye_channel_es_qualifier5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier5_reg )
  rand uvm_reg_field es_qualifier5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier5 = uvm_reg_field::type_id::create( "es_qualifier5" );
    es_qualifier5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier5_reg

class gtye_channel_es_qualifier6_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier6_reg )
  rand uvm_reg_field es_qualifier6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier6 = uvm_reg_field::type_id::create( "es_qualifier6" );
    es_qualifier6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier6_reg

class gtye_channel_es_qualifier7_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier7_reg )
  rand uvm_reg_field es_qualifier7;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier7_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier7 = uvm_reg_field::type_id::create( "es_qualifier7" );
    es_qualifier7.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier7_reg

class gtye_channel_es_qualifier8_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier8_reg )
  rand uvm_reg_field es_qualifier8;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier8_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier8 = uvm_reg_field::type_id::create( "es_qualifier8" );
    es_qualifier8.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier8_reg

class gtye_channel_es_qualifier9_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qualifier9_reg )
  rand uvm_reg_field es_qualifier9;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qualifier9_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qualifier9 = uvm_reg_field::type_id::create( "es_qualifier9" );
    es_qualifier9.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qualifier9_reg

class gtye_channel_es_qual_mask5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask5_reg )
  rand uvm_reg_field es_qual_mask5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask5 = uvm_reg_field::type_id::create( "es_qual_mask5" );
    es_qual_mask5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask5_reg

class gtye_channel_es_qual_mask6_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask6_reg )
  rand uvm_reg_field es_qual_mask6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask6 = uvm_reg_field::type_id::create( "es_qual_mask6" );
    es_qual_mask6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask6_reg

class gtye_channel_es_qual_mask7_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask7_reg )
  rand uvm_reg_field es_qual_mask7;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask7_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask7 = uvm_reg_field::type_id::create( "es_qual_mask7" );
    es_qual_mask7.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask7_reg

class gtye_channel_es_qual_mask8_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask8_reg )
  rand uvm_reg_field es_qual_mask8;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask8_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask8 = uvm_reg_field::type_id::create( "es_qual_mask8" );
    es_qual_mask8.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask8_reg

class gtye_channel_es_qual_mask9_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_qual_mask9_reg )
  rand uvm_reg_field es_qual_mask9;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_qual_mask9_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_qual_mask9 = uvm_reg_field::type_id::create( "es_qual_mask9" );
    es_qual_mask9.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_qual_mask9_reg

class gtye_channel_es_sdata_mask5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask5_reg )
  rand uvm_reg_field es_sdata_mask5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask5 = uvm_reg_field::type_id::create( "es_sdata_mask5" );
    es_sdata_mask5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask5_reg

class gtye_channel_es_sdata_mask6_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask6_reg )
  rand uvm_reg_field es_sdata_mask6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask6 = uvm_reg_field::type_id::create( "es_sdata_mask6" );
    es_sdata_mask6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask6_reg

class gtye_channel_es_sdata_mask7_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask7_reg )
  rand uvm_reg_field es_sdata_mask7;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask7_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask7 = uvm_reg_field::type_id::create( "es_sdata_mask7" );
    es_sdata_mask7.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask7_reg

class gtye_channel_es_sdata_mask8_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask8_reg )
  rand uvm_reg_field es_sdata_mask8;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask8_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask8 = uvm_reg_field::type_id::create( "es_sdata_mask8" );
    es_sdata_mask8.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask8_reg

class gtye_channel_es_sdata_mask9_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_mask9_reg )
  rand uvm_reg_field es_sdata_mask9;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_mask9_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_mask9 = uvm_reg_field::type_id::create( "es_sdata_mask9" );
    es_sdata_mask9.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_mask9_reg

class gtye_channel_tx_pma_rsv1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_pma_rsv1_reg )
  rand uvm_reg_field tx_pma_rsv1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_pma_rsv1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_pma_rsv1 = uvm_reg_field::type_id::create( "tx_pma_rsv1" );
    tx_pma_rsv1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_pma_rsv1_reg

class gtye_channel_ckcal1_cfg_0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal1_cfg_0_reg )
  rand uvm_reg_field ckcal1_cfg_0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal1_cfg_0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal1_cfg_0 = uvm_reg_field::type_id::create( "ckcal1_cfg_0" );
    ckcal1_cfg_0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal1_cfg_0_reg

class gtye_channel_ckcal1_cfg_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal1_cfg_1_reg )
  rand uvm_reg_field ckcal1_cfg_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal1_cfg_1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal1_cfg_1 = uvm_reg_field::type_id::create( "ckcal1_cfg_1" );
    ckcal1_cfg_1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal1_cfg_1_reg

class gtye_channel_ckcal2_cfg_0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal2_cfg_0_reg )
  rand uvm_reg_field ckcal2_cfg_0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal2_cfg_0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal2_cfg_0 = uvm_reg_field::type_id::create( "ckcal2_cfg_0" );
    ckcal2_cfg_0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal2_cfg_0_reg

class gtye_channel_txswbst_mag_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txswbst_mag_reg )
  rand uvm_reg_field txswbst_mag;
  rand uvm_reg_field txdrv_freqband;
  rand uvm_reg_field txswbst_bst;
  rand uvm_reg_field txswbst_en;
  rand uvm_reg_field rx_vreg_ctrl;
  rand uvm_reg_field rx_vreg_pdb;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txswbst_mag_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txswbst_mag = uvm_reg_field::type_id::create( "txswbst_mag" );
    txswbst_mag.configure( .parent( this ), .size( 3 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txdrv_freqband = uvm_reg_field::type_id::create( "txdrv_freqband" );
    txdrv_freqband.configure( .parent( this ), .size( 2 ), .lsb_pos( 9 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txswbst_bst = uvm_reg_field::type_id::create( "txswbst_bst" );
    txswbst_bst.configure( .parent( this ), .size( 2 ), .lsb_pos( 7 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txswbst_en = uvm_reg_field::type_id::create( "txswbst_en" );
    txswbst_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_vreg_ctrl = uvm_reg_field::type_id::create( "rx_vreg_ctrl" );
    rx_vreg_ctrl.configure( .parent( this ), .size( 3 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rx_vreg_pdb = uvm_reg_field::type_id::create( "rx_vreg_pdb" );
    rx_vreg_pdb.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txswbst_mag_reg

class gtye_channel_lpbk_ext_rcal_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_lpbk_ext_rcal_reg )
  rand uvm_reg_field lpbk_ext_rcal;
  rand uvm_reg_field preiq_freq_bst;
  rand uvm_reg_field tx_pi_biasset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_lpbk_ext_rcal_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    lpbk_ext_rcal = uvm_reg_field::type_id::create( "lpbk_ext_rcal" );
    lpbk_ext_rcal.configure( .parent( this ), .size( 4 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    preiq_freq_bst = uvm_reg_field::type_id::create( "preiq_freq_bst" );
    preiq_freq_bst.configure( .parent( this ), .size( 2 ), .lsb_pos( 4 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_pi_biasset = uvm_reg_field::type_id::create( "tx_pi_biasset" );
    tx_pi_biasset.configure( .parent( this ), .size( 2 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_lpbk_ext_rcal_reg

class gtye_channel_tx_phical_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_phical_cfg0_reg )
  rand uvm_reg_field tx_phical_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_phical_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_phical_cfg0 = uvm_reg_field::type_id::create( "tx_phical_cfg0" );
    tx_phical_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_phical_cfg0_reg

class gtye_channel_tx_phical_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_phical_cfg1_reg )
  rand uvm_reg_field tx_phical_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_phical_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_phical_cfg1 = uvm_reg_field::type_id::create( "tx_phical_cfg1" );
    tx_phical_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_phical_cfg1_reg

class gtye_channel_rxcdr_lock_cfg3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_lock_cfg3_reg )
  rand uvm_reg_field rxcdr_lock_cfg3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_lock_cfg3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_lock_cfg3 = uvm_reg_field::type_id::create( "rxcdr_lock_cfg3" );
    rxcdr_lock_cfg3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_lock_cfg3_reg

class gtye_channel_rxdfe_ut_cfg2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_ut_cfg2_reg )
  rand uvm_reg_field rxdfe_ut_cfg2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_ut_cfg2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_ut_cfg2 = uvm_reg_field::type_id::create( "rxdfe_ut_cfg2" );
    rxdfe_ut_cfg2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_ut_cfg2_reg

class gtye_channel_ckcal2_cfg_1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ckcal2_cfg_1_reg )
  rand uvm_reg_field ckcal2_cfg_1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ckcal2_cfg_1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ckcal2_cfg_1 = uvm_reg_field::type_id::create( "ckcal2_cfg_1" );
    ckcal2_cfg_1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ckcal2_cfg_1_reg

class gtye_channel_y_all_mode_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_y_all_mode_reg )
  rand uvm_reg_field y_all_mode;
  rand uvm_reg_field rclk_sipo_dly_enb;
  rand uvm_reg_field rclk_sipo_inv_en;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_y_all_mode_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    y_all_mode = uvm_reg_field::type_id::create( "y_all_mode" );
    y_all_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 2 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rclk_sipo_dly_enb = uvm_reg_field::type_id::create( "rclk_sipo_dly_enb" );
    rclk_sipo_dly_enb.configure( .parent( this ), .size( 1 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rclk_sipo_inv_en = uvm_reg_field::type_id::create( "rclk_sipo_inv_en" );
    rclk_sipo_inv_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_y_all_mode_reg

class gtye_channel_rx_progdiv_rate_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_progdiv_rate_reg )
  rand uvm_reg_field rx_progdiv_rate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_progdiv_rate_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_progdiv_rate = uvm_reg_field::type_id::create( "rx_progdiv_rate" );
    rx_progdiv_rate.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_progdiv_rate_reg

class gtye_channel_rxdfe_hf_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hf_cfg1_reg )
  rand uvm_reg_field rxdfe_hf_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hf_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hf_cfg1 = uvm_reg_field::type_id::create( "rxdfe_hf_cfg1" );
    rxdfe_hf_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hf_cfg1_reg

class gtye_channel_tx_progdiv_rate_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_progdiv_rate_reg )
  rand uvm_reg_field tx_progdiv_rate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_progdiv_rate_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_progdiv_rate = uvm_reg_field::type_id::create( "tx_progdiv_rate" );
    tx_progdiv_rate.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_progdiv_rate_reg

class gtye_channel_tx_dcc_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_tx_dcc_loop_rst_cfg_reg )
  rand uvm_reg_field tx_dcc_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_tx_dcc_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    tx_dcc_loop_rst_cfg = uvm_reg_field::type_id::create( "tx_dcc_loop_rst_cfg" );
    tx_dcc_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_tx_dcc_loop_rst_cfg_reg

class gtye_channel_rxdfe_hc_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hc_cfg0_reg )
  rand uvm_reg_field rxdfe_hc_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hc_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hc_cfg0 = uvm_reg_field::type_id::create( "rxdfe_hc_cfg0" );
    rxdfe_hc_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hc_cfg0_reg

class gtye_channel_rxckcal1_i_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal1_i_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal1_i_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal1_i_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal1_i_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal1_i_loop_rst_cfg" );
    rxckcal1_i_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal1_i_loop_rst_cfg_reg

class gtye_channel_rxckcal1_q_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal1_q_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal1_q_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal1_q_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal1_q_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal1_q_loop_rst_cfg" );
    rxckcal1_q_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal1_q_loop_rst_cfg_reg

class gtye_channel_rxckcal1_iq_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal1_iq_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal1_iq_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal1_iq_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal1_iq_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal1_iq_loop_rst_cfg" );
    rxckcal1_iq_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal1_iq_loop_rst_cfg_reg

class gtye_channel_rxckcal2_d_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal2_d_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal2_d_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal2_d_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal2_d_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal2_d_loop_rst_cfg" );
    rxckcal2_d_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal2_d_loop_rst_cfg_reg

class gtye_channel_rxckcal2_x_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal2_x_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal2_x_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal2_x_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal2_x_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal2_x_loop_rst_cfg" );
    rxckcal2_x_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal2_x_loop_rst_cfg_reg

class gtye_channel_rxckcal2_s_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal2_s_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal2_s_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal2_s_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal2_s_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal2_s_loop_rst_cfg" );
    rxckcal2_s_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal2_s_loop_rst_cfg_reg

class gtye_channel_rxckcal2_dx_loop_rst_cfg_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxckcal2_dx_loop_rst_cfg_reg )
  rand uvm_reg_field rxckcal2_dx_loop_rst_cfg;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxckcal2_dx_loop_rst_cfg_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxckcal2_dx_loop_rst_cfg = uvm_reg_field::type_id::create( "rxckcal2_dx_loop_rst_cfg" );
    rxckcal2_dx_loop_rst_cfg.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxckcal2_dx_loop_rst_cfg_reg

class gtye_channel_rxdfe_kh_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_kh_cfg0_reg )
  rand uvm_reg_field rxdfe_kh_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_kh_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_kh_cfg0 = uvm_reg_field::type_id::create( "rxdfe_kh_cfg0" );
    rxdfe_kh_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_kh_cfg0_reg

class gtye_channel_rxdfe_h4_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h4_cfg1_reg )
  rand uvm_reg_field rxdfe_h4_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h4_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h4_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h4_cfg1" );
    rxdfe_h4_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h4_cfg1_reg

class gtye_channel_rxdfe_h4_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h4_cfg0_reg )
  rand uvm_reg_field rxdfe_h4_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h4_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h4_cfg0 = uvm_reg_field::type_id::create( "rxdfe_h4_cfg0" );
    rxdfe_h4_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h4_cfg0_reg

class gtye_channel_rxdfe_h3_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_h3_cfg1_reg )
  rand uvm_reg_field rxdfe_h3_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_h3_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_h3_cfg1 = uvm_reg_field::type_id::create( "rxdfe_h3_cfg1" );
    rxdfe_h3_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_h3_cfg1_reg

class gtye_channel_ch_hspmux_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_ch_hspmux_reg )
  rand uvm_reg_field ch_hspmux;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_ch_hspmux_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    ch_hspmux = uvm_reg_field::type_id::create( "ch_hspmux" );
    ch_hspmux.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_ch_hspmux_reg

class gtye_channel_pcie3_clk_cor_min_lat_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_pcie3_clk_cor_min_lat_reg )
  rand uvm_reg_field pcie3_clk_cor_min_lat;
  rand uvm_reg_field pcie3_clk_cor_max_lat;
  rand uvm_reg_field pcie3_clk_cor_thrsh_timer;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_pcie3_clk_cor_min_lat_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcie3_clk_cor_min_lat = uvm_reg_field::type_id::create( "pcie3_clk_cor_min_lat" );
    pcie3_clk_cor_min_lat.configure( .parent( this ), .size( 5 ), .lsb_pos( 11 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie3_clk_cor_max_lat = uvm_reg_field::type_id::create( "pcie3_clk_cor_max_lat" );
    pcie3_clk_cor_max_lat.configure( .parent( this ), .size( 5 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie3_clk_cor_thrsh_timer = uvm_reg_field::type_id::create( "pcie3_clk_cor_thrsh_timer" );
    pcie3_clk_cor_thrsh_timer.configure( .parent( this ), .size( 6 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_pcie3_clk_cor_min_lat_reg

class gtye_channel_usb_mode_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_mode_reg )
  rand uvm_reg_field usb_mode;
  rand uvm_reg_field usb_ext_cntl;
  rand uvm_reg_field usb_clk_cor_eq_en;
  rand uvm_reg_field usb_pcie_err_rep_dis;
  rand uvm_reg_field pcie3_clk_cor_full_thrsh;
  rand uvm_reg_field pcie3_clk_cor_empty_thrsh;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_mode_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_mode = uvm_reg_field::type_id::create( "usb_mode" );
    usb_mode.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_ext_cntl = uvm_reg_field::type_id::create( "usb_ext_cntl" );
    usb_ext_cntl.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_clk_cor_eq_en = uvm_reg_field::type_id::create( "usb_clk_cor_eq_en" );
    usb_clk_cor_eq_en.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_pcie_err_rep_dis = uvm_reg_field::type_id::create( "usb_pcie_err_rep_dis" );
    usb_pcie_err_rep_dis.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie3_clk_cor_full_thrsh = uvm_reg_field::type_id::create( "pcie3_clk_cor_full_thrsh" );
    pcie3_clk_cor_full_thrsh.configure( .parent( this ), .size( 6 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    pcie3_clk_cor_empty_thrsh = uvm_reg_field::type_id::create( "pcie3_clk_cor_empty_thrsh" );
    pcie3_clk_cor_empty_thrsh.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_mode_reg

class gtye_channel_usb_raw_elec_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_raw_elec_reg )
  rand uvm_reg_field usb_raw_elec;
  rand uvm_reg_field delay_elec;
  rand uvm_reg_field usb_both_burst_idle;
  rand uvm_reg_field txrefclkdiv2_sel;
  rand uvm_reg_field tx_deemph2;
  rand uvm_reg_field tx_deemph3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_raw_elec_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_raw_elec = uvm_reg_field::type_id::create( "usb_raw_elec" );
    usb_raw_elec.configure( .parent( this ), .size( 1 ), .lsb_pos( 15 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    delay_elec = uvm_reg_field::type_id::create( "delay_elec" );
    delay_elec.configure( .parent( this ), .size( 1 ), .lsb_pos( 14 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_both_burst_idle = uvm_reg_field::type_id::create( "usb_both_burst_idle" );
    usb_both_burst_idle.configure( .parent( this ), .size( 1 ), .lsb_pos( 13 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    txrefclkdiv2_sel = uvm_reg_field::type_id::create( "txrefclkdiv2_sel" );
    txrefclkdiv2_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 12 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_deemph2 = uvm_reg_field::type_id::create( "tx_deemph2" );
    tx_deemph2.configure( .parent( this ), .size( 6 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    tx_deemph3 = uvm_reg_field::type_id::create( "tx_deemph3" );
    tx_deemph3.configure( .parent( this ), .size( 6 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_raw_elec_reg

class gtye_channel_rxrefclkdiv2_sel_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxrefclkdiv2_sel_reg )
  rand uvm_reg_field rxrefclkdiv2_sel;
  rand uvm_reg_field a_rxtermination;
  rand uvm_reg_field usb_lfps_tperiod;
  rand uvm_reg_field usb_lfps_tperiod_accurate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxrefclkdiv2_sel_reg" );
    super.new( .name( name ), .n_bits( 7 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxrefclkdiv2_sel = uvm_reg_field::type_id::create( "rxrefclkdiv2_sel" );
    rxrefclkdiv2_sel.configure( .parent( this ), .size( 1 ), .lsb_pos( 6 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    a_rxtermination = uvm_reg_field::type_id::create( "a_rxtermination" );
    a_rxtermination.configure( .parent( this ), .size( 1 ), .lsb_pos( 5 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_lfps_tperiod = uvm_reg_field::type_id::create( "usb_lfps_tperiod" );
    usb_lfps_tperiod.configure( .parent( this ), .size( 4 ), .lsb_pos( 1 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_lfps_tperiod_accurate = uvm_reg_field::type_id::create( "usb_lfps_tperiod_accurate" );
    usb_lfps_tperiod_accurate.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxrefclkdiv2_sel_reg

class gtye_channel_rxcdr_cfg2_gen4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg2_gen4_reg )
  rand uvm_reg_field rxcdr_cfg2_gen4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg2_gen4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg2_gen4 = uvm_reg_field::type_id::create( "rxcdr_cfg2_gen4" );
    rxcdr_cfg2_gen4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg2_gen4_reg

class gtye_channel_rxcdr_cfg3_gen4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg3_gen4_reg )
  rand uvm_reg_field rxcdr_cfg3_gen4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg3_gen4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg3_gen4 = uvm_reg_field::type_id::create( "rxcdr_cfg3_gen4" );
    rxcdr_cfg3_gen4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg3_gen4_reg

class gtye_channel_usb_burstmin_u3wake_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_burstmin_u3wake_reg )
  rand uvm_reg_field usb_burstmin_u3wake;
  rand uvm_reg_field usb_burstmax_u3wake;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_burstmin_u3wake_reg" );
    super.new( .name( name ), .n_bits( 15 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_burstmin_u3wake = uvm_reg_field::type_id::create( "usb_burstmin_u3wake" );
    usb_burstmin_u3wake.configure( .parent( this ), .size( 7 ), .lsb_pos( 8 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    usb_burstmax_u3wake = uvm_reg_field::type_id::create( "usb_burstmax_u3wake" );
    usb_burstmax_u3wake.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_burstmin_u3wake_reg

class gtye_channel_usb_idlemin_polling_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_idlemin_polling_reg )
  rand uvm_reg_field usb_idlemin_polling;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_idlemin_polling_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_idlemin_polling = uvm_reg_field::type_id::create( "usb_idlemin_polling" );
    usb_idlemin_polling.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_idlemin_polling_reg

class gtye_channel_usb_idlemax_polling_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_idlemax_polling_reg )
  rand uvm_reg_field usb_idlemax_polling;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_idlemax_polling_reg" );
    super.new( .name( name ), .n_bits( 10 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_idlemax_polling = uvm_reg_field::type_id::create( "usb_idlemax_polling" );
    usb_idlemax_polling.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_idlemax_polling_reg

class gtye_channel_usb_lfpspolling_burst_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpspolling_burst_reg )
  rand uvm_reg_field usb_lfpspolling_burst;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpspolling_burst_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpspolling_burst = uvm_reg_field::type_id::create( "usb_lfpspolling_burst" );
    usb_lfpspolling_burst.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpspolling_burst_reg

class gtye_channel_usb_lfpsping_burst_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpsping_burst_reg )
  rand uvm_reg_field usb_lfpsping_burst;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpsping_burst_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpsping_burst = uvm_reg_field::type_id::create( "usb_lfpsping_burst" );
    usb_lfpsping_burst.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpsping_burst_reg

class gtye_channel_usb_lfpsu1exit_burst_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpsu1exit_burst_reg )
  rand uvm_reg_field usb_lfpsu1exit_burst;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpsu1exit_burst_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpsu1exit_burst = uvm_reg_field::type_id::create( "usb_lfpsu1exit_burst" );
    usb_lfpsu1exit_burst.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpsu1exit_burst_reg

class gtye_channel_usb_lfpsu2lpexit_burst_ms_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpsu2lpexit_burst_ms_reg )
  rand uvm_reg_field usb_lfpsu2lpexit_burst_ms;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpsu2lpexit_burst_ms_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpsu2lpexit_burst_ms = uvm_reg_field::type_id::create( "usb_lfpsu2lpexit_burst_ms" );
    usb_lfpsu2lpexit_burst_ms.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpsu2lpexit_burst_ms_reg

class gtye_channel_usb_lfpsu3wake_burst_ms_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpsu3wake_burst_ms_reg )
  rand uvm_reg_field usb_lfpsu3wake_burst_ms;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpsu3wake_burst_ms_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpsu3wake_burst_ms = uvm_reg_field::type_id::create( "usb_lfpsu3wake_burst_ms" );
    usb_lfpsu3wake_burst_ms.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpsu3wake_burst_ms_reg

class gtye_channel_usb_lfpspolling_idle_ms_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_usb_lfpspolling_idle_ms_reg )
  rand uvm_reg_field usb_lfpspolling_idle_ms;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_usb_lfpspolling_idle_ms_reg" );
    super.new( .name( name ), .n_bits( 9 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    usb_lfpspolling_idle_ms = uvm_reg_field::type_id::create( "usb_lfpspolling_idle_ms" );
    usb_lfpspolling_idle_ms.configure( .parent( this ), .size( 9 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_usb_lfpspolling_idle_ms_reg

class gtye_channel_rxdfe_ha_cfg1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_ha_cfg1_reg )
  rand uvm_reg_field rxdfe_ha_cfg1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_ha_cfg1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_ha_cfg1 = uvm_reg_field::type_id::create( "rxdfe_ha_cfg1" );
    rxdfe_ha_cfg1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_ha_cfg1_reg

class gtye_channel_rxdfe_hb_cfg0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxdfe_hb_cfg0_reg )
  rand uvm_reg_field rxdfe_hb_cfg0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxdfe_hb_cfg0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfe_hb_cfg0 = uvm_reg_field::type_id::create( "rxdfe_hb_cfg0" );
    rxdfe_hb_cfg0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxdfe_hb_cfg0_reg

class gtye_channel_rxcdr_cfg3_gen2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxcdr_cfg3_gen2_reg )
  rand uvm_reg_field rxcdr_cfg3_gen2;
  rand uvm_reg_field rxcdr_cfg2_gen2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxcdr_cfg3_gen2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdr_cfg3_gen2 = uvm_reg_field::type_id::create( "rxcdr_cfg3_gen2" );
    rxcdr_cfg3_gen2.configure( .parent( this ), .size( 6 ), .lsb_pos( 10 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
    rxcdr_cfg2_gen2 = uvm_reg_field::type_id::create( "rxcdr_cfg2_gen2" );
    rxcdr_cfg2_gen2.configure( .parent( this ), .size( 10 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxcdr_cfg3_gen2_reg

class gtye_channel_comma_align_latency_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_comma_align_latency_reg )
  rand uvm_reg_field comma_align_latency;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_comma_align_latency_reg" );
    super.new( .name( name ), .n_bits( 7 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    comma_align_latency = uvm_reg_field::type_id::create( "comma_align_latency" );
    comma_align_latency.configure( .parent( this ), .size( 7 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_comma_align_latency_reg

class gtye_channel_es_error_count_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_error_count_reg )
  rand uvm_reg_field es_error_count;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_error_count_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_error_count = uvm_reg_field::type_id::create( "es_error_count" );
    es_error_count.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_error_count_reg

class gtye_channel_es_sample_count_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sample_count_reg )
  rand uvm_reg_field es_sample_count;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sample_count_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sample_count = uvm_reg_field::type_id::create( "es_sample_count" );
    es_sample_count.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sample_count_reg

class gtye_channel_es_control_status_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_control_status_reg )
  rand uvm_reg_field es_control_status;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_control_status_reg" );
    super.new( .name( name ), .n_bits( 4 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_control_status = uvm_reg_field::type_id::create( "es_control_status" );
    es_control_status.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_control_status_reg

class gtye_channel_es_rdata_byte4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte4_reg )
  rand uvm_reg_field es_rdata_byte4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte4 = uvm_reg_field::type_id::create( "es_rdata_byte4" );
    es_rdata_byte4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte4_reg

class gtye_channel_es_rdata_byte3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte3_reg )
  rand uvm_reg_field es_rdata_byte3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte3 = uvm_reg_field::type_id::create( "es_rdata_byte3" );
    es_rdata_byte3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte3_reg

class gtye_channel_es_rdata_byte2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte2_reg )
  rand uvm_reg_field es_rdata_byte2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte2 = uvm_reg_field::type_id::create( "es_rdata_byte2" );
    es_rdata_byte2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte2_reg

class gtye_channel_es_rdata_byte1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte1_reg )
  rand uvm_reg_field es_rdata_byte1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte1 = uvm_reg_field::type_id::create( "es_rdata_byte1" );
    es_rdata_byte1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte1_reg

class gtye_channel_es_rdata_byte0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte0_reg )
  rand uvm_reg_field es_rdata_byte0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte0 = uvm_reg_field::type_id::create( "es_rdata_byte0" );
    es_rdata_byte0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte0_reg

class gtye_channel_es_sdata_byte4_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte4_reg )
  rand uvm_reg_field es_sdata_byte4;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte4_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte4 = uvm_reg_field::type_id::create( "es_sdata_byte4" );
    es_sdata_byte4.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte4_reg

class gtye_channel_es_sdata_byte3_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte3_reg )
  rand uvm_reg_field es_sdata_byte3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte3_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte3 = uvm_reg_field::type_id::create( "es_sdata_byte3" );
    es_sdata_byte3.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte3_reg

class gtye_channel_es_sdata_byte2_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte2_reg )
  rand uvm_reg_field es_sdata_byte2;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte2_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte2 = uvm_reg_field::type_id::create( "es_sdata_byte2" );
    es_sdata_byte2.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte2_reg

class gtye_channel_es_sdata_byte1_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte1_reg )
  rand uvm_reg_field es_sdata_byte1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte1 = uvm_reg_field::type_id::create( "es_sdata_byte1" );
    es_sdata_byte1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte1_reg

class gtye_channel_es_sdata_byte0_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte0_reg )
  rand uvm_reg_field es_sdata_byte0;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte0_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte0 = uvm_reg_field::type_id::create( "es_sdata_byte0" );
    es_sdata_byte0.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte0_reg

class gtye_channel_rx_prbs_err_15_0_cnt_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_prbs_err_15_0_cnt_reg )
  rand uvm_reg_field rx_prbs_err_15_0_cnt;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_prbs_err_15_0_cnt_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_prbs_err_15_0_cnt = uvm_reg_field::type_id::create( "rx_prbs_err_15_0_cnt" );
    rx_prbs_err_15_0_cnt.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_prbs_err_15_0_cnt_reg

class gtye_channel_rx_prbs_err_31_16_cnt_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rx_prbs_err_31_16_cnt_reg )
  rand uvm_reg_field rx_prbs_err_31_16_cnt;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rx_prbs_err_31_16_cnt_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rx_prbs_err_31_16_cnt = uvm_reg_field::type_id::create( "rx_prbs_err_31_16_cnt" );
    rx_prbs_err_31_16_cnt.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rx_prbs_err_31_16_cnt_reg

class gtye_channel_txgbox_fifo_latency_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_txgbox_fifo_latency_reg )
  rand uvm_reg_field txgbox_fifo_latency;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_txgbox_fifo_latency_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txgbox_fifo_latency = uvm_reg_field::type_id::create( "txgbox_fifo_latency" );
    txgbox_fifo_latency.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_txgbox_fifo_latency_reg

class gtye_channel_rxgbox_fifo_latency_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_rxgbox_fifo_latency_reg )
  rand uvm_reg_field rxgbox_fifo_latency;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_rxgbox_fifo_latency_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxgbox_fifo_latency = uvm_reg_field::type_id::create( "rxgbox_fifo_latency" );
    rxgbox_fifo_latency.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_rxgbox_fifo_latency_reg

class gtye_channel_es_sdata_byte5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte5_reg )
  rand uvm_reg_field es_sdata_byte5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte5 = uvm_reg_field::type_id::create( "es_sdata_byte5" );
    es_sdata_byte5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte5_reg

class gtye_channel_es_sdata_byte6_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte6_reg )
  rand uvm_reg_field es_sdata_byte6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte6 = uvm_reg_field::type_id::create( "es_sdata_byte6" );
    es_sdata_byte6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte6_reg

class gtye_channel_es_sdata_byte7_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte7_reg )
  rand uvm_reg_field es_sdata_byte7;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte7_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte7 = uvm_reg_field::type_id::create( "es_sdata_byte7" );
    es_sdata_byte7.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte7_reg

class gtye_channel_es_sdata_byte8_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte8_reg )
  rand uvm_reg_field es_sdata_byte8;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte8_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte8 = uvm_reg_field::type_id::create( "es_sdata_byte8" );
    es_sdata_byte8.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte8_reg

class gtye_channel_es_sdata_byte9_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_sdata_byte9_reg )
  rand uvm_reg_field es_sdata_byte9;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_sdata_byte9_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_sdata_byte9 = uvm_reg_field::type_id::create( "es_sdata_byte9" );
    es_sdata_byte9.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_sdata_byte9_reg

class gtye_channel_es_rdata_byte5_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte5_reg )
  rand uvm_reg_field es_rdata_byte5;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte5_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte5 = uvm_reg_field::type_id::create( "es_rdata_byte5" );
    es_rdata_byte5.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte5_reg

class gtye_channel_es_rdata_byte6_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte6_reg )
  rand uvm_reg_field es_rdata_byte6;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte6_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte6 = uvm_reg_field::type_id::create( "es_rdata_byte6" );
    es_rdata_byte6.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte6_reg

class gtye_channel_es_rdata_byte7_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte7_reg )
  rand uvm_reg_field es_rdata_byte7;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte7_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte7 = uvm_reg_field::type_id::create( "es_rdata_byte7" );
    es_rdata_byte7.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte7_reg

class gtye_channel_es_rdata_byte8_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte8_reg )
  rand uvm_reg_field es_rdata_byte8;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte8_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte8 = uvm_reg_field::type_id::create( "es_rdata_byte8" );
    es_rdata_byte8.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte8_reg

class gtye_channel_es_rdata_byte9_reg extends uvm_reg;
  `uvm_object_utils( gtye_channel_es_rdata_byte9_reg )
  rand uvm_reg_field es_rdata_byte9;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_es_rdata_byte9_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    es_rdata_byte9 = uvm_reg_field::type_id::create( "es_rdata_byte9" );
    es_rdata_byte9.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: gtye_channel_es_rdata_byte9_reg
  
class gtye_channel_reg_block extends uvm_reg_block;
  `uvm_object_utils( gtye_channel_reg_block )
  rand gtye_channel_cdr_swap_mode_en_reg cdr_swap_mode_en;
  rand gtye_channel_rxbufreset_time_reg rxbufreset_time;
  rand gtye_channel_rxcdrphreset_time_reg rxcdrphreset_time;
  rand gtye_channel_rxpmareset_time_reg rxpmareset_time;
  rand gtye_channel_rxdfe_hb_cfg1_reg rxdfe_hb_cfg1;
  rand gtye_channel_txpmareset_time_reg txpmareset_time;
  rand gtye_channel_tx_fifo_byp_en_reg tx_fifo_byp_en;
  rand gtye_channel_tx_fabint_usrclk_flop_reg tx_fabint_usrclk_flop;
  rand gtye_channel_tx_progclk_sel_reg tx_progclk_sel;
  rand gtye_channel_txamonsel_reg txamonsel;
  rand gtye_channel_rxcdr_cfg0_reg rxcdr_cfg0;
  rand gtye_channel_rxcdr_cfg1_reg rxcdr_cfg1;
  rand gtye_channel_rxcdr_cfg2_reg rxcdr_cfg2;
  rand gtye_channel_rxcdr_cfg3_reg rxcdr_cfg3;
  rand gtye_channel_rxcdr_cfg4_reg rxcdr_cfg4;
  rand gtye_channel_cpll_lock_cfg_reg cpll_lock_cfg;
  rand gtye_channel_chan_bond_max_skew_reg chan_bond_max_skew;
  rand gtye_channel_pci3_rx_elecidle_hi_count_reg pci3_rx_elecidle_hi_count;
  rand gtye_channel_pci3_rx_elecidle_h2l_count_reg pci3_rx_elecidle_h2l_count;
  rand gtye_channel_rx_buffer_cfg_reg rx_buffer_cfg;
  rand gtye_channel_chan_bond_seq_1_enable_reg chan_bond_seq_1_enable;
  rand gtye_channel_chan_bond_seq_2_2_reg chan_bond_seq_2_2;
  rand gtye_channel_chan_bond_seq_2_3_reg chan_bond_seq_2_3;
  rand gtye_channel_chan_bond_seq_2_4_reg chan_bond_seq_2_4;
  rand gtye_channel_chan_bond_seq_2_enable_reg chan_bond_seq_2_enable;
  rand gtye_channel_clk_cor_max_lat_reg clk_cor_max_lat;
  rand gtye_channel_clk_cor_seq_1_1_reg clk_cor_seq_1_1;
  rand gtye_channel_clk_cor_seq_1_2_reg clk_cor_seq_1_2;
  rand gtye_channel_clk_cor_seq_1_3_reg clk_cor_seq_1_3;
  rand gtye_channel_clk_cor_seq_1_4_reg clk_cor_seq_1_4;
  rand gtye_channel_clk_cor_seq_1_enable_reg clk_cor_seq_1_enable;
  rand gtye_channel_clk_cor_seq_2_2_reg clk_cor_seq_2_2;
  rand gtye_channel_clk_cor_seq_2_enable_reg clk_cor_seq_2_enable;
  rand gtye_channel_clk_cor_seq_2_4_reg clk_cor_seq_2_4;
  rand gtye_channel_rxdfe_he_cfg0_reg rxdfe_he_cfg0;
  rand gtye_channel_align_comma_word_reg align_comma_word;
  rand gtye_channel_cpll_fbdiv_reg cpll_fbdiv;
  rand gtye_channel_rxcdr_lock_cfg0_reg rxcdr_lock_cfg0;
  rand gtye_channel_cpll_refclk_div_reg cpll_refclk_div;
  rand gtye_channel_cpll_init_cfg0_reg cpll_init_cfg0;
  rand gtye_channel_dec_pcomma_detect_reg dec_pcomma_detect;
  rand gtye_channel_rxcdr_lock_cfg1_reg rxcdr_lock_cfg1;
  rand gtye_channel_rxcfok_cfg1_reg rxcfok_cfg1;
  rand gtye_channel_rxdfe_h2_cfg0_reg rxdfe_h2_cfg0;
  rand gtye_channel_rxdfe_h2_cfg1_reg rxdfe_h2_cfg1;
  rand gtye_channel_rxcfok_cfg2_reg rxcfok_cfg2;
  rand gtye_channel_rxlpm_cfg_reg rxlpm_cfg;
  rand gtye_channel_rxlpm_kh_cfg0_reg rxlpm_kh_cfg0;
  rand gtye_channel_rxlpm_kh_cfg1_reg rxlpm_kh_cfg1;
  rand gtye_channel_rxdfelpm_kl_cfg0_reg rxdfelpm_kl_cfg0;
  rand gtye_channel_rxdfelpm_kl_cfg1_reg rxdfelpm_kl_cfg1;
  rand gtye_channel_rxlpm_os_cfg0_reg rxlpm_os_cfg0;
  rand gtye_channel_rxlpm_os_cfg1_reg rxlpm_os_cfg1;
  rand gtye_channel_rxlpm_gc_cfg_reg rxlpm_gc_cfg;
  rand gtye_channel_dmonitor_cfg1_reg dmonitor_cfg1;
  rand gtye_channel_es_control_reg es_control;
  rand gtye_channel_rxdfe_gc_cfg2_reg rxdfe_gc_cfg2;
  rand gtye_channel_txdly_lcfg_reg txdly_lcfg;
  rand gtye_channel_es_qualifier0_reg es_qualifier0;
  rand gtye_channel_es_qualifier1_reg es_qualifier1;
  rand gtye_channel_es_qualifier2_reg es_qualifier2;
  rand gtye_channel_es_qualifier3_reg es_qualifier3;
  rand gtye_channel_es_qualifier4_reg es_qualifier4;
  rand gtye_channel_es_qual_mask0_reg es_qual_mask0;
  rand gtye_channel_es_qual_mask1_reg es_qual_mask1;
  rand gtye_channel_es_qual_mask2_reg es_qual_mask2;
  rand gtye_channel_es_qual_mask3_reg es_qual_mask3;
  rand gtye_channel_es_qual_mask4_reg es_qual_mask4;
  rand gtye_channel_es_sdata_mask0_reg es_sdata_mask0;
  rand gtye_channel_es_sdata_mask1_reg es_sdata_mask1;
  rand gtye_channel_es_sdata_mask2_reg es_sdata_mask2;
  rand gtye_channel_es_sdata_mask3_reg es_sdata_mask3;
  rand gtye_channel_es_sdata_mask4_reg es_sdata_mask4;
  rand gtye_channel_fts_lane_deskew_en_reg fts_lane_deskew_en;
  rand gtye_channel_es_horz_offset_reg es_horz_offset;
  rand gtye_channel_rxdfe_hc_cfg1_reg rxdfe_hc_cfg1;
  rand gtye_channel_es_pma_cfg_reg es_pma_cfg;
  rand gtye_channel_rx_dfe_agc_cfg1_reg rx_dfe_agc_cfg1;
  rand gtye_channel_txfe_cfg2_reg txfe_cfg2;
  rand gtye_channel_txfe_cfg3_reg txfe_cfg3;
  rand gtye_channel_pcie_64b_dyn_clksw_dis_reg pcie_64b_dyn_clksw_dis;
  rand gtye_channel_align_pcomma_det_reg align_pcomma_det;
  rand gtye_channel_tx_progdiv_cfg_reg tx_progdiv_cfg;
  rand gtye_channel_rxdfe_os_cfg0_reg rxdfe_os_cfg0;
  rand gtye_channel_rxphdly_cfg_reg rxphdly_cfg;
  rand gtye_channel_rxdfe_os_cfg1_reg rxdfe_os_cfg1;
  rand gtye_channel_rxdly_cfg_reg rxdly_cfg;
  rand gtye_channel_rxdly_lcfg_reg rxdly_lcfg;
  rand gtye_channel_rxdfe_hf_cfg0_reg rxdfe_hf_cfg0;
  rand gtye_channel_rxdfe_hd_cfg0_reg rxdfe_hd_cfg0;
  rand gtye_channel_rx_bias_cfg0_reg rx_bias_cfg0;
  rand gtye_channel_pcs_rsvd0_reg pcs_rsvd0;
  rand gtye_channel_rxph_monitor_sel_reg rxph_monitor_sel;
  rand gtye_channel_rx_i2v_filter_en_reg rx_i2v_filter_en;
  rand gtye_channel_cbcc_data_source_sel_reg cbcc_data_source_sel;
  rand gtye_channel_rx_sig_valid_dly_reg rx_sig_valid_dly;
  rand gtye_channel_rxbuf_thresh_ovflw_reg rxbuf_thresh_ovflw;
  rand gtye_channel_rxbuf_thresh_ovrd_reg rxbuf_thresh_ovrd;
  rand gtye_channel_rxbuf_eidle_hi_cnt_reg rxbuf_eidle_hi_cnt;
  rand gtye_channel_sata_burst_val_reg sata_burst_val;
  rand gtye_channel_usb_poll_sata_min_burst_reg usb_poll_sata_min_burst;
  rand gtye_channel_usb_ping_sata_min_init_reg usb_ping_sata_min_init;
  rand gtye_channel_usb_poll_sata_max_burst_reg usb_poll_sata_max_burst;
  rand gtye_channel_usb_ping_sata_max_init_reg usb_ping_sata_max_init;
  rand gtye_channel_rx_clk25_div_reg rx_clk25_div;
  rand gtye_channel_rxdfe_ut_cfg1_reg rxdfe_ut_cfg1;
  rand gtye_channel_txphdly_cfg1_reg txphdly_cfg1;
  rand gtye_channel_rxdfe_vp_cfg0_reg rxdfe_vp_cfg0;
  rand gtye_channel_txph_monitor_sel_reg txph_monitor_sel;
  rand gtye_channel_adapt_cfg2_reg adapt_cfg2;
  rand gtye_channel_rxdfe_vp_cfg1_reg rxdfe_vp_cfg1;
  rand gtye_channel_term_rcal_cfg_reg term_rcal_cfg;
  rand gtye_channel_rxpi_cfg0_reg rxpi_cfg0;
  rand gtye_channel_pd_trans_time_from_p2_reg pd_trans_time_from_p2;
  rand gtye_channel_pd_trans_time_none_p2_reg pd_trans_time_none_p2;
  rand gtye_channel_trans_time_rate_reg trans_time_rate;
  rand gtye_channel_tst_rsv0_reg tst_rsv0;
  rand gtye_channel_tx_clk25_div_reg tx_clk25_div;
  rand gtye_channel_tx_deemph0_reg tx_deemph0;
  rand gtye_channel_tx_maincursor_sel_reg tx_maincursor_sel;
  rand gtye_channel_tx_rxdetect_cfg_reg tx_rxdetect_cfg;
  rand gtye_channel_tx_clkmux_en_reg tx_clkmux_en;
  rand gtye_channel_tx_margin_full_0_reg tx_margin_full_0;
  rand gtye_channel_tx_margin_full_2_reg tx_margin_full_2;
  rand gtye_channel_tx_margin_full_4_reg tx_margin_full_4;
  rand gtye_channel_tx_margin_low_1_reg tx_margin_low_1;
  rand gtye_channel_tx_margin_low_3_reg tx_margin_low_3;
  rand gtye_channel_rxdfe_h3_cfg0_reg rxdfe_h3_cfg0;
  rand gtye_channel_tx_int_datawidth_reg tx_int_datawidth;
  rand gtye_channel_rxprbs_linkacq_cnt_reg rxprbs_linkacq_cnt;
  rand gtye_channel_tx_pmadata_opt_reg tx_pmadata_opt;
  rand gtye_channel_txsync_multilane_reg txsync_multilane;
  rand gtye_channel_acjtag_mode_reg acjtag_mode;
  rand gtye_channel_rxdfelpm_kl_cfg2_reg rxdfelpm_kl_cfg2;
  rand gtye_channel_txdly_cfg_reg txdly_cfg;
  rand gtye_channel_txph_cfg_reg txph_cfg;
  rand gtye_channel_txphdly_cfg0_reg txphdly_cfg0;
  rand gtye_channel_adapt_cfg0_reg adapt_cfg0;
  rand gtye_channel_adapt_cfg1_reg adapt_cfg1;
  rand gtye_channel_rxcfok_cfg0_reg rxcfok_cfg0;
  rand gtye_channel_es_clk_phase_sel_reg es_clk_phase_sel;
  rand gtye_channel_tx_pma_rsv0_reg tx_pma_rsv0;
  rand gtye_channel_rx_afe_cm_en_reg rx_afe_cm_en;
  rand gtye_channel_rxdfe_h5_cfg1_reg rxdfe_h5_cfg1;
  rand gtye_channel_gearbox_mode_reg gearbox_mode;
  rand gtye_channel_txpi_ppm_cfg_reg txpi_ppm_cfg;
  rand gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg rx_dfelpm_klkh_agc_stup_en;
  rand gtye_channel_txfe_cfg0_reg txfe_cfg0;
  rand gtye_channel_rxdfe_ut_cfg0_reg rxdfe_ut_cfg0;
  rand gtye_channel_cpll_cfg0_reg cpll_cfg0;
  rand gtye_channel_cpll_cfg1_reg cpll_cfg1;
  rand gtye_channel_txfe_cfg1_reg txfe_cfg1;
  rand gtye_channel_rxcdr_cfg0_gen3_reg rxcdr_cfg0_gen3;
  rand gtye_channel_rxcdr_cfg1_gen3_reg rxcdr_cfg1_gen3;
  rand gtye_channel_rxcdr_cfg2_gen3_reg rxcdr_cfg2_gen3;
  rand gtye_channel_rxcdr_cfg3_gen3_reg rxcdr_cfg3_gen3;
  rand gtye_channel_rxcdr_cfg4_gen3_reg rxcdr_cfg4_gen3;
  rand gtye_channel_txpi_cfg0_reg txpi_cfg0;
  rand gtye_channel_txpi_cfg1_reg txpi_cfg1;
  rand gtye_channel_pcie_rxpma_cfg_reg pcie_rxpma_cfg;
  rand gtye_channel_pcie_txpcs_cfg_gen3_reg pcie_txpcs_cfg_gen3;
  rand gtye_channel_pcie_txpma_cfg_reg pcie_txpma_cfg;
  rand gtye_channel_rx_clk_slip_ovrd_reg rx_clk_slip_ovrd;
  rand gtye_channel_pcie_pll_sel_mode_gen4_reg pcie_pll_sel_mode_gen4;
  rand gtye_channel_rxdfe_hd_cfg1_reg rxdfe_hd_cfg1;
  rand gtye_channel_rxcdr_cfg5_gen3_reg rxcdr_cfg5_gen3;
  rand gtye_channel_rxdfe_kh_cfg3_reg rxdfe_kh_cfg3;
  rand gtye_channel_rxdfe_kh_cfg2_reg rxdfe_kh_cfg2;
  rand gtye_channel_rxdfe_kh_cfg1_reg rxdfe_kh_cfg1;
  rand gtye_channel_rxdfe_h5_cfg0_reg rxdfe_h5_cfg0;
  rand gtye_channel_rxcdr_cfg5_reg rxcdr_cfg5;
  rand gtye_channel_rxdfe_he_cfg1_reg rxdfe_he_cfg1;
  rand gtye_channel_cpll_cfg3_reg cpll_cfg3;
  rand gtye_channel_rxdfe_h6_cfg0_reg rxdfe_h6_cfg0;
  rand gtye_channel_rxdfe_h6_cfg1_reg rxdfe_h6_cfg1;
  rand gtye_channel_rxdfe_h7_cfg0_reg rxdfe_h7_cfg0;
  rand gtye_channel_ddi_realign_wait_reg ddi_realign_wait;
  rand gtye_channel_txgbox_fifo_init_rd_addr_reg txgbox_fifo_init_rd_addr;
  rand gtye_channel_cpll_cfg2_reg cpll_cfg2;
  rand gtye_channel_rxphsamp_cfg_reg rxphsamp_cfg;
  rand gtye_channel_rxphslip_cfg_reg rxphslip_cfg;
  rand gtye_channel_rxphbeacon_cfg_reg rxphbeacon_cfg;
  rand gtye_channel_rxdfe_h7_cfg1_reg rxdfe_h7_cfg1;
  rand gtye_channel_rxdfe_h8_cfg0_reg rxdfe_h8_cfg0;
  rand gtye_channel_rxdfe_h8_cfg1_reg rxdfe_h8_cfg1;
  rand gtye_channel_pcie_bufg_div_ctrl_reg pcie_bufg_div_ctrl;
  rand gtye_channel_pcie_rxpcs_cfg_gen3_reg pcie_rxpcs_cfg_gen3;
  rand gtye_channel_rxdfe_h9_cfg0_reg rxdfe_h9_cfg0;
  rand gtye_channel_rx_progdiv_cfg_reg rx_progdiv_cfg;
  rand gtye_channel_rxdfe_h9_cfg1_reg rxdfe_h9_cfg1;
  rand gtye_channel_rxdfe_ha_cfg0_reg rxdfe_ha_cfg0;
  rand gtye_channel_chan_bond_seq_1_2_reg chan_bond_seq_1_2;
  rand gtye_channel_rxdfe_gc_cfg0_reg rxdfe_gc_cfg0;
  rand gtye_channel_rxdfe_gc_cfg1_reg rxdfe_gc_cfg1;
  rand gtye_channel_rx_ddi_sel_reg rx_ddi_sel;
  rand gtye_channel_rxdfe_cfg0_reg rxdfe_cfg0;
  rand gtye_channel_rxdfe_cfg1_reg rxdfe_cfg1;
  rand gtye_channel_rx_resload_ovrd_reg rx_resload_ovrd;
  rand gtye_channel_rx_en_ctle_rcal_b_reg rx_en_ctle_rcal_b;
  rand gtye_channel_rxpi_cfg1_reg rxpi_cfg1;
  rand gtye_channel_lpbk_en_rcal_b_reg lpbk_en_rcal_b;
  rand gtye_channel_lpbk_ind_ctrl1_reg lpbk_ind_ctrl1;
  rand gtye_channel_ckcal1_cfg_3_reg ckcal1_cfg_3;
  rand gtye_channel_ckcal2_cfg_3_reg ckcal2_cfg_3;
  rand gtye_channel_ckcal2_cfg_4_reg ckcal2_cfg_4;
  rand gtye_channel_rx_pma_rsv0_reg rx_pma_rsv0;
  rand gtye_channel_ckcal2_cfg_2_reg ckcal2_cfg_2;
  rand gtye_channel_rxcdr_lock_cfg2_reg rxcdr_lock_cfg2;
  rand gtye_channel_ckcal1_cfg_2_reg ckcal1_cfg_2;
  rand gtye_channel_rtx_buf_term_ctrl_reg rtx_buf_term_ctrl;
  rand gtye_channel_txph_cfg2_reg txph_cfg2;
  rand gtye_channel_rxcdr_lock_cfg4_reg rxcdr_lock_cfg4;
  rand gtye_channel_ctle3_ocap_ext_ctrl_reg ctle3_ocap_ext_ctrl;
  rand gtye_channel_tx_vreg_vrefsel_reg tx_vreg_vrefsel;
  rand gtye_channel_es_qualifier5_reg es_qualifier5;
  rand gtye_channel_es_qualifier6_reg es_qualifier6;
  rand gtye_channel_es_qualifier7_reg es_qualifier7;
  rand gtye_channel_es_qualifier8_reg es_qualifier8;
  rand gtye_channel_es_qualifier9_reg es_qualifier9;
  rand gtye_channel_es_qual_mask5_reg es_qual_mask5;
  rand gtye_channel_es_qual_mask6_reg es_qual_mask6;
  rand gtye_channel_es_qual_mask7_reg es_qual_mask7;
  rand gtye_channel_es_qual_mask8_reg es_qual_mask8;
  rand gtye_channel_es_qual_mask9_reg es_qual_mask9;
  rand gtye_channel_es_sdata_mask5_reg es_sdata_mask5;
  rand gtye_channel_es_sdata_mask6_reg es_sdata_mask6;
  rand gtye_channel_es_sdata_mask7_reg es_sdata_mask7;
  rand gtye_channel_es_sdata_mask8_reg es_sdata_mask8;
  rand gtye_channel_es_sdata_mask9_reg es_sdata_mask9;
  rand gtye_channel_tx_pma_rsv1_reg tx_pma_rsv1;
  rand gtye_channel_ckcal1_cfg_0_reg ckcal1_cfg_0;
  rand gtye_channel_ckcal1_cfg_1_reg ckcal1_cfg_1;
  rand gtye_channel_ckcal2_cfg_0_reg ckcal2_cfg_0;
  rand gtye_channel_txswbst_mag_reg txswbst_mag;
  rand gtye_channel_lpbk_ext_rcal_reg lpbk_ext_rcal;
  rand gtye_channel_tx_phical_cfg0_reg tx_phical_cfg0;
  rand gtye_channel_tx_phical_cfg1_reg tx_phical_cfg1;
  rand gtye_channel_rxcdr_lock_cfg3_reg rxcdr_lock_cfg3;
  rand gtye_channel_rxdfe_ut_cfg2_reg rxdfe_ut_cfg2;
  rand gtye_channel_ckcal2_cfg_1_reg ckcal2_cfg_1;
  rand gtye_channel_y_all_mode_reg y_all_mode;
  rand gtye_channel_rx_progdiv_rate_reg rx_progdiv_rate;
  rand gtye_channel_rxdfe_hf_cfg1_reg rxdfe_hf_cfg1;
  rand gtye_channel_tx_progdiv_rate_reg tx_progdiv_rate;
  rand gtye_channel_tx_dcc_loop_rst_cfg_reg tx_dcc_loop_rst_cfg;
  rand gtye_channel_rxdfe_hc_cfg0_reg rxdfe_hc_cfg0;
  rand gtye_channel_rxckcal1_i_loop_rst_cfg_reg rxckcal1_i_loop_rst_cfg;
  rand gtye_channel_rxckcal1_q_loop_rst_cfg_reg rxckcal1_q_loop_rst_cfg;
  rand gtye_channel_rxckcal1_iq_loop_rst_cfg_reg rxckcal1_iq_loop_rst_cfg;
  rand gtye_channel_rxckcal2_d_loop_rst_cfg_reg rxckcal2_d_loop_rst_cfg;
  rand gtye_channel_rxckcal2_x_loop_rst_cfg_reg rxckcal2_x_loop_rst_cfg;
  rand gtye_channel_rxckcal2_s_loop_rst_cfg_reg rxckcal2_s_loop_rst_cfg;
  rand gtye_channel_rxckcal2_dx_loop_rst_cfg_reg rxckcal2_dx_loop_rst_cfg;
  rand gtye_channel_rxdfe_kh_cfg0_reg rxdfe_kh_cfg0;
  rand gtye_channel_rxdfe_h4_cfg1_reg rxdfe_h4_cfg1;
  rand gtye_channel_rxdfe_h4_cfg0_reg rxdfe_h4_cfg0;
  rand gtye_channel_rxdfe_h3_cfg1_reg rxdfe_h3_cfg1;
  rand gtye_channel_ch_hspmux_reg ch_hspmux;
  rand gtye_channel_pcie3_clk_cor_min_lat_reg pcie3_clk_cor_min_lat;
  rand gtye_channel_usb_mode_reg usb_mode;
  rand gtye_channel_usb_raw_elec_reg usb_raw_elec;
  rand gtye_channel_rxrefclkdiv2_sel_reg rxrefclkdiv2_sel;
  rand gtye_channel_rxcdr_cfg2_gen4_reg rxcdr_cfg2_gen4;
  rand gtye_channel_rxcdr_cfg3_gen4_reg rxcdr_cfg3_gen4;
  rand gtye_channel_usb_burstmin_u3wake_reg usb_burstmin_u3wake;
  rand gtye_channel_usb_idlemin_polling_reg usb_idlemin_polling;
  rand gtye_channel_usb_idlemax_polling_reg usb_idlemax_polling;
  rand gtye_channel_usb_lfpspolling_burst_reg usb_lfpspolling_burst;
  rand gtye_channel_usb_lfpsping_burst_reg usb_lfpsping_burst;
  rand gtye_channel_usb_lfpsu1exit_burst_reg usb_lfpsu1exit_burst;
  rand gtye_channel_usb_lfpsu2lpexit_burst_ms_reg usb_lfpsu2lpexit_burst_ms;
  rand gtye_channel_usb_lfpsu3wake_burst_ms_reg usb_lfpsu3wake_burst_ms;
  rand gtye_channel_usb_lfpspolling_idle_ms_reg usb_lfpspolling_idle_ms;
  rand gtye_channel_rxdfe_ha_cfg1_reg rxdfe_ha_cfg1;
  rand gtye_channel_rxdfe_hb_cfg0_reg rxdfe_hb_cfg0;
  rand gtye_channel_rxcdr_cfg3_gen2_reg rxcdr_cfg3_gen2;
  rand gtye_channel_comma_align_latency_reg comma_align_latency;
  rand gtye_channel_es_error_count_reg es_error_count;
  rand gtye_channel_es_sample_count_reg es_sample_count;
  rand gtye_channel_es_control_status_reg es_control_status;
  rand gtye_channel_es_rdata_byte4_reg es_rdata_byte4;
  rand gtye_channel_es_rdata_byte3_reg es_rdata_byte3;
  rand gtye_channel_es_rdata_byte2_reg es_rdata_byte2;
  rand gtye_channel_es_rdata_byte1_reg es_rdata_byte1;
  rand gtye_channel_es_rdata_byte0_reg es_rdata_byte0;
  rand gtye_channel_es_sdata_byte4_reg es_sdata_byte4;
  rand gtye_channel_es_sdata_byte3_reg es_sdata_byte3;
  rand gtye_channel_es_sdata_byte2_reg es_sdata_byte2;
  rand gtye_channel_es_sdata_byte1_reg es_sdata_byte1;
  rand gtye_channel_es_sdata_byte0_reg es_sdata_byte0;
  rand gtye_channel_rx_prbs_err_15_0_cnt_reg rx_prbs_err_15_0_cnt;
  rand gtye_channel_rx_prbs_err_31_16_cnt_reg rx_prbs_err_31_16_cnt;
  rand gtye_channel_txgbox_fifo_latency_reg txgbox_fifo_latency;
  rand gtye_channel_rxgbox_fifo_latency_reg rxgbox_fifo_latency;
  rand gtye_channel_es_sdata_byte5_reg es_sdata_byte5;
  rand gtye_channel_es_sdata_byte6_reg es_sdata_byte6;
  rand gtye_channel_es_sdata_byte7_reg es_sdata_byte7;
  rand gtye_channel_es_sdata_byte8_reg es_sdata_byte8;
  rand gtye_channel_es_sdata_byte9_reg es_sdata_byte9;
  rand gtye_channel_es_rdata_byte5_reg es_rdata_byte5;
  rand gtye_channel_es_rdata_byte6_reg es_rdata_byte6;
  rand gtye_channel_es_rdata_byte7_reg es_rdata_byte7;
  rand gtye_channel_es_rdata_byte8_reg es_rdata_byte8;
  rand gtye_channel_es_rdata_byte9_reg es_rdata_byte9;
   
  uvm_reg_map reg_map;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "gtye_channel_reg_block" );
    super.new( .name( name ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cdr_swap_mode_en = gtye_channel_cdr_swap_mode_en_reg::type_id::create( "cdr_swap_mode_en" );
    cdr_swap_mode_en.configure( .blk_parent( this ) );
    cdr_swap_mode_en.build();
    rxbufreset_time = gtye_channel_rxbufreset_time_reg::type_id::create( "rxbufreset_time" );
    rxbufreset_time.configure( .blk_parent( this ) );
    rxbufreset_time.build();
    rxcdrphreset_time = gtye_channel_rxcdrphreset_time_reg::type_id::create( "rxcdrphreset_time" );
    rxcdrphreset_time.configure( .blk_parent( this ) );
    rxcdrphreset_time.build();
    rxpmareset_time = gtye_channel_rxpmareset_time_reg::type_id::create( "rxpmareset_time" );
    rxpmareset_time.configure( .blk_parent( this ) );
    rxpmareset_time.build();
    rxdfe_hb_cfg1 = gtye_channel_rxdfe_hb_cfg1_reg::type_id::create( "rxdfe_hb_cfg1" );
    rxdfe_hb_cfg1.configure( .blk_parent( this ) );
    rxdfe_hb_cfg1.build();
    txpmareset_time = gtye_channel_txpmareset_time_reg::type_id::create( "txpmareset_time" );
    txpmareset_time.configure( .blk_parent( this ) );
    txpmareset_time.build();
    tx_fifo_byp_en = gtye_channel_tx_fifo_byp_en_reg::type_id::create( "tx_fifo_byp_en" );
    tx_fifo_byp_en.configure( .blk_parent( this ) );
    tx_fifo_byp_en.build();
    tx_fabint_usrclk_flop = gtye_channel_tx_fabint_usrclk_flop_reg::type_id::create( "tx_fabint_usrclk_flop" );
    tx_fabint_usrclk_flop.configure( .blk_parent( this ) );
    tx_fabint_usrclk_flop.build();
    tx_progclk_sel = gtye_channel_tx_progclk_sel_reg::type_id::create( "tx_progclk_sel" );
    tx_progclk_sel.configure( .blk_parent( this ) );
    tx_progclk_sel.build();
    txamonsel = gtye_channel_txamonsel_reg::type_id::create( "txamonsel" );
    txamonsel.configure( .blk_parent( this ) );
    txamonsel.build();
    rxcdr_cfg0 = gtye_channel_rxcdr_cfg0_reg::type_id::create( "rxcdr_cfg0" );
    rxcdr_cfg0.configure( .blk_parent( this ) );
    rxcdr_cfg0.build();
    rxcdr_cfg1 = gtye_channel_rxcdr_cfg1_reg::type_id::create( "rxcdr_cfg1" );
    rxcdr_cfg1.configure( .blk_parent( this ) );
    rxcdr_cfg1.build();
    rxcdr_cfg2 = gtye_channel_rxcdr_cfg2_reg::type_id::create( "rxcdr_cfg2" );
    rxcdr_cfg2.configure( .blk_parent( this ) );
    rxcdr_cfg2.build();
    rxcdr_cfg3 = gtye_channel_rxcdr_cfg3_reg::type_id::create( "rxcdr_cfg3" );
    rxcdr_cfg3.configure( .blk_parent( this ) );
    rxcdr_cfg3.build();
    rxcdr_cfg4 = gtye_channel_rxcdr_cfg4_reg::type_id::create( "rxcdr_cfg4" );
    rxcdr_cfg4.configure( .blk_parent( this ) );
    rxcdr_cfg4.build();
    cpll_lock_cfg = gtye_channel_cpll_lock_cfg_reg::type_id::create( "cpll_lock_cfg" );
    cpll_lock_cfg.configure( .blk_parent( this ) );
    cpll_lock_cfg.build();
    chan_bond_max_skew = gtye_channel_chan_bond_max_skew_reg::type_id::create( "chan_bond_max_skew" );
    chan_bond_max_skew.configure( .blk_parent( this ) );
    chan_bond_max_skew.build();
    pci3_rx_elecidle_hi_count = gtye_channel_pci3_rx_elecidle_hi_count_reg::type_id::create( "pci3_rx_elecidle_hi_count" );
    pci3_rx_elecidle_hi_count.configure( .blk_parent( this ) );
    pci3_rx_elecidle_hi_count.build();
    pci3_rx_elecidle_h2l_count = gtye_channel_pci3_rx_elecidle_h2l_count_reg::type_id::create( "pci3_rx_elecidle_h2l_count" );
    pci3_rx_elecidle_h2l_count.configure( .blk_parent( this ) );
    pci3_rx_elecidle_h2l_count.build();
    rx_buffer_cfg = gtye_channel_rx_buffer_cfg_reg::type_id::create( "rx_buffer_cfg" );
    rx_buffer_cfg.configure( .blk_parent( this ) );
    rx_buffer_cfg.build();
    chan_bond_seq_1_enable = gtye_channel_chan_bond_seq_1_enable_reg::type_id::create( "chan_bond_seq_1_enable" );
    chan_bond_seq_1_enable.configure( .blk_parent( this ) );
    chan_bond_seq_1_enable.build();
    chan_bond_seq_2_2 = gtye_channel_chan_bond_seq_2_2_reg::type_id::create( "chan_bond_seq_2_2" );
    chan_bond_seq_2_2.configure( .blk_parent( this ) );
    chan_bond_seq_2_2.build();
    chan_bond_seq_2_3 = gtye_channel_chan_bond_seq_2_3_reg::type_id::create( "chan_bond_seq_2_3" );
    chan_bond_seq_2_3.configure( .blk_parent( this ) );
    chan_bond_seq_2_3.build();
    chan_bond_seq_2_4 = gtye_channel_chan_bond_seq_2_4_reg::type_id::create( "chan_bond_seq_2_4" );
    chan_bond_seq_2_4.configure( .blk_parent( this ) );
    chan_bond_seq_2_4.build();
    chan_bond_seq_2_enable = gtye_channel_chan_bond_seq_2_enable_reg::type_id::create( "chan_bond_seq_2_enable" );
    chan_bond_seq_2_enable.configure( .blk_parent( this ) );
    chan_bond_seq_2_enable.build();
    clk_cor_max_lat = gtye_channel_clk_cor_max_lat_reg::type_id::create( "clk_cor_max_lat" );
    clk_cor_max_lat.configure( .blk_parent( this ) );
    clk_cor_max_lat.build();
    clk_cor_seq_1_1 = gtye_channel_clk_cor_seq_1_1_reg::type_id::create( "clk_cor_seq_1_1" );
    clk_cor_seq_1_1.configure( .blk_parent( this ) );
    clk_cor_seq_1_1.build();
    clk_cor_seq_1_2 = gtye_channel_clk_cor_seq_1_2_reg::type_id::create( "clk_cor_seq_1_2" );
    clk_cor_seq_1_2.configure( .blk_parent( this ) );
    clk_cor_seq_1_2.build();
    clk_cor_seq_1_3 = gtye_channel_clk_cor_seq_1_3_reg::type_id::create( "clk_cor_seq_1_3" );
    clk_cor_seq_1_3.configure( .blk_parent( this ) );
    clk_cor_seq_1_3.build();
    clk_cor_seq_1_4 = gtye_channel_clk_cor_seq_1_4_reg::type_id::create( "clk_cor_seq_1_4" );
    clk_cor_seq_1_4.configure( .blk_parent( this ) );
    clk_cor_seq_1_4.build();
    clk_cor_seq_1_enable = gtye_channel_clk_cor_seq_1_enable_reg::type_id::create( "clk_cor_seq_1_enable" );
    clk_cor_seq_1_enable.configure( .blk_parent( this ) );
    clk_cor_seq_1_enable.build();
    clk_cor_seq_2_2 = gtye_channel_clk_cor_seq_2_2_reg::type_id::create( "clk_cor_seq_2_2" );
    clk_cor_seq_2_2.configure( .blk_parent( this ) );
    clk_cor_seq_2_2.build();
    clk_cor_seq_2_enable = gtye_channel_clk_cor_seq_2_enable_reg::type_id::create( "clk_cor_seq_2_enable" );
    clk_cor_seq_2_enable.configure( .blk_parent( this ) );
    clk_cor_seq_2_enable.build();
    clk_cor_seq_2_4 = gtye_channel_clk_cor_seq_2_4_reg::type_id::create( "clk_cor_seq_2_4" );
    clk_cor_seq_2_4.configure( .blk_parent( this ) );
    clk_cor_seq_2_4.build();
    rxdfe_he_cfg0 = gtye_channel_rxdfe_he_cfg0_reg::type_id::create( "rxdfe_he_cfg0" );
    rxdfe_he_cfg0.configure( .blk_parent( this ) );
    rxdfe_he_cfg0.build();
    align_comma_word = gtye_channel_align_comma_word_reg::type_id::create( "align_comma_word" );
    align_comma_word.configure( .blk_parent( this ) );
    align_comma_word.build();
    cpll_fbdiv = gtye_channel_cpll_fbdiv_reg::type_id::create( "cpll_fbdiv" );
    cpll_fbdiv.configure( .blk_parent( this ) );
    cpll_fbdiv.build();
    rxcdr_lock_cfg0 = gtye_channel_rxcdr_lock_cfg0_reg::type_id::create( "rxcdr_lock_cfg0" );
    rxcdr_lock_cfg0.configure( .blk_parent( this ) );
    rxcdr_lock_cfg0.build();
    cpll_refclk_div = gtye_channel_cpll_refclk_div_reg::type_id::create( "cpll_refclk_div" );
    cpll_refclk_div.configure( .blk_parent( this ) );
    cpll_refclk_div.build();
    cpll_init_cfg0 = gtye_channel_cpll_init_cfg0_reg::type_id::create( "cpll_init_cfg0" );
    cpll_init_cfg0.configure( .blk_parent( this ) );
    cpll_init_cfg0.build();
    dec_pcomma_detect = gtye_channel_dec_pcomma_detect_reg::type_id::create( "dec_pcomma_detect" );
    dec_pcomma_detect.configure( .blk_parent( this ) );
    dec_pcomma_detect.build();
    rxcdr_lock_cfg1 = gtye_channel_rxcdr_lock_cfg1_reg::type_id::create( "rxcdr_lock_cfg1" );
    rxcdr_lock_cfg1.configure( .blk_parent( this ) );
    rxcdr_lock_cfg1.build();
    rxcfok_cfg1 = gtye_channel_rxcfok_cfg1_reg::type_id::create( "rxcfok_cfg1" );
    rxcfok_cfg1.configure( .blk_parent( this ) );
    rxcfok_cfg1.build();
    rxdfe_h2_cfg0 = gtye_channel_rxdfe_h2_cfg0_reg::type_id::create( "rxdfe_h2_cfg0" );
    rxdfe_h2_cfg0.configure( .blk_parent( this ) );
    rxdfe_h2_cfg0.build();
    rxdfe_h2_cfg1 = gtye_channel_rxdfe_h2_cfg1_reg::type_id::create( "rxdfe_h2_cfg1" );
    rxdfe_h2_cfg1.configure( .blk_parent( this ) );
    rxdfe_h2_cfg1.build();
    rxcfok_cfg2 = gtye_channel_rxcfok_cfg2_reg::type_id::create( "rxcfok_cfg2" );
    rxcfok_cfg2.configure( .blk_parent( this ) );
    rxcfok_cfg2.build();
    rxlpm_cfg = gtye_channel_rxlpm_cfg_reg::type_id::create( "rxlpm_cfg" );
    rxlpm_cfg.configure( .blk_parent( this ) );
    rxlpm_cfg.build();
    rxlpm_kh_cfg0 = gtye_channel_rxlpm_kh_cfg0_reg::type_id::create( "rxlpm_kh_cfg0" );
    rxlpm_kh_cfg0.configure( .blk_parent( this ) );
    rxlpm_kh_cfg0.build();
    rxlpm_kh_cfg1 = gtye_channel_rxlpm_kh_cfg1_reg::type_id::create( "rxlpm_kh_cfg1" );
    rxlpm_kh_cfg1.configure( .blk_parent( this ) );
    rxlpm_kh_cfg1.build();
    rxdfelpm_kl_cfg0 = gtye_channel_rxdfelpm_kl_cfg0_reg::type_id::create( "rxdfelpm_kl_cfg0" );
    rxdfelpm_kl_cfg0.configure( .blk_parent( this ) );
    rxdfelpm_kl_cfg0.build();
    rxdfelpm_kl_cfg1 = gtye_channel_rxdfelpm_kl_cfg1_reg::type_id::create( "rxdfelpm_kl_cfg1" );
    rxdfelpm_kl_cfg1.configure( .blk_parent( this ) );
    rxdfelpm_kl_cfg1.build();
    rxlpm_os_cfg0 = gtye_channel_rxlpm_os_cfg0_reg::type_id::create( "rxlpm_os_cfg0" );
    rxlpm_os_cfg0.configure( .blk_parent( this ) );
    rxlpm_os_cfg0.build();
    rxlpm_os_cfg1 = gtye_channel_rxlpm_os_cfg1_reg::type_id::create( "rxlpm_os_cfg1" );
    rxlpm_os_cfg1.configure( .blk_parent( this ) );
    rxlpm_os_cfg1.build();
    rxlpm_gc_cfg = gtye_channel_rxlpm_gc_cfg_reg::type_id::create( "rxlpm_gc_cfg" );
    rxlpm_gc_cfg.configure( .blk_parent( this ) );
    rxlpm_gc_cfg.build();
    dmonitor_cfg1 = gtye_channel_dmonitor_cfg1_reg::type_id::create( "dmonitor_cfg1" );
    dmonitor_cfg1.configure( .blk_parent( this ) );
    dmonitor_cfg1.build();
    es_control = gtye_channel_es_control_reg::type_id::create( "es_control" );
    es_control.configure( .blk_parent( this ) );
    es_control.build();
    rxdfe_gc_cfg2 = gtye_channel_rxdfe_gc_cfg2_reg::type_id::create( "rxdfe_gc_cfg2" );
    rxdfe_gc_cfg2.configure( .blk_parent( this ) );
    rxdfe_gc_cfg2.build();
    txdly_lcfg = gtye_channel_txdly_lcfg_reg::type_id::create( "txdly_lcfg" );
    txdly_lcfg.configure( .blk_parent( this ) );
    txdly_lcfg.build();
    es_qualifier0 = gtye_channel_es_qualifier0_reg::type_id::create( "es_qualifier0" );
    es_qualifier0.configure( .blk_parent( this ) );
    es_qualifier0.build();
    es_qualifier1 = gtye_channel_es_qualifier1_reg::type_id::create( "es_qualifier1" );
    es_qualifier1.configure( .blk_parent( this ) );
    es_qualifier1.build();
    es_qualifier2 = gtye_channel_es_qualifier2_reg::type_id::create( "es_qualifier2" );
    es_qualifier2.configure( .blk_parent( this ) );
    es_qualifier2.build();
    es_qualifier3 = gtye_channel_es_qualifier3_reg::type_id::create( "es_qualifier3" );
    es_qualifier3.configure( .blk_parent( this ) );
    es_qualifier3.build();
    es_qualifier4 = gtye_channel_es_qualifier4_reg::type_id::create( "es_qualifier4" );
    es_qualifier4.configure( .blk_parent( this ) );
    es_qualifier4.build();
    es_qual_mask0 = gtye_channel_es_qual_mask0_reg::type_id::create( "es_qual_mask0" );
    es_qual_mask0.configure( .blk_parent( this ) );
    es_qual_mask0.build();
    es_qual_mask1 = gtye_channel_es_qual_mask1_reg::type_id::create( "es_qual_mask1" );
    es_qual_mask1.configure( .blk_parent( this ) );
    es_qual_mask1.build();
    es_qual_mask2 = gtye_channel_es_qual_mask2_reg::type_id::create( "es_qual_mask2" );
    es_qual_mask2.configure( .blk_parent( this ) );
    es_qual_mask2.build();
    es_qual_mask3 = gtye_channel_es_qual_mask3_reg::type_id::create( "es_qual_mask3" );
    es_qual_mask3.configure( .blk_parent( this ) );
    es_qual_mask3.build();
    es_qual_mask4 = gtye_channel_es_qual_mask4_reg::type_id::create( "es_qual_mask4" );
    es_qual_mask4.configure( .blk_parent( this ) );
    es_qual_mask4.build();
    es_sdata_mask0 = gtye_channel_es_sdata_mask0_reg::type_id::create( "es_sdata_mask0" );
    es_sdata_mask0.configure( .blk_parent( this ) );
    es_sdata_mask0.build();
    es_sdata_mask1 = gtye_channel_es_sdata_mask1_reg::type_id::create( "es_sdata_mask1" );
    es_sdata_mask1.configure( .blk_parent( this ) );
    es_sdata_mask1.build();
    es_sdata_mask2 = gtye_channel_es_sdata_mask2_reg::type_id::create( "es_sdata_mask2" );
    es_sdata_mask2.configure( .blk_parent( this ) );
    es_sdata_mask2.build();
    es_sdata_mask3 = gtye_channel_es_sdata_mask3_reg::type_id::create( "es_sdata_mask3" );
    es_sdata_mask3.configure( .blk_parent( this ) );
    es_sdata_mask3.build();
    es_sdata_mask4 = gtye_channel_es_sdata_mask4_reg::type_id::create( "es_sdata_mask4" );
    es_sdata_mask4.configure( .blk_parent( this ) );
    es_sdata_mask4.build();
    fts_lane_deskew_en = gtye_channel_fts_lane_deskew_en_reg::type_id::create( "fts_lane_deskew_en" );
    fts_lane_deskew_en.configure( .blk_parent( this ) );
    fts_lane_deskew_en.build();
    es_horz_offset = gtye_channel_es_horz_offset_reg::type_id::create( "es_horz_offset" );
    es_horz_offset.configure( .blk_parent( this ) );
    es_horz_offset.build();
    rxdfe_hc_cfg1 = gtye_channel_rxdfe_hc_cfg1_reg::type_id::create( "rxdfe_hc_cfg1" );
    rxdfe_hc_cfg1.configure( .blk_parent( this ) );
    rxdfe_hc_cfg1.build();
    es_pma_cfg = gtye_channel_es_pma_cfg_reg::type_id::create( "es_pma_cfg" );
    es_pma_cfg.configure( .blk_parent( this ) );
    es_pma_cfg.build();
    rx_dfe_agc_cfg1 = gtye_channel_rx_dfe_agc_cfg1_reg::type_id::create( "rx_dfe_agc_cfg1" );
    rx_dfe_agc_cfg1.configure( .blk_parent( this ) );
    rx_dfe_agc_cfg1.build();
    txfe_cfg2 = gtye_channel_txfe_cfg2_reg::type_id::create( "txfe_cfg2" );
    txfe_cfg2.configure( .blk_parent( this ) );
    txfe_cfg2.build();
    txfe_cfg3 = gtye_channel_txfe_cfg3_reg::type_id::create( "txfe_cfg3" );
    txfe_cfg3.configure( .blk_parent( this ) );
    txfe_cfg3.build();
    pcie_64b_dyn_clksw_dis = gtye_channel_pcie_64b_dyn_clksw_dis_reg::type_id::create( "pcie_64b_dyn_clksw_dis" );
    pcie_64b_dyn_clksw_dis.configure( .blk_parent( this ) );
    pcie_64b_dyn_clksw_dis.build();
    align_pcomma_det = gtye_channel_align_pcomma_det_reg::type_id::create( "align_pcomma_det" );
    align_pcomma_det.configure( .blk_parent( this ) );
    align_pcomma_det.build();
    tx_progdiv_cfg = gtye_channel_tx_progdiv_cfg_reg::type_id::create( "tx_progdiv_cfg" );
    tx_progdiv_cfg.configure( .blk_parent( this ) );
    tx_progdiv_cfg.build();
    rxdfe_os_cfg0 = gtye_channel_rxdfe_os_cfg0_reg::type_id::create( "rxdfe_os_cfg0" );
    rxdfe_os_cfg0.configure( .blk_parent( this ) );
    rxdfe_os_cfg0.build();
    rxphdly_cfg = gtye_channel_rxphdly_cfg_reg::type_id::create( "rxphdly_cfg" );
    rxphdly_cfg.configure( .blk_parent( this ) );
    rxphdly_cfg.build();
    rxdfe_os_cfg1 = gtye_channel_rxdfe_os_cfg1_reg::type_id::create( "rxdfe_os_cfg1" );
    rxdfe_os_cfg1.configure( .blk_parent( this ) );
    rxdfe_os_cfg1.build();
    rxdly_cfg = gtye_channel_rxdly_cfg_reg::type_id::create( "rxdly_cfg" );
    rxdly_cfg.configure( .blk_parent( this ) );
    rxdly_cfg.build();
    rxdly_lcfg = gtye_channel_rxdly_lcfg_reg::type_id::create( "rxdly_lcfg" );
    rxdly_lcfg.configure( .blk_parent( this ) );
    rxdly_lcfg.build();
    rxdfe_hf_cfg0 = gtye_channel_rxdfe_hf_cfg0_reg::type_id::create( "rxdfe_hf_cfg0" );
    rxdfe_hf_cfg0.configure( .blk_parent( this ) );
    rxdfe_hf_cfg0.build();
    rxdfe_hd_cfg0 = gtye_channel_rxdfe_hd_cfg0_reg::type_id::create( "rxdfe_hd_cfg0" );
    rxdfe_hd_cfg0.configure( .blk_parent( this ) );
    rxdfe_hd_cfg0.build();
    rx_bias_cfg0 = gtye_channel_rx_bias_cfg0_reg::type_id::create( "rx_bias_cfg0" );
    rx_bias_cfg0.configure( .blk_parent( this ) );
    rx_bias_cfg0.build();
    pcs_rsvd0 = gtye_channel_pcs_rsvd0_reg::type_id::create( "pcs_rsvd0" );
    pcs_rsvd0.configure( .blk_parent( this ) );
    pcs_rsvd0.build();
    rxph_monitor_sel = gtye_channel_rxph_monitor_sel_reg::type_id::create( "rxph_monitor_sel" );
    rxph_monitor_sel.configure( .blk_parent( this ) );
    rxph_monitor_sel.build();
    rx_i2v_filter_en = gtye_channel_rx_i2v_filter_en_reg::type_id::create( "rx_i2v_filter_en" );
    rx_i2v_filter_en.configure( .blk_parent( this ) );
    rx_i2v_filter_en.build();
    cbcc_data_source_sel = gtye_channel_cbcc_data_source_sel_reg::type_id::create( "cbcc_data_source_sel" );
    cbcc_data_source_sel.configure( .blk_parent( this ) );
    cbcc_data_source_sel.build();
    rx_sig_valid_dly = gtye_channel_rx_sig_valid_dly_reg::type_id::create( "rx_sig_valid_dly" );
    rx_sig_valid_dly.configure( .blk_parent( this ) );
    rx_sig_valid_dly.build();
    rxbuf_thresh_ovflw = gtye_channel_rxbuf_thresh_ovflw_reg::type_id::create( "rxbuf_thresh_ovflw" );
    rxbuf_thresh_ovflw.configure( .blk_parent( this ) );
    rxbuf_thresh_ovflw.build();
    rxbuf_thresh_ovrd = gtye_channel_rxbuf_thresh_ovrd_reg::type_id::create( "rxbuf_thresh_ovrd" );
    rxbuf_thresh_ovrd.configure( .blk_parent( this ) );
    rxbuf_thresh_ovrd.build();
    rxbuf_eidle_hi_cnt = gtye_channel_rxbuf_eidle_hi_cnt_reg::type_id::create( "rxbuf_eidle_hi_cnt" );
    rxbuf_eidle_hi_cnt.configure( .blk_parent( this ) );
    rxbuf_eidle_hi_cnt.build();
    sata_burst_val = gtye_channel_sata_burst_val_reg::type_id::create( "sata_burst_val" );
    sata_burst_val.configure( .blk_parent( this ) );
    sata_burst_val.build();
    usb_poll_sata_min_burst = gtye_channel_usb_poll_sata_min_burst_reg::type_id::create( "usb_poll_sata_min_burst" );
    usb_poll_sata_min_burst.configure( .blk_parent( this ) );
    usb_poll_sata_min_burst.build();
    usb_ping_sata_min_init = gtye_channel_usb_ping_sata_min_init_reg::type_id::create( "usb_ping_sata_min_init" );
    usb_ping_sata_min_init.configure( .blk_parent( this ) );
    usb_ping_sata_min_init.build();
    usb_poll_sata_max_burst = gtye_channel_usb_poll_sata_max_burst_reg::type_id::create( "usb_poll_sata_max_burst" );
    usb_poll_sata_max_burst.configure( .blk_parent( this ) );
    usb_poll_sata_max_burst.build();
    usb_ping_sata_max_init = gtye_channel_usb_ping_sata_max_init_reg::type_id::create( "usb_ping_sata_max_init" );
    usb_ping_sata_max_init.configure( .blk_parent( this ) );
    usb_ping_sata_max_init.build();
    rx_clk25_div = gtye_channel_rx_clk25_div_reg::type_id::create( "rx_clk25_div" );
    rx_clk25_div.configure( .blk_parent( this ) );
    rx_clk25_div.build();
    rxdfe_ut_cfg1 = gtye_channel_rxdfe_ut_cfg1_reg::type_id::create( "rxdfe_ut_cfg1" );
    rxdfe_ut_cfg1.configure( .blk_parent( this ) );
    rxdfe_ut_cfg1.build();
    txphdly_cfg1 = gtye_channel_txphdly_cfg1_reg::type_id::create( "txphdly_cfg1" );
    txphdly_cfg1.configure( .blk_parent( this ) );
    txphdly_cfg1.build();
    rxdfe_vp_cfg0 = gtye_channel_rxdfe_vp_cfg0_reg::type_id::create( "rxdfe_vp_cfg0" );
    rxdfe_vp_cfg0.configure( .blk_parent( this ) );
    rxdfe_vp_cfg0.build();
    txph_monitor_sel = gtye_channel_txph_monitor_sel_reg::type_id::create( "txph_monitor_sel" );
    txph_monitor_sel.configure( .blk_parent( this ) );
    txph_monitor_sel.build();
    adapt_cfg2 = gtye_channel_adapt_cfg2_reg::type_id::create( "adapt_cfg2" );
    adapt_cfg2.configure( .blk_parent( this ) );
    adapt_cfg2.build();
    rxdfe_vp_cfg1 = gtye_channel_rxdfe_vp_cfg1_reg::type_id::create( "rxdfe_vp_cfg1" );
    rxdfe_vp_cfg1.configure( .blk_parent( this ) );
    rxdfe_vp_cfg1.build();
    term_rcal_cfg = gtye_channel_term_rcal_cfg_reg::type_id::create( "term_rcal_cfg" );
    term_rcal_cfg.configure( .blk_parent( this ) );
    term_rcal_cfg.build();
    rxpi_cfg0 = gtye_channel_rxpi_cfg0_reg::type_id::create( "rxpi_cfg0" );
    rxpi_cfg0.configure( .blk_parent( this ) );
    rxpi_cfg0.build();
    pd_trans_time_from_p2 = gtye_channel_pd_trans_time_from_p2_reg::type_id::create( "pd_trans_time_from_p2" );
    pd_trans_time_from_p2.configure( .blk_parent( this ) );
    pd_trans_time_from_p2.build();
    pd_trans_time_none_p2 = gtye_channel_pd_trans_time_none_p2_reg::type_id::create( "pd_trans_time_none_p2" );
    pd_trans_time_none_p2.configure( .blk_parent( this ) );
    pd_trans_time_none_p2.build();
    trans_time_rate = gtye_channel_trans_time_rate_reg::type_id::create( "trans_time_rate" );
    trans_time_rate.configure( .blk_parent( this ) );
    trans_time_rate.build();
    tst_rsv0 = gtye_channel_tst_rsv0_reg::type_id::create( "tst_rsv0" );
    tst_rsv0.configure( .blk_parent( this ) );
    tst_rsv0.build();
    tx_clk25_div = gtye_channel_tx_clk25_div_reg::type_id::create( "tx_clk25_div" );
    tx_clk25_div.configure( .blk_parent( this ) );
    tx_clk25_div.build();
    tx_deemph0 = gtye_channel_tx_deemph0_reg::type_id::create( "tx_deemph0" );
    tx_deemph0.configure( .blk_parent( this ) );
    tx_deemph0.build();
    tx_maincursor_sel = gtye_channel_tx_maincursor_sel_reg::type_id::create( "tx_maincursor_sel" );
    tx_maincursor_sel.configure( .blk_parent( this ) );
    tx_maincursor_sel.build();
    tx_rxdetect_cfg = gtye_channel_tx_rxdetect_cfg_reg::type_id::create( "tx_rxdetect_cfg" );
    tx_rxdetect_cfg.configure( .blk_parent( this ) );
    tx_rxdetect_cfg.build();
    tx_clkmux_en = gtye_channel_tx_clkmux_en_reg::type_id::create( "tx_clkmux_en" );
    tx_clkmux_en.configure( .blk_parent( this ) );
    tx_clkmux_en.build();
    tx_margin_full_0 = gtye_channel_tx_margin_full_0_reg::type_id::create( "tx_margin_full_0" );
    tx_margin_full_0.configure( .blk_parent( this ) );
    tx_margin_full_0.build();
    tx_margin_full_2 = gtye_channel_tx_margin_full_2_reg::type_id::create( "tx_margin_full_2" );
    tx_margin_full_2.configure( .blk_parent( this ) );
    tx_margin_full_2.build();
    tx_margin_full_4 = gtye_channel_tx_margin_full_4_reg::type_id::create( "tx_margin_full_4" );
    tx_margin_full_4.configure( .blk_parent( this ) );
    tx_margin_full_4.build();
    tx_margin_low_1 = gtye_channel_tx_margin_low_1_reg::type_id::create( "tx_margin_low_1" );
    tx_margin_low_1.configure( .blk_parent( this ) );
    tx_margin_low_1.build();
    tx_margin_low_3 = gtye_channel_tx_margin_low_3_reg::type_id::create( "tx_margin_low_3" );
    tx_margin_low_3.configure( .blk_parent( this ) );
    tx_margin_low_3.build();
    rxdfe_h3_cfg0 = gtye_channel_rxdfe_h3_cfg0_reg::type_id::create( "rxdfe_h3_cfg0" );
    rxdfe_h3_cfg0.configure( .blk_parent( this ) );
    rxdfe_h3_cfg0.build();
    tx_int_datawidth = gtye_channel_tx_int_datawidth_reg::type_id::create( "tx_int_datawidth" );
    tx_int_datawidth.configure( .blk_parent( this ) );
    tx_int_datawidth.build();
    rxprbs_linkacq_cnt = gtye_channel_rxprbs_linkacq_cnt_reg::type_id::create( "rxprbs_linkacq_cnt" );
    rxprbs_linkacq_cnt.configure( .blk_parent( this ) );
    rxprbs_linkacq_cnt.build();
    tx_pmadata_opt = gtye_channel_tx_pmadata_opt_reg::type_id::create( "tx_pmadata_opt" );
    tx_pmadata_opt.configure( .blk_parent( this ) );
    tx_pmadata_opt.build();
    txsync_multilane = gtye_channel_txsync_multilane_reg::type_id::create( "txsync_multilane" );
    txsync_multilane.configure( .blk_parent( this ) );
    txsync_multilane.build();
    acjtag_mode = gtye_channel_acjtag_mode_reg::type_id::create( "acjtag_mode" );
    acjtag_mode.configure( .blk_parent( this ) );
    acjtag_mode.build();
    rxdfelpm_kl_cfg2 = gtye_channel_rxdfelpm_kl_cfg2_reg::type_id::create( "rxdfelpm_kl_cfg2" );
    rxdfelpm_kl_cfg2.configure( .blk_parent( this ) );
    rxdfelpm_kl_cfg2.build();
    txdly_cfg = gtye_channel_txdly_cfg_reg::type_id::create( "txdly_cfg" );
    txdly_cfg.configure( .blk_parent( this ) );
    txdly_cfg.build();
    txph_cfg = gtye_channel_txph_cfg_reg::type_id::create( "txph_cfg" );
    txph_cfg.configure( .blk_parent( this ) );
    txph_cfg.build();
    txphdly_cfg0 = gtye_channel_txphdly_cfg0_reg::type_id::create( "txphdly_cfg0" );
    txphdly_cfg0.configure( .blk_parent( this ) );
    txphdly_cfg0.build();
    adapt_cfg0 = gtye_channel_adapt_cfg0_reg::type_id::create( "adapt_cfg0" );
    adapt_cfg0.configure( .blk_parent( this ) );
    adapt_cfg0.build();
    adapt_cfg1 = gtye_channel_adapt_cfg1_reg::type_id::create( "adapt_cfg1" );
    adapt_cfg1.configure( .blk_parent( this ) );
    adapt_cfg1.build();
    rxcfok_cfg0 = gtye_channel_rxcfok_cfg0_reg::type_id::create( "rxcfok_cfg0" );
    rxcfok_cfg0.configure( .blk_parent( this ) );
    rxcfok_cfg0.build();
    es_clk_phase_sel = gtye_channel_es_clk_phase_sel_reg::type_id::create( "es_clk_phase_sel" );
    es_clk_phase_sel.configure( .blk_parent( this ) );
    es_clk_phase_sel.build();
    tx_pma_rsv0 = gtye_channel_tx_pma_rsv0_reg::type_id::create( "tx_pma_rsv0" );
    tx_pma_rsv0.configure( .blk_parent( this ) );
    tx_pma_rsv0.build();
    rx_afe_cm_en = gtye_channel_rx_afe_cm_en_reg::type_id::create( "rx_afe_cm_en" );
    rx_afe_cm_en.configure( .blk_parent( this ) );
    rx_afe_cm_en.build();
    rxdfe_h5_cfg1 = gtye_channel_rxdfe_h5_cfg1_reg::type_id::create( "rxdfe_h5_cfg1" );
    rxdfe_h5_cfg1.configure( .blk_parent( this ) );
    rxdfe_h5_cfg1.build();
    gearbox_mode = gtye_channel_gearbox_mode_reg::type_id::create( "gearbox_mode" );
    gearbox_mode.configure( .blk_parent( this ) );
    gearbox_mode.build();
    txpi_ppm_cfg = gtye_channel_txpi_ppm_cfg_reg::type_id::create( "txpi_ppm_cfg" );
    txpi_ppm_cfg.configure( .blk_parent( this ) );
    txpi_ppm_cfg.build();
    rx_dfelpm_klkh_agc_stup_en = gtye_channel_rx_dfelpm_klkh_agc_stup_en_reg::type_id::create( "rx_dfelpm_klkh_agc_stup_en" );
    rx_dfelpm_klkh_agc_stup_en.configure( .blk_parent( this ) );
    rx_dfelpm_klkh_agc_stup_en.build();
    txfe_cfg0 = gtye_channel_txfe_cfg0_reg::type_id::create( "txfe_cfg0" );
    txfe_cfg0.configure( .blk_parent( this ) );
    txfe_cfg0.build();
    rxdfe_ut_cfg0 = gtye_channel_rxdfe_ut_cfg0_reg::type_id::create( "rxdfe_ut_cfg0" );
    rxdfe_ut_cfg0.configure( .blk_parent( this ) );
    rxdfe_ut_cfg0.build();
    cpll_cfg0 = gtye_channel_cpll_cfg0_reg::type_id::create( "cpll_cfg0" );
    cpll_cfg0.configure( .blk_parent( this ) );
    cpll_cfg0.build();
    cpll_cfg1 = gtye_channel_cpll_cfg1_reg::type_id::create( "cpll_cfg1" );
    cpll_cfg1.configure( .blk_parent( this ) );
    cpll_cfg1.build();
    txfe_cfg1 = gtye_channel_txfe_cfg1_reg::type_id::create( "txfe_cfg1" );
    txfe_cfg1.configure( .blk_parent( this ) );
    txfe_cfg1.build();
    rxcdr_cfg0_gen3 = gtye_channel_rxcdr_cfg0_gen3_reg::type_id::create( "rxcdr_cfg0_gen3" );
    rxcdr_cfg0_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg0_gen3.build();
    rxcdr_cfg1_gen3 = gtye_channel_rxcdr_cfg1_gen3_reg::type_id::create( "rxcdr_cfg1_gen3" );
    rxcdr_cfg1_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg1_gen3.build();
    rxcdr_cfg2_gen3 = gtye_channel_rxcdr_cfg2_gen3_reg::type_id::create( "rxcdr_cfg2_gen3" );
    rxcdr_cfg2_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg2_gen3.build();
    rxcdr_cfg3_gen3 = gtye_channel_rxcdr_cfg3_gen3_reg::type_id::create( "rxcdr_cfg3_gen3" );
    rxcdr_cfg3_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg3_gen3.build();
    rxcdr_cfg4_gen3 = gtye_channel_rxcdr_cfg4_gen3_reg::type_id::create( "rxcdr_cfg4_gen3" );
    rxcdr_cfg4_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg4_gen3.build();
    txpi_cfg0 = gtye_channel_txpi_cfg0_reg::type_id::create( "txpi_cfg0" );
    txpi_cfg0.configure( .blk_parent( this ) );
    txpi_cfg0.build();
    txpi_cfg1 = gtye_channel_txpi_cfg1_reg::type_id::create( "txpi_cfg1" );
    txpi_cfg1.configure( .blk_parent( this ) );
    txpi_cfg1.build();
    pcie_rxpma_cfg = gtye_channel_pcie_rxpma_cfg_reg::type_id::create( "pcie_rxpma_cfg" );
    pcie_rxpma_cfg.configure( .blk_parent( this ) );
    pcie_rxpma_cfg.build();
    pcie_txpcs_cfg_gen3 = gtye_channel_pcie_txpcs_cfg_gen3_reg::type_id::create( "pcie_txpcs_cfg_gen3" );
    pcie_txpcs_cfg_gen3.configure( .blk_parent( this ) );
    pcie_txpcs_cfg_gen3.build();
    pcie_txpma_cfg = gtye_channel_pcie_txpma_cfg_reg::type_id::create( "pcie_txpma_cfg" );
    pcie_txpma_cfg.configure( .blk_parent( this ) );
    pcie_txpma_cfg.build();
    rx_clk_slip_ovrd = gtye_channel_rx_clk_slip_ovrd_reg::type_id::create( "rx_clk_slip_ovrd" );
    rx_clk_slip_ovrd.configure( .blk_parent( this ) );
    rx_clk_slip_ovrd.build();
    pcie_pll_sel_mode_gen4 = gtye_channel_pcie_pll_sel_mode_gen4_reg::type_id::create( "pcie_pll_sel_mode_gen4" );
    pcie_pll_sel_mode_gen4.configure( .blk_parent( this ) );
    pcie_pll_sel_mode_gen4.build();
    rxdfe_hd_cfg1 = gtye_channel_rxdfe_hd_cfg1_reg::type_id::create( "rxdfe_hd_cfg1" );
    rxdfe_hd_cfg1.configure( .blk_parent( this ) );
    rxdfe_hd_cfg1.build();
    rxcdr_cfg5_gen3 = gtye_channel_rxcdr_cfg5_gen3_reg::type_id::create( "rxcdr_cfg5_gen3" );
    rxcdr_cfg5_gen3.configure( .blk_parent( this ) );
    rxcdr_cfg5_gen3.build();
    rxdfe_kh_cfg3 = gtye_channel_rxdfe_kh_cfg3_reg::type_id::create( "rxdfe_kh_cfg3" );
    rxdfe_kh_cfg3.configure( .blk_parent( this ) );
    rxdfe_kh_cfg3.build();
    rxdfe_kh_cfg2 = gtye_channel_rxdfe_kh_cfg2_reg::type_id::create( "rxdfe_kh_cfg2" );
    rxdfe_kh_cfg2.configure( .blk_parent( this ) );
    rxdfe_kh_cfg2.build();
    rxdfe_kh_cfg1 = gtye_channel_rxdfe_kh_cfg1_reg::type_id::create( "rxdfe_kh_cfg1" );
    rxdfe_kh_cfg1.configure( .blk_parent( this ) );
    rxdfe_kh_cfg1.build();
    rxdfe_h5_cfg0 = gtye_channel_rxdfe_h5_cfg0_reg::type_id::create( "rxdfe_h5_cfg0" );
    rxdfe_h5_cfg0.configure( .blk_parent( this ) );
    rxdfe_h5_cfg0.build();
    rxcdr_cfg5 = gtye_channel_rxcdr_cfg5_reg::type_id::create( "rxcdr_cfg5" );
    rxcdr_cfg5.configure( .blk_parent( this ) );
    rxcdr_cfg5.build();
    rxdfe_he_cfg1 = gtye_channel_rxdfe_he_cfg1_reg::type_id::create( "rxdfe_he_cfg1" );
    rxdfe_he_cfg1.configure( .blk_parent( this ) );
    rxdfe_he_cfg1.build();
    cpll_cfg3 = gtye_channel_cpll_cfg3_reg::type_id::create( "cpll_cfg3" );
    cpll_cfg3.configure( .blk_parent( this ) );
    cpll_cfg3.build();
    rxdfe_h6_cfg0 = gtye_channel_rxdfe_h6_cfg0_reg::type_id::create( "rxdfe_h6_cfg0" );
    rxdfe_h6_cfg0.configure( .blk_parent( this ) );
    rxdfe_h6_cfg0.build();
    rxdfe_h6_cfg1 = gtye_channel_rxdfe_h6_cfg1_reg::type_id::create( "rxdfe_h6_cfg1" );
    rxdfe_h6_cfg1.configure( .blk_parent( this ) );
    rxdfe_h6_cfg1.build();
    rxdfe_h7_cfg0 = gtye_channel_rxdfe_h7_cfg0_reg::type_id::create( "rxdfe_h7_cfg0" );
    rxdfe_h7_cfg0.configure( .blk_parent( this ) );
    rxdfe_h7_cfg0.build();
    ddi_realign_wait = gtye_channel_ddi_realign_wait_reg::type_id::create( "ddi_realign_wait" );
    ddi_realign_wait.configure( .blk_parent( this ) );
    ddi_realign_wait.build();
    txgbox_fifo_init_rd_addr = gtye_channel_txgbox_fifo_init_rd_addr_reg::type_id::create( "txgbox_fifo_init_rd_addr" );
    txgbox_fifo_init_rd_addr.configure( .blk_parent( this ) );
    txgbox_fifo_init_rd_addr.build();
    cpll_cfg2 = gtye_channel_cpll_cfg2_reg::type_id::create( "cpll_cfg2" );
    cpll_cfg2.configure( .blk_parent( this ) );
    cpll_cfg2.build();
    rxphsamp_cfg = gtye_channel_rxphsamp_cfg_reg::type_id::create( "rxphsamp_cfg" );
    rxphsamp_cfg.configure( .blk_parent( this ) );
    rxphsamp_cfg.build();
    rxphslip_cfg = gtye_channel_rxphslip_cfg_reg::type_id::create( "rxphslip_cfg" );
    rxphslip_cfg.configure( .blk_parent( this ) );
    rxphslip_cfg.build();
    rxphbeacon_cfg = gtye_channel_rxphbeacon_cfg_reg::type_id::create( "rxphbeacon_cfg" );
    rxphbeacon_cfg.configure( .blk_parent( this ) );
    rxphbeacon_cfg.build();
    rxdfe_h7_cfg1 = gtye_channel_rxdfe_h7_cfg1_reg::type_id::create( "rxdfe_h7_cfg1" );
    rxdfe_h7_cfg1.configure( .blk_parent( this ) );
    rxdfe_h7_cfg1.build();
    rxdfe_h8_cfg0 = gtye_channel_rxdfe_h8_cfg0_reg::type_id::create( "rxdfe_h8_cfg0" );
    rxdfe_h8_cfg0.configure( .blk_parent( this ) );
    rxdfe_h8_cfg0.build();
    rxdfe_h8_cfg1 = gtye_channel_rxdfe_h8_cfg1_reg::type_id::create( "rxdfe_h8_cfg1" );
    rxdfe_h8_cfg1.configure( .blk_parent( this ) );
    rxdfe_h8_cfg1.build();
    pcie_bufg_div_ctrl = gtye_channel_pcie_bufg_div_ctrl_reg::type_id::create( "pcie_bufg_div_ctrl" );
    pcie_bufg_div_ctrl.configure( .blk_parent( this ) );
    pcie_bufg_div_ctrl.build();
    pcie_rxpcs_cfg_gen3 = gtye_channel_pcie_rxpcs_cfg_gen3_reg::type_id::create( "pcie_rxpcs_cfg_gen3" );
    pcie_rxpcs_cfg_gen3.configure( .blk_parent( this ) );
    pcie_rxpcs_cfg_gen3.build();
    rxdfe_h9_cfg0 = gtye_channel_rxdfe_h9_cfg0_reg::type_id::create( "rxdfe_h9_cfg0" );
    rxdfe_h9_cfg0.configure( .blk_parent( this ) );
    rxdfe_h9_cfg0.build();
    rx_progdiv_cfg = gtye_channel_rx_progdiv_cfg_reg::type_id::create( "rx_progdiv_cfg" );
    rx_progdiv_cfg.configure( .blk_parent( this ) );
    rx_progdiv_cfg.build();
    rxdfe_h9_cfg1 = gtye_channel_rxdfe_h9_cfg1_reg::type_id::create( "rxdfe_h9_cfg1" );
    rxdfe_h9_cfg1.configure( .blk_parent( this ) );
    rxdfe_h9_cfg1.build();
    rxdfe_ha_cfg0 = gtye_channel_rxdfe_ha_cfg0_reg::type_id::create( "rxdfe_ha_cfg0" );
    rxdfe_ha_cfg0.configure( .blk_parent( this ) );
    rxdfe_ha_cfg0.build();
    chan_bond_seq_1_2 = gtye_channel_chan_bond_seq_1_2_reg::type_id::create( "chan_bond_seq_1_2" );
    chan_bond_seq_1_2.configure( .blk_parent( this ) );
    chan_bond_seq_1_2.build();
    rxdfe_gc_cfg0 = gtye_channel_rxdfe_gc_cfg0_reg::type_id::create( "rxdfe_gc_cfg0" );
    rxdfe_gc_cfg0.configure( .blk_parent( this ) );
    rxdfe_gc_cfg0.build();
    rxdfe_gc_cfg1 = gtye_channel_rxdfe_gc_cfg1_reg::type_id::create( "rxdfe_gc_cfg1" );
    rxdfe_gc_cfg1.configure( .blk_parent( this ) );
    rxdfe_gc_cfg1.build();
    rx_ddi_sel = gtye_channel_rx_ddi_sel_reg::type_id::create( "rx_ddi_sel" );
    rx_ddi_sel.configure( .blk_parent( this ) );
    rx_ddi_sel.build();
    rxdfe_cfg0 = gtye_channel_rxdfe_cfg0_reg::type_id::create( "rxdfe_cfg0" );
    rxdfe_cfg0.configure( .blk_parent( this ) );
    rxdfe_cfg0.build();
    rxdfe_cfg1 = gtye_channel_rxdfe_cfg1_reg::type_id::create( "rxdfe_cfg1" );
    rxdfe_cfg1.configure( .blk_parent( this ) );
    rxdfe_cfg1.build();
    rx_resload_ovrd = gtye_channel_rx_resload_ovrd_reg::type_id::create( "rx_resload_ovrd" );
    rx_resload_ovrd.configure( .blk_parent( this ) );
    rx_resload_ovrd.build();
    rx_en_ctle_rcal_b = gtye_channel_rx_en_ctle_rcal_b_reg::type_id::create( "rx_en_ctle_rcal_b" );
    rx_en_ctle_rcal_b.configure( .blk_parent( this ) );
    rx_en_ctle_rcal_b.build();
    rxpi_cfg1 = gtye_channel_rxpi_cfg1_reg::type_id::create( "rxpi_cfg1" );
    rxpi_cfg1.configure( .blk_parent( this ) );
    rxpi_cfg1.build();
    lpbk_en_rcal_b = gtye_channel_lpbk_en_rcal_b_reg::type_id::create( "lpbk_en_rcal_b" );
    lpbk_en_rcal_b.configure( .blk_parent( this ) );
    lpbk_en_rcal_b.build();
    lpbk_ind_ctrl1 = gtye_channel_lpbk_ind_ctrl1_reg::type_id::create( "lpbk_ind_ctrl1" );
    lpbk_ind_ctrl1.configure( .blk_parent( this ) );
    lpbk_ind_ctrl1.build();
    ckcal1_cfg_3 = gtye_channel_ckcal1_cfg_3_reg::type_id::create( "ckcal1_cfg_3" );
    ckcal1_cfg_3.configure( .blk_parent( this ) );
    ckcal1_cfg_3.build();
    ckcal2_cfg_3 = gtye_channel_ckcal2_cfg_3_reg::type_id::create( "ckcal2_cfg_3" );
    ckcal2_cfg_3.configure( .blk_parent( this ) );
    ckcal2_cfg_3.build();
    ckcal2_cfg_4 = gtye_channel_ckcal2_cfg_4_reg::type_id::create( "ckcal2_cfg_4" );
    ckcal2_cfg_4.configure( .blk_parent( this ) );
    ckcal2_cfg_4.build();
    rx_pma_rsv0 = gtye_channel_rx_pma_rsv0_reg::type_id::create( "rx_pma_rsv0" );
    rx_pma_rsv0.configure( .blk_parent( this ) );
    rx_pma_rsv0.build();
    ckcal2_cfg_2 = gtye_channel_ckcal2_cfg_2_reg::type_id::create( "ckcal2_cfg_2" );
    ckcal2_cfg_2.configure( .blk_parent( this ) );
    ckcal2_cfg_2.build();
    rxcdr_lock_cfg2 = gtye_channel_rxcdr_lock_cfg2_reg::type_id::create( "rxcdr_lock_cfg2" );
    rxcdr_lock_cfg2.configure( .blk_parent( this ) );
    rxcdr_lock_cfg2.build();
    ckcal1_cfg_2 = gtye_channel_ckcal1_cfg_2_reg::type_id::create( "ckcal1_cfg_2" );
    ckcal1_cfg_2.configure( .blk_parent( this ) );
    ckcal1_cfg_2.build();
    rtx_buf_term_ctrl = gtye_channel_rtx_buf_term_ctrl_reg::type_id::create( "rtx_buf_term_ctrl" );
    rtx_buf_term_ctrl.configure( .blk_parent( this ) );
    rtx_buf_term_ctrl.build();
    txph_cfg2 = gtye_channel_txph_cfg2_reg::type_id::create( "txph_cfg2" );
    txph_cfg2.configure( .blk_parent( this ) );
    txph_cfg2.build();
    rxcdr_lock_cfg4 = gtye_channel_rxcdr_lock_cfg4_reg::type_id::create( "rxcdr_lock_cfg4" );
    rxcdr_lock_cfg4.configure( .blk_parent( this ) );
    rxcdr_lock_cfg4.build();
    ctle3_ocap_ext_ctrl = gtye_channel_ctle3_ocap_ext_ctrl_reg::type_id::create( "ctle3_ocap_ext_ctrl" );
    ctle3_ocap_ext_ctrl.configure( .blk_parent( this ) );
    ctle3_ocap_ext_ctrl.build();
    tx_vreg_vrefsel = gtye_channel_tx_vreg_vrefsel_reg::type_id::create( "tx_vreg_vrefsel" );
    tx_vreg_vrefsel.configure( .blk_parent( this ) );
    tx_vreg_vrefsel.build();
    es_qualifier5 = gtye_channel_es_qualifier5_reg::type_id::create( "es_qualifier5" );
    es_qualifier5.configure( .blk_parent( this ) );
    es_qualifier5.build();
    es_qualifier6 = gtye_channel_es_qualifier6_reg::type_id::create( "es_qualifier6" );
    es_qualifier6.configure( .blk_parent( this ) );
    es_qualifier6.build();
    es_qualifier7 = gtye_channel_es_qualifier7_reg::type_id::create( "es_qualifier7" );
    es_qualifier7.configure( .blk_parent( this ) );
    es_qualifier7.build();
    es_qualifier8 = gtye_channel_es_qualifier8_reg::type_id::create( "es_qualifier8" );
    es_qualifier8.configure( .blk_parent( this ) );
    es_qualifier8.build();
    es_qualifier9 = gtye_channel_es_qualifier9_reg::type_id::create( "es_qualifier9" );
    es_qualifier9.configure( .blk_parent( this ) );
    es_qualifier9.build();
    es_qual_mask5 = gtye_channel_es_qual_mask5_reg::type_id::create( "es_qual_mask5" );
    es_qual_mask5.configure( .blk_parent( this ) );
    es_qual_mask5.build();
    es_qual_mask6 = gtye_channel_es_qual_mask6_reg::type_id::create( "es_qual_mask6" );
    es_qual_mask6.configure( .blk_parent( this ) );
    es_qual_mask6.build();
    es_qual_mask7 = gtye_channel_es_qual_mask7_reg::type_id::create( "es_qual_mask7" );
    es_qual_mask7.configure( .blk_parent( this ) );
    es_qual_mask7.build();
    es_qual_mask8 = gtye_channel_es_qual_mask8_reg::type_id::create( "es_qual_mask8" );
    es_qual_mask8.configure( .blk_parent( this ) );
    es_qual_mask8.build();
    es_qual_mask9 = gtye_channel_es_qual_mask9_reg::type_id::create( "es_qual_mask9" );
    es_qual_mask9.configure( .blk_parent( this ) );
    es_qual_mask9.build();
    es_sdata_mask5 = gtye_channel_es_sdata_mask5_reg::type_id::create( "es_sdata_mask5" );
    es_sdata_mask5.configure( .blk_parent( this ) );
    es_sdata_mask5.build();
    es_sdata_mask6 = gtye_channel_es_sdata_mask6_reg::type_id::create( "es_sdata_mask6" );
    es_sdata_mask6.configure( .blk_parent( this ) );
    es_sdata_mask6.build();
    es_sdata_mask7 = gtye_channel_es_sdata_mask7_reg::type_id::create( "es_sdata_mask7" );
    es_sdata_mask7.configure( .blk_parent( this ) );
    es_sdata_mask7.build();
    es_sdata_mask8 = gtye_channel_es_sdata_mask8_reg::type_id::create( "es_sdata_mask8" );
    es_sdata_mask8.configure( .blk_parent( this ) );
    es_sdata_mask8.build();
    es_sdata_mask9 = gtye_channel_es_sdata_mask9_reg::type_id::create( "es_sdata_mask9" );
    es_sdata_mask9.configure( .blk_parent( this ) );
    es_sdata_mask9.build();
    tx_pma_rsv1 = gtye_channel_tx_pma_rsv1_reg::type_id::create( "tx_pma_rsv1" );
    tx_pma_rsv1.configure( .blk_parent( this ) );
    tx_pma_rsv1.build();
    ckcal1_cfg_0 = gtye_channel_ckcal1_cfg_0_reg::type_id::create( "ckcal1_cfg_0" );
    ckcal1_cfg_0.configure( .blk_parent( this ) );
    ckcal1_cfg_0.build();
    ckcal1_cfg_1 = gtye_channel_ckcal1_cfg_1_reg::type_id::create( "ckcal1_cfg_1" );
    ckcal1_cfg_1.configure( .blk_parent( this ) );
    ckcal1_cfg_1.build();
    ckcal2_cfg_0 = gtye_channel_ckcal2_cfg_0_reg::type_id::create( "ckcal2_cfg_0" );
    ckcal2_cfg_0.configure( .blk_parent( this ) );
    ckcal2_cfg_0.build();
    txswbst_mag = gtye_channel_txswbst_mag_reg::type_id::create( "txswbst_mag" );
    txswbst_mag.configure( .blk_parent( this ) );
    txswbst_mag.build();
    lpbk_ext_rcal = gtye_channel_lpbk_ext_rcal_reg::type_id::create( "lpbk_ext_rcal" );
    lpbk_ext_rcal.configure( .blk_parent( this ) );
    lpbk_ext_rcal.build();
    tx_phical_cfg0 = gtye_channel_tx_phical_cfg0_reg::type_id::create( "tx_phical_cfg0" );
    tx_phical_cfg0.configure( .blk_parent( this ) );
    tx_phical_cfg0.build();
    tx_phical_cfg1 = gtye_channel_tx_phical_cfg1_reg::type_id::create( "tx_phical_cfg1" );
    tx_phical_cfg1.configure( .blk_parent( this ) );
    tx_phical_cfg1.build();
    rxcdr_lock_cfg3 = gtye_channel_rxcdr_lock_cfg3_reg::type_id::create( "rxcdr_lock_cfg3" );
    rxcdr_lock_cfg3.configure( .blk_parent( this ) );
    rxcdr_lock_cfg3.build();
    rxdfe_ut_cfg2 = gtye_channel_rxdfe_ut_cfg2_reg::type_id::create( "rxdfe_ut_cfg2" );
    rxdfe_ut_cfg2.configure( .blk_parent( this ) );
    rxdfe_ut_cfg2.build();
    ckcal2_cfg_1 = gtye_channel_ckcal2_cfg_1_reg::type_id::create( "ckcal2_cfg_1" );
    ckcal2_cfg_1.configure( .blk_parent( this ) );
    ckcal2_cfg_1.build();
    y_all_mode = gtye_channel_y_all_mode_reg::type_id::create( "y_all_mode" );
    y_all_mode.configure( .blk_parent( this ) );
    y_all_mode.build();
    rx_progdiv_rate = gtye_channel_rx_progdiv_rate_reg::type_id::create( "rx_progdiv_rate" );
    rx_progdiv_rate.configure( .blk_parent( this ) );
    rx_progdiv_rate.build();
    rxdfe_hf_cfg1 = gtye_channel_rxdfe_hf_cfg1_reg::type_id::create( "rxdfe_hf_cfg1" );
    rxdfe_hf_cfg1.configure( .blk_parent( this ) );
    rxdfe_hf_cfg1.build();
    tx_progdiv_rate = gtye_channel_tx_progdiv_rate_reg::type_id::create( "tx_progdiv_rate" );
    tx_progdiv_rate.configure( .blk_parent( this ) );
    tx_progdiv_rate.build();
    tx_dcc_loop_rst_cfg = gtye_channel_tx_dcc_loop_rst_cfg_reg::type_id::create( "tx_dcc_loop_rst_cfg" );
    tx_dcc_loop_rst_cfg.configure( .blk_parent( this ) );
    tx_dcc_loop_rst_cfg.build();
    rxdfe_hc_cfg0 = gtye_channel_rxdfe_hc_cfg0_reg::type_id::create( "rxdfe_hc_cfg0" );
    rxdfe_hc_cfg0.configure( .blk_parent( this ) );
    rxdfe_hc_cfg0.build();
    rxckcal1_i_loop_rst_cfg = gtye_channel_rxckcal1_i_loop_rst_cfg_reg::type_id::create( "rxckcal1_i_loop_rst_cfg" );
    rxckcal1_i_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal1_i_loop_rst_cfg.build();
    rxckcal1_q_loop_rst_cfg = gtye_channel_rxckcal1_q_loop_rst_cfg_reg::type_id::create( "rxckcal1_q_loop_rst_cfg" );
    rxckcal1_q_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal1_q_loop_rst_cfg.build();
    rxckcal1_iq_loop_rst_cfg = gtye_channel_rxckcal1_iq_loop_rst_cfg_reg::type_id::create( "rxckcal1_iq_loop_rst_cfg" );
    rxckcal1_iq_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal1_iq_loop_rst_cfg.build();
    rxckcal2_d_loop_rst_cfg = gtye_channel_rxckcal2_d_loop_rst_cfg_reg::type_id::create( "rxckcal2_d_loop_rst_cfg" );
    rxckcal2_d_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal2_d_loop_rst_cfg.build();
    rxckcal2_x_loop_rst_cfg = gtye_channel_rxckcal2_x_loop_rst_cfg_reg::type_id::create( "rxckcal2_x_loop_rst_cfg" );
    rxckcal2_x_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal2_x_loop_rst_cfg.build();
    rxckcal2_s_loop_rst_cfg = gtye_channel_rxckcal2_s_loop_rst_cfg_reg::type_id::create( "rxckcal2_s_loop_rst_cfg" );
    rxckcal2_s_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal2_s_loop_rst_cfg.build();
    rxckcal2_dx_loop_rst_cfg = gtye_channel_rxckcal2_dx_loop_rst_cfg_reg::type_id::create( "rxckcal2_dx_loop_rst_cfg" );
    rxckcal2_dx_loop_rst_cfg.configure( .blk_parent( this ) );
    rxckcal2_dx_loop_rst_cfg.build();
    rxdfe_kh_cfg0 = gtye_channel_rxdfe_kh_cfg0_reg::type_id::create( "rxdfe_kh_cfg0" );
    rxdfe_kh_cfg0.configure( .blk_parent( this ) );
    rxdfe_kh_cfg0.build();
    rxdfe_h4_cfg1 = gtye_channel_rxdfe_h4_cfg1_reg::type_id::create( "rxdfe_h4_cfg1" );
    rxdfe_h4_cfg1.configure( .blk_parent( this ) );
    rxdfe_h4_cfg1.build();
    rxdfe_h4_cfg0 = gtye_channel_rxdfe_h4_cfg0_reg::type_id::create( "rxdfe_h4_cfg0" );
    rxdfe_h4_cfg0.configure( .blk_parent( this ) );
    rxdfe_h4_cfg0.build();
    rxdfe_h3_cfg1 = gtye_channel_rxdfe_h3_cfg1_reg::type_id::create( "rxdfe_h3_cfg1" );
    rxdfe_h3_cfg1.configure( .blk_parent( this ) );
    rxdfe_h3_cfg1.build();
    ch_hspmux = gtye_channel_ch_hspmux_reg::type_id::create( "ch_hspmux" );
    ch_hspmux.configure( .blk_parent( this ) );
    ch_hspmux.build();
    pcie3_clk_cor_min_lat = gtye_channel_pcie3_clk_cor_min_lat_reg::type_id::create( "pcie3_clk_cor_min_lat" );
    pcie3_clk_cor_min_lat.configure( .blk_parent( this ) );
    pcie3_clk_cor_min_lat.build();
    usb_mode = gtye_channel_usb_mode_reg::type_id::create( "usb_mode" );
    usb_mode.configure( .blk_parent( this ) );
    usb_mode.build();
    usb_raw_elec = gtye_channel_usb_raw_elec_reg::type_id::create( "usb_raw_elec" );
    usb_raw_elec.configure( .blk_parent( this ) );
    usb_raw_elec.build();
    rxrefclkdiv2_sel = gtye_channel_rxrefclkdiv2_sel_reg::type_id::create( "rxrefclkdiv2_sel" );
    rxrefclkdiv2_sel.configure( .blk_parent( this ) );
    rxrefclkdiv2_sel.build();
    rxcdr_cfg2_gen4 = gtye_channel_rxcdr_cfg2_gen4_reg::type_id::create( "rxcdr_cfg2_gen4" );
    rxcdr_cfg2_gen4.configure( .blk_parent( this ) );
    rxcdr_cfg2_gen4.build();
    rxcdr_cfg3_gen4 = gtye_channel_rxcdr_cfg3_gen4_reg::type_id::create( "rxcdr_cfg3_gen4" );
    rxcdr_cfg3_gen4.configure( .blk_parent( this ) );
    rxcdr_cfg3_gen4.build();
    usb_burstmin_u3wake = gtye_channel_usb_burstmin_u3wake_reg::type_id::create( "usb_burstmin_u3wake" );
    usb_burstmin_u3wake.configure( .blk_parent( this ) );
    usb_burstmin_u3wake.build();
    usb_idlemin_polling = gtye_channel_usb_idlemin_polling_reg::type_id::create( "usb_idlemin_polling" );
    usb_idlemin_polling.configure( .blk_parent( this ) );
    usb_idlemin_polling.build();
    usb_idlemax_polling = gtye_channel_usb_idlemax_polling_reg::type_id::create( "usb_idlemax_polling" );
    usb_idlemax_polling.configure( .blk_parent( this ) );
    usb_idlemax_polling.build();
    usb_lfpspolling_burst = gtye_channel_usb_lfpspolling_burst_reg::type_id::create( "usb_lfpspolling_burst" );
    usb_lfpspolling_burst.configure( .blk_parent( this ) );
    usb_lfpspolling_burst.build();
    usb_lfpsping_burst = gtye_channel_usb_lfpsping_burst_reg::type_id::create( "usb_lfpsping_burst" );
    usb_lfpsping_burst.configure( .blk_parent( this ) );
    usb_lfpsping_burst.build();
    usb_lfpsu1exit_burst = gtye_channel_usb_lfpsu1exit_burst_reg::type_id::create( "usb_lfpsu1exit_burst" );
    usb_lfpsu1exit_burst.configure( .blk_parent( this ) );
    usb_lfpsu1exit_burst.build();
    usb_lfpsu2lpexit_burst_ms = gtye_channel_usb_lfpsu2lpexit_burst_ms_reg::type_id::create( "usb_lfpsu2lpexit_burst_ms" );
    usb_lfpsu2lpexit_burst_ms.configure( .blk_parent( this ) );
    usb_lfpsu2lpexit_burst_ms.build();
    usb_lfpsu3wake_burst_ms = gtye_channel_usb_lfpsu3wake_burst_ms_reg::type_id::create( "usb_lfpsu3wake_burst_ms" );
    usb_lfpsu3wake_burst_ms.configure( .blk_parent( this ) );
    usb_lfpsu3wake_burst_ms.build();
    usb_lfpspolling_idle_ms = gtye_channel_usb_lfpspolling_idle_ms_reg::type_id::create( "usb_lfpspolling_idle_ms" );
    usb_lfpspolling_idle_ms.configure( .blk_parent( this ) );
    usb_lfpspolling_idle_ms.build();
    rxdfe_ha_cfg1 = gtye_channel_rxdfe_ha_cfg1_reg::type_id::create( "rxdfe_ha_cfg1" );
    rxdfe_ha_cfg1.configure( .blk_parent( this ) );
    rxdfe_ha_cfg1.build();
    rxdfe_hb_cfg0 = gtye_channel_rxdfe_hb_cfg0_reg::type_id::create( "rxdfe_hb_cfg0" );
    rxdfe_hb_cfg0.configure( .blk_parent( this ) );
    rxdfe_hb_cfg0.build();
    rxcdr_cfg3_gen2 = gtye_channel_rxcdr_cfg3_gen2_reg::type_id::create( "rxcdr_cfg3_gen2" );
    rxcdr_cfg3_gen2.configure( .blk_parent( this ) );
    rxcdr_cfg3_gen2.build();
    comma_align_latency = gtye_channel_comma_align_latency_reg::type_id::create( "comma_align_latency" );
    comma_align_latency.configure( .blk_parent( this ) );
    comma_align_latency.build();
    es_error_count = gtye_channel_es_error_count_reg::type_id::create( "es_error_count" );
    es_error_count.configure( .blk_parent( this ) );
    es_error_count.build();
    es_sample_count = gtye_channel_es_sample_count_reg::type_id::create( "es_sample_count" );
    es_sample_count.configure( .blk_parent( this ) );
    es_sample_count.build();
    es_control_status = gtye_channel_es_control_status_reg::type_id::create( "es_control_status" );
    es_control_status.configure( .blk_parent( this ) );
    es_control_status.build();
    es_rdata_byte4 = gtye_channel_es_rdata_byte4_reg::type_id::create( "es_rdata_byte4" );
    es_rdata_byte4.configure( .blk_parent( this ) );
    es_rdata_byte4.build();
    es_rdata_byte3 = gtye_channel_es_rdata_byte3_reg::type_id::create( "es_rdata_byte3" );
    es_rdata_byte3.configure( .blk_parent( this ) );
    es_rdata_byte3.build();
    es_rdata_byte2 = gtye_channel_es_rdata_byte2_reg::type_id::create( "es_rdata_byte2" );
    es_rdata_byte2.configure( .blk_parent( this ) );
    es_rdata_byte2.build();
    es_rdata_byte1 = gtye_channel_es_rdata_byte1_reg::type_id::create( "es_rdata_byte1" );
    es_rdata_byte1.configure( .blk_parent( this ) );
    es_rdata_byte1.build();
    es_rdata_byte0 = gtye_channel_es_rdata_byte0_reg::type_id::create( "es_rdata_byte0" );
    es_rdata_byte0.configure( .blk_parent( this ) );
    es_rdata_byte0.build();
    es_sdata_byte4 = gtye_channel_es_sdata_byte4_reg::type_id::create( "es_sdata_byte4" );
    es_sdata_byte4.configure( .blk_parent( this ) );
    es_sdata_byte4.build();
    es_sdata_byte3 = gtye_channel_es_sdata_byte3_reg::type_id::create( "es_sdata_byte3" );
    es_sdata_byte3.configure( .blk_parent( this ) );
    es_sdata_byte3.build();
    es_sdata_byte2 = gtye_channel_es_sdata_byte2_reg::type_id::create( "es_sdata_byte2" );
    es_sdata_byte2.configure( .blk_parent( this ) );
    es_sdata_byte2.build();
    es_sdata_byte1 = gtye_channel_es_sdata_byte1_reg::type_id::create( "es_sdata_byte1" );
    es_sdata_byte1.configure( .blk_parent( this ) );
    es_sdata_byte1.build();
    es_sdata_byte0 = gtye_channel_es_sdata_byte0_reg::type_id::create( "es_sdata_byte0" );
    es_sdata_byte0.configure( .blk_parent( this ) );
    es_sdata_byte0.build();
    rx_prbs_err_15_0_cnt = gtye_channel_rx_prbs_err_15_0_cnt_reg::type_id::create( "rx_prbs_err_15_0_cnt" );
    rx_prbs_err_15_0_cnt.configure( .blk_parent( this ) );
    rx_prbs_err_15_0_cnt.build();
    rx_prbs_err_31_16_cnt = gtye_channel_rx_prbs_err_31_16_cnt_reg::type_id::create( "rx_prbs_err_31_16_cnt" );
    rx_prbs_err_31_16_cnt.configure( .blk_parent( this ) );
    rx_prbs_err_31_16_cnt.build();
    txgbox_fifo_latency = gtye_channel_txgbox_fifo_latency_reg::type_id::create( "txgbox_fifo_latency" );
    txgbox_fifo_latency.configure( .blk_parent( this ) );
    txgbox_fifo_latency.build();
    rxgbox_fifo_latency = gtye_channel_rxgbox_fifo_latency_reg::type_id::create( "rxgbox_fifo_latency" );
    rxgbox_fifo_latency.configure( .blk_parent( this ) );
    rxgbox_fifo_latency.build();
    es_sdata_byte5 = gtye_channel_es_sdata_byte5_reg::type_id::create( "es_sdata_byte5" );
    es_sdata_byte5.configure( .blk_parent( this ) );
    es_sdata_byte5.build();
    es_sdata_byte6 = gtye_channel_es_sdata_byte6_reg::type_id::create( "es_sdata_byte6" );
    es_sdata_byte6.configure( .blk_parent( this ) );
    es_sdata_byte6.build();
    es_sdata_byte7 = gtye_channel_es_sdata_byte7_reg::type_id::create( "es_sdata_byte7" );
    es_sdata_byte7.configure( .blk_parent( this ) );
    es_sdata_byte7.build();
    es_sdata_byte8 = gtye_channel_es_sdata_byte8_reg::type_id::create( "es_sdata_byte8" );
    es_sdata_byte8.configure( .blk_parent( this ) );
    es_sdata_byte8.build();
    es_sdata_byte9 = gtye_channel_es_sdata_byte9_reg::type_id::create( "es_sdata_byte9" );
    es_sdata_byte9.configure( .blk_parent( this ) );
    es_sdata_byte9.build();
    es_rdata_byte5 = gtye_channel_es_rdata_byte5_reg::type_id::create( "es_rdata_byte5" );
    es_rdata_byte5.configure( .blk_parent( this ) );
    es_rdata_byte5.build();
    es_rdata_byte6 = gtye_channel_es_rdata_byte6_reg::type_id::create( "es_rdata_byte6" );
    es_rdata_byte6.configure( .blk_parent( this ) );
    es_rdata_byte6.build();
    es_rdata_byte7 = gtye_channel_es_rdata_byte7_reg::type_id::create( "es_rdata_byte7" );
    es_rdata_byte7.configure( .blk_parent( this ) );
    es_rdata_byte7.build();
    es_rdata_byte8 = gtye_channel_es_rdata_byte8_reg::type_id::create( "es_rdata_byte8" );
    es_rdata_byte8.configure( .blk_parent( this ) );
    es_rdata_byte8.build();
    es_rdata_byte9 = gtye_channel_es_rdata_byte9_reg::type_id::create( "es_rdata_byte9" );
    es_rdata_byte9.configure( .blk_parent( this ) );
    es_rdata_byte9.build();
    reg_map = create_map( .name( "reg_map" ), .base_addr( 0 ), .n_bytes( 8 ),
                          .endian( UVM_LITTLE_ENDIAN ), .byte_addressing( 1 ) );
    reg_map.add_reg( .rg( cdr_swap_mode_en ), .offset( 2 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxbufreset_time ), .offset( 3 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdrphreset_time ), .offset( 4 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpmareset_time ), .offset( 5 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hb_cfg1 ), .offset( 6 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpmareset_time ), .offset( 9 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_fifo_byp_en ), .offset( 10 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_fabint_usrclk_flop ), .offset( 11 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_progclk_sel ), .offset( 12 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txamonsel ), .offset( 13 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg0 ), .offset( 14 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg1 ), .offset( 15 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg2 ), .offset( 16 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg3 ), .offset( 17 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg4 ), .offset( 18 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_lock_cfg ), .offset( 19 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_max_skew ), .offset( 20 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pci3_rx_elecidle_hi_count ), .offset( 21 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pci3_rx_elecidle_h2l_count ), .offset( 22 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_buffer_cfg ), .offset( 23 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_1_enable ), .offset( 24 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_2_2 ), .offset( 25 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_2_3 ), .offset( 26 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_2_4 ), .offset( 27 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_2_enable ), .offset( 28 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_max_lat ), .offset( 29 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_1_1 ), .offset( 30 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_1_2 ), .offset( 31 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_1_3 ), .offset( 32 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_1_4 ), .offset( 33 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_1_enable ), .offset( 34 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_2_2 ), .offset( 35 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_2_enable ), .offset( 36 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( clk_cor_seq_2_4 ), .offset( 37 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_he_cfg0 ), .offset( 38 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( align_comma_word ), .offset( 39 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_fbdiv ), .offset( 40 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_lock_cfg0 ), .offset( 41 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_refclk_div ), .offset( 42 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_init_cfg0 ), .offset( 43 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( dec_pcomma_detect ), .offset( 44 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_lock_cfg1 ), .offset( 45 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcfok_cfg1 ), .offset( 46 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h2_cfg0 ), .offset( 47 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h2_cfg1 ), .offset( 48 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcfok_cfg2 ), .offset( 49 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_cfg ), .offset( 50 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_kh_cfg0 ), .offset( 51 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_kh_cfg1 ), .offset( 52 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfelpm_kl_cfg0 ), .offset( 53 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfelpm_kl_cfg1 ), .offset( 54 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_os_cfg0 ), .offset( 55 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_os_cfg1 ), .offset( 56 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpm_gc_cfg ), .offset( 57 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( dmonitor_cfg1 ), .offset( 58 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_control ), .offset( 60 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_gc_cfg2 ), .offset( 61 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txdly_lcfg ), .offset( 62 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier0 ), .offset( 63 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier1 ), .offset( 64 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier2 ), .offset( 65 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier3 ), .offset( 66 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier4 ), .offset( 67 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask0 ), .offset( 68 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask1 ), .offset( 69 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask2 ), .offset( 70 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask3 ), .offset( 71 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask4 ), .offset( 72 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask0 ), .offset( 73 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask1 ), .offset( 74 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask2 ), .offset( 75 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask3 ), .offset( 76 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask4 ), .offset( 77 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( fts_lane_deskew_en ), .offset( 78 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_horz_offset ), .offset( 79 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hc_cfg1 ), .offset( 80 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_pma_cfg ), .offset( 81 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_dfe_agc_cfg1 ), .offset( 82 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txfe_cfg2 ), .offset( 83 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txfe_cfg3 ), .offset( 84 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_64b_dyn_clksw_dis ), .offset( 85 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( align_pcomma_det ), .offset( 86 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_progdiv_cfg ), .offset( 87 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_os_cfg0 ), .offset( 88 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxphdly_cfg ), .offset( 89 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_os_cfg1 ), .offset( 90 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdly_cfg ), .offset( 91 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdly_lcfg ), .offset( 92 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hf_cfg0 ), .offset( 93 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hd_cfg0 ), .offset( 94 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_bias_cfg0 ), .offset( 95 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcs_rsvd0 ), .offset( 96 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxph_monitor_sel ), .offset( 97 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_i2v_filter_en ), .offset( 98 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cbcc_data_source_sel ), .offset( 99 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_sig_valid_dly ), .offset( 100 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxbuf_thresh_ovflw ), .offset( 101 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxbuf_thresh_ovrd ), .offset( 102 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxbuf_eidle_hi_cnt ), .offset( 103 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( sata_burst_val ), .offset( 104 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_poll_sata_min_burst ), .offset( 105 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_ping_sata_min_init ), .offset( 106 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_poll_sata_max_burst ), .offset( 107 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_ping_sata_max_init ), .offset( 108 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_clk25_div ), .offset( 109 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_ut_cfg1 ), .offset( 110 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txphdly_cfg1 ), .offset( 111 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_vp_cfg0 ), .offset( 112 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txph_monitor_sel ), .offset( 113 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( adapt_cfg2 ), .offset( 114 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_vp_cfg1 ), .offset( 115 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( term_rcal_cfg ), .offset( 116 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpi_cfg0 ), .offset( 117 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pd_trans_time_from_p2 ), .offset( 118 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pd_trans_time_none_p2 ), .offset( 119 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( trans_time_rate ), .offset( 120 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tst_rsv0 ), .offset( 121 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_clk25_div ), .offset( 122 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_deemph0 ), .offset( 123 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_maincursor_sel ), .offset( 124 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_rxdetect_cfg ), .offset( 125 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_clkmux_en ), .offset( 126 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_margin_full_0 ), .offset( 127 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_margin_full_2 ), .offset( 128 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_margin_full_4 ), .offset( 129 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_margin_low_1 ), .offset( 130 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_margin_low_3 ), .offset( 131 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h3_cfg0 ), .offset( 132 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_int_datawidth ), .offset( 133 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxprbs_linkacq_cnt ), .offset( 137 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_pmadata_opt ), .offset( 138 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txsync_multilane ), .offset( 139 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( acjtag_mode ), .offset( 140 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfelpm_kl_cfg2 ), .offset( 141 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txdly_cfg ), .offset( 142 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txph_cfg ), .offset( 143 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txphdly_cfg0 ), .offset( 144 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( adapt_cfg0 ), .offset( 145 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( adapt_cfg1 ), .offset( 146 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcfok_cfg0 ), .offset( 147 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_clk_phase_sel ), .offset( 148 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_pma_rsv0 ), .offset( 149 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_afe_cm_en ), .offset( 151 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h5_cfg1 ), .offset( 152 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( gearbox_mode ), .offset( 153 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpi_ppm_cfg ), .offset( 154 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_dfelpm_klkh_agc_stup_en ), .offset( 155 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txfe_cfg0 ), .offset( 157 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_ut_cfg0 ), .offset( 158 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_cfg0 ), .offset( 159 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_cfg1 ), .offset( 160 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txfe_cfg1 ), .offset( 161 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg0_gen3 ), .offset( 162 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg1_gen3 ), .offset( 163 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg2_gen3 ), .offset( 164 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg3_gen3 ), .offset( 165 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg4_gen3 ), .offset( 166 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpi_cfg0 ), .offset( 167 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpi_cfg1 ), .offset( 168 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_rxpma_cfg ), .offset( 169 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_txpcs_cfg_gen3 ), .offset( 170 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_txpma_cfg ), .offset( 171 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_clk_slip_ovrd ), .offset( 172 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_pll_sel_mode_gen4 ), .offset( 173 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hd_cfg1 ), .offset( 174 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg5_gen3 ), .offset( 175 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_kh_cfg3 ), .offset( 176 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_kh_cfg2 ), .offset( 177 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_kh_cfg1 ), .offset( 178 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h5_cfg0 ), .offset( 179 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg5 ), .offset( 180 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_he_cfg1 ), .offset( 181 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_cfg3 ), .offset( 182 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h6_cfg0 ), .offset( 183 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h6_cfg1 ), .offset( 184 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h7_cfg0 ), .offset( 185 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ddi_realign_wait ), .offset( 186 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txgbox_fifo_init_rd_addr ), .offset( 187 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( cpll_cfg2 ), .offset( 188 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxphsamp_cfg ), .offset( 189 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxphslip_cfg ), .offset( 190 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxphbeacon_cfg ), .offset( 191 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h7_cfg1 ), .offset( 192 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h8_cfg0 ), .offset( 193 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h8_cfg1 ), .offset( 194 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_bufg_div_ctrl ), .offset( 195 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie_rxpcs_cfg_gen3 ), .offset( 196 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h9_cfg0 ), .offset( 197 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_progdiv_cfg ), .offset( 198 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h9_cfg1 ), .offset( 199 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_ha_cfg0 ), .offset( 200 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( chan_bond_seq_1_2 ), .offset( 202 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_gc_cfg0 ), .offset( 203 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_gc_cfg1 ), .offset( 204 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_ddi_sel ), .offset( 205 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_cfg0 ), .offset( 206 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_cfg1 ), .offset( 207 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_resload_ovrd ), .offset( 208 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_en_ctle_rcal_b ), .offset( 209 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpi_cfg1 ), .offset( 210 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( lpbk_en_rcal_b ), .offset( 211 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( lpbk_ind_ctrl1 ), .offset( 212 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal1_cfg_3 ), .offset( 213 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal2_cfg_3 ), .offset( 214 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal2_cfg_4 ), .offset( 215 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_pma_rsv0 ), .offset( 216 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal2_cfg_2 ), .offset( 217 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_lock_cfg2 ), .offset( 218 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal1_cfg_2 ), .offset( 219 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rtx_buf_term_ctrl ), .offset( 221 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txph_cfg2 ), .offset( 222 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_lock_cfg4 ), .offset( 223 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ctle3_ocap_ext_ctrl ), .offset( 224 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_vreg_vrefsel ), .offset( 226 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier5 ), .offset( 231 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier6 ), .offset( 232 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier7 ), .offset( 233 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier8 ), .offset( 234 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qualifier9 ), .offset( 235 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask5 ), .offset( 236 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask6 ), .offset( 237 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask7 ), .offset( 238 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask8 ), .offset( 239 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_qual_mask9 ), .offset( 240 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask5 ), .offset( 241 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask6 ), .offset( 242 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask7 ), .offset( 243 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask8 ), .offset( 244 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( es_sdata_mask9 ), .offset( 245 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_pma_rsv1 ), .offset( 246 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal1_cfg_0 ), .offset( 247 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal1_cfg_1 ), .offset( 248 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal2_cfg_0 ), .offset( 249 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txswbst_mag ), .offset( 250 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( lpbk_ext_rcal ), .offset( 251 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_phical_cfg0 ), .offset( 252 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_phical_cfg1 ), .offset( 253 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_lock_cfg3 ), .offset( 254 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_ut_cfg2 ), .offset( 256 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ckcal2_cfg_1 ), .offset( 257 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( y_all_mode ), .offset( 258 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rx_progdiv_rate ), .offset( 259 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hf_cfg1 ), .offset( 260 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_progdiv_rate ), .offset( 261 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( tx_dcc_loop_rst_cfg ), .offset( 262 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hc_cfg0 ), .offset( 263 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal1_i_loop_rst_cfg ), .offset( 264 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal1_q_loop_rst_cfg ), .offset( 265 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal1_iq_loop_rst_cfg ), .offset( 266 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal2_d_loop_rst_cfg ), .offset( 267 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal2_x_loop_rst_cfg ), .offset( 268 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal2_s_loop_rst_cfg ), .offset( 269 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxckcal2_dx_loop_rst_cfg ), .offset( 270 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_kh_cfg0 ), .offset( 272 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h4_cfg1 ), .offset( 273 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h4_cfg0 ), .offset( 274 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_h3_cfg1 ), .offset( 275 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( ch_hspmux ), .offset( 278 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcie3_clk_cor_min_lat ), .offset( 279 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_mode ), .offset( 280 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_raw_elec ), .offset( 281 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxrefclkdiv2_sel ), .offset( 282 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg2_gen4 ), .offset( 283 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg3_gen4 ), .offset( 284 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_burstmin_u3wake ), .offset( 285 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_idlemin_polling ), .offset( 286 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_idlemax_polling ), .offset( 287 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpspolling_burst ), .offset( 288 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpsping_burst ), .offset( 289 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpsu1exit_burst ), .offset( 290 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpsu2lpexit_burst_ms ), .offset( 291 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpsu3wake_burst_ms ), .offset( 292 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( usb_lfpspolling_idle_ms ), .offset( 293 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_ha_cfg1 ), .offset( 294 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfe_hb_cfg0 ), .offset( 295 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdr_cfg3_gen2 ), .offset( 309 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( comma_align_latency ), .offset( 592 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_error_count ), .offset( 593 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sample_count ), .offset( 594 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_control_status ), .offset( 595 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte4 ), .offset( 596 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte3 ), .offset( 597 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte2 ), .offset( 598 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte1 ), .offset( 599 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte0 ), .offset( 600 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte4 ), .offset( 601 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte3 ), .offset( 602 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte2 ), .offset( 603 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte1 ), .offset( 604 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte0 ), .offset( 605 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rx_prbs_err_15_0_cnt ), .offset( 606 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rx_prbs_err_31_16_cnt ), .offset( 607 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txgbox_fifo_latency ), .offset( 611 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxgbox_fifo_latency ), .offset( 617 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte5 ), .offset( 643 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte6 ), .offset( 644 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte7 ), .offset( 645 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte8 ), .offset( 646 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_sdata_byte9 ), .offset( 647 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte5 ), .offset( 648 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte6 ), .offset( 649 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte7 ), .offset( 650 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte8 ), .offset( 651 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( es_rdata_byte9 ), .offset( 652 ), .rights( "RO" ) );
  endfunction : build

endclass: gtye_channel_reg_block