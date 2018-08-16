
class vio_reset_all_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_all_reg )
  rand uvm_reg_field reset_all;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_all_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_all = uvm_reg_field::type_id::create( "reset_all" );
    reset_all.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_all_reg

class vio_reset_tx_pll_and_datapath_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_tx_pll_and_datapath_reg )
  rand uvm_reg_field reset_tx_pll_and_datapath;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_tx_pll_and_datapath_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_tx_pll_and_datapath = uvm_reg_field::type_id::create( "reset_tx_pll_and_datapath" );
    reset_tx_pll_and_datapath.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_tx_pll_and_datapath_reg

class vio_reset_tx_datapath_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_tx_datapath_reg )
  rand uvm_reg_field reset_tx_datapath;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_tx_datapath_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_tx_datapath = uvm_reg_field::type_id::create( "reset_tx_datapath" );
    reset_tx_datapath.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_tx_datapath_reg

class vio_reset_rx_pll_and_datapath_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_rx_pll_and_datapath_reg )
  rand uvm_reg_field reset_rx_pll_and_datapath;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_rx_pll_and_datapath_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_rx_pll_and_datapath = uvm_reg_field::type_id::create( "reset_rx_pll_and_datapath" );
    reset_rx_pll_and_datapath.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_rx_pll_and_datapath_reg

class vio_reset_rx_datapath_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_rx_datapath_reg )
  rand uvm_reg_field reset_rx_datapath;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_rx_datapath_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_rx_datapath = uvm_reg_field::type_id::create( "reset_rx_datapath" );
    reset_rx_datapath.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_rx_datapath_reg

class vio_link_down_latched_reset_reg extends uvm_reg;
  `uvm_object_utils( vio_link_down_latched_reset_reg )
  rand uvm_reg_field link_down_latched_reset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_link_down_latched_reset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    link_down_latched_reset = uvm_reg_field::type_id::create( "link_down_latched_reset" );
    link_down_latched_reset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_link_down_latched_reset_reg

class vio_txpmareset_reg extends uvm_reg;
  `uvm_object_utils( vio_txpmareset_reg )
  rand uvm_reg_field txpmareset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txpmareset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpmareset = uvm_reg_field::type_id::create( "txpmareset" );
    txpmareset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txpmareset_reg

class vio_rxpmareset_reg extends uvm_reg;
  `uvm_object_utils( vio_rxpmareset_reg )
  rand uvm_reg_field rxpmareset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxpmareset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpmareset = uvm_reg_field::type_id::create( "rxpmareset" );
    rxpmareset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxpmareset_reg

class vio_txpcsreset_reg extends uvm_reg;
  `uvm_object_utils( vio_txpcsreset_reg )
  rand uvm_reg_field txpcsreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txpcsreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpcsreset = uvm_reg_field::type_id::create( "txpcsreset" );
    txpcsreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txpcsreset_reg

class vio_rxpcsreset_reg extends uvm_reg;
  `uvm_object_utils( vio_rxpcsreset_reg )
  rand uvm_reg_field rxpcsreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxpcsreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpcsreset = uvm_reg_field::type_id::create( "rxpcsreset" );
    rxpcsreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxpcsreset_reg

class vio_rxdfelpmreset_reg extends uvm_reg;
  `uvm_object_utils( vio_rxdfelpmreset_reg )
  rand uvm_reg_field rxdfelpmreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxdfelpmreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdfelpmreset = uvm_reg_field::type_id::create( "rxdfelpmreset" );
    rxdfelpmreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxdfelpmreset_reg

class vio_txprecursor_reg extends uvm_reg;
  `uvm_object_utils( vio_txprecursor_reg )
  rand uvm_reg_field txprecursor;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txprecursor_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txprecursor = uvm_reg_field::type_id::create( "txprecursor" );
    txprecursor.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txprecursor_reg

class vio_txpostcursor_reg extends uvm_reg;
  `uvm_object_utils( vio_txpostcursor_reg )
  rand uvm_reg_field txpostcursor;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txpostcursor_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpostcursor = uvm_reg_field::type_id::create( "txpostcursor" );
    txpostcursor.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txpostcursor_reg

class vio_loopback_reg extends uvm_reg;
  `uvm_object_utils( vio_loopback_reg )
  rand uvm_reg_field loopback;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_loopback_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    loopback = uvm_reg_field::type_id::create( "loopback" );
    loopback.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_loopback_reg

class vio_txprbssel_reg extends uvm_reg;
  `uvm_object_utils( vio_txprbssel_reg )
  rand uvm_reg_field txprbssel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txprbssel_reg" );
    super.new( .name( name ), .n_bits( 4 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txprbssel = uvm_reg_field::type_id::create( "txprbssel" );
    txprbssel.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txprbssel_reg

class vio_rxprbssel_reg extends uvm_reg;
  `uvm_object_utils( vio_rxprbssel_reg )
  rand uvm_reg_field rxprbssel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxprbssel_reg" );
    super.new( .name( name ), .n_bits( 4 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxprbssel = uvm_reg_field::type_id::create( "rxprbssel" );
    rxprbssel.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxprbssel_reg

class vio_txprbsforceerr_reg extends uvm_reg;
  `uvm_object_utils( vio_txprbsforceerr_reg )
  rand uvm_reg_field txprbsforceerr;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txprbsforceerr_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txprbsforceerr = uvm_reg_field::type_id::create( "txprbsforceerr" );
    txprbsforceerr.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txprbsforceerr_reg

class vio_rxprbscntreset_reg extends uvm_reg;
  `uvm_object_utils( vio_rxprbscntreset_reg )
  rand uvm_reg_field rxprbscntreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxprbscntreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxprbscntreset = uvm_reg_field::type_id::create( "rxprbscntreset" );
    rxprbscntreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxprbscntreset_reg

class vio_link_status_out_reg extends uvm_reg;
  `uvm_object_utils( vio_link_status_out_reg )
  rand uvm_reg_field link_status_out;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_link_status_out_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    link_status_out = uvm_reg_field::type_id::create( "link_status_out" );
    link_status_out.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_link_status_out_reg

class vio_link_down_reg extends uvm_reg;
  `uvm_object_utils( vio_link_down_reg )
  rand uvm_reg_field link_down;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_link_down_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    link_down = uvm_reg_field::type_id::create( "link_down" );
    link_down.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_link_down_reg

class vio_init_done_reg extends uvm_reg;
  `uvm_object_utils( vio_init_done_reg )
  rand uvm_reg_field init_done;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_init_done_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    init_done = uvm_reg_field::type_id::create( "init_done" );
    init_done.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_init_done_reg

class vio_init_retry_ctr_reg extends uvm_reg;
  `uvm_object_utils( vio_init_retry_ctr_reg )
  rand uvm_reg_field init_retry_ctr;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_init_retry_ctr_reg" );
    super.new( .name( name ), .n_bits( 4 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    init_retry_ctr = uvm_reg_field::type_id::create( "init_retry_ctr" );
    init_retry_ctr.configure( .parent( this ), .size( 4 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_init_retry_ctr_reg

class vio_gtpowergood_reg extends uvm_reg;
  `uvm_object_utils( vio_gtpowergood_reg )
  rand uvm_reg_field gtpowergood;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_gtpowergood_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    gtpowergood = uvm_reg_field::type_id::create( "gtpowergood" );
    gtpowergood.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_gtpowergood_reg

class vio_qpll0lock_reg extends uvm_reg;
  `uvm_object_utils( vio_qpll0lock_reg )
  rand uvm_reg_field qpll0lock;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_qpll0lock_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll0lock = uvm_reg_field::type_id::create( "qpll0lock" );
    qpll0lock.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_qpll0lock_reg

class vio_qpll1lock_reg extends uvm_reg;
  `uvm_object_utils( vio_qpll1lock_reg )
  rand uvm_reg_field qpll1lock;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_qpll1lock_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    qpll1lock = uvm_reg_field::type_id::create( "qpll1lock" );
    qpll1lock.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_qpll1lock_reg

class vio_cplllock_reg extends uvm_reg;
  `uvm_object_utils( vio_cplllock_reg )
  rand uvm_reg_field cplllock;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_cplllock_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    cplllock = uvm_reg_field::type_id::create( "cplllock" );
    cplllock.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_cplllock_reg

class vio_txpmaresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_txpmaresetdone_reg )
  rand uvm_reg_field txpmaresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txpmaresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpmaresetdone = uvm_reg_field::type_id::create( "txpmaresetdone" );
    txpmaresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txpmaresetdone_reg

class vio_rxpmaresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_rxpmaresetdone_reg )
  rand uvm_reg_field rxpmaresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxpmaresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpmaresetdone = uvm_reg_field::type_id::create( "rxpmaresetdone" );
    rxpmaresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxpmaresetdone_reg

class vio_reset_tx_done_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_tx_done_reg )
  rand uvm_reg_field reset_tx_done;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_tx_done_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_tx_done = uvm_reg_field::type_id::create( "reset_tx_done" );
    reset_tx_done.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_tx_done_reg

class vio_reset_rx_done_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_rx_done_reg )
  rand uvm_reg_field reset_rx_done;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_rx_done_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_rx_done = uvm_reg_field::type_id::create( "reset_rx_done" );
    reset_rx_done.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_rx_done_reg

class vio_rxbufstatus_reg extends uvm_reg;
  `uvm_object_utils( vio_rxbufstatus_reg )
  rand uvm_reg_field rxbufstatus;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxbufstatus_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbufstatus = uvm_reg_field::type_id::create( "rxbufstatus" );
    rxbufstatus.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxbufstatus_reg

class vio_rxprbserr_reg extends uvm_reg;
  `uvm_object_utils( vio_rxprbserr_reg )
  rand uvm_reg_field rxprbserr;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxprbserr_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxprbserr = uvm_reg_field::type_id::create( "rxprbserr" );
    rxprbserr.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxprbserr_reg

class vio_rxprbslocked_reg extends uvm_reg;
  `uvm_object_utils( vio_rxprbslocked_reg )
  rand uvm_reg_field rxprbslocked;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxprbslocked_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxprbslocked = uvm_reg_field::type_id::create( "rxprbslocked" );
    rxprbslocked.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxprbslocked_reg

class vio_eyescanreset_reg extends uvm_reg;
  `uvm_object_utils( vio_eyescanreset_reg )
  rand uvm_reg_field eyescanreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_eyescanreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    eyescanreset = uvm_reg_field::type_id::create( "eyescanreset" );
    eyescanreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_eyescanreset_reg

class vio_eyescantrigger_reg extends uvm_reg;
  `uvm_object_utils( vio_eyescantrigger_reg )
  rand uvm_reg_field eyescantrigger;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_eyescantrigger_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    eyescantrigger = uvm_reg_field::type_id::create( "eyescantrigger" );
    eyescantrigger.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_eyescantrigger_reg

class vio_pcsrsvdin_reg extends uvm_reg;
  `uvm_object_utils( vio_pcsrsvdin_reg )
  rand uvm_reg_field pcsrsvdin;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_pcsrsvdin_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    pcsrsvdin = uvm_reg_field::type_id::create( "pcsrsvdin" );
    pcsrsvdin.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_pcsrsvdin_reg

class vio_rxbufreset_reg extends uvm_reg;
  `uvm_object_utils( vio_rxbufreset_reg )
  rand uvm_reg_field rxbufreset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxbufreset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxbufreset = uvm_reg_field::type_id::create( "rxbufreset" );
    rxbufreset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxbufreset_reg

class vio_rxcdrhold_reg extends uvm_reg;
  `uvm_object_utils( vio_rxcdrhold_reg )
  rand uvm_reg_field rxcdrhold;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxcdrhold_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcdrhold = uvm_reg_field::type_id::create( "rxcdrhold" );
    rxcdrhold.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxcdrhold_reg

class vio_rxlpmen_reg extends uvm_reg;
  `uvm_object_utils( vio_rxlpmen_reg )
  rand uvm_reg_field rxlpmen;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxlpmen_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxlpmen = uvm_reg_field::type_id::create( "rxlpmen" );
    rxlpmen.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 1 ), .has_reset( 1 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxlpmen_reg

class vio_rxoutclksel_reg extends uvm_reg;
  `uvm_object_utils( vio_rxoutclksel_reg )
  rand uvm_reg_field rxoutclksel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxoutclksel_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxoutclksel = uvm_reg_field::type_id::create( "rxoutclksel" );
    rxoutclksel.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 2 ), .has_reset( 1 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxoutclksel_reg

class vio_rxpolarity_reg extends uvm_reg;
  `uvm_object_utils( vio_rxpolarity_reg )
  rand uvm_reg_field rxpolarity;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxpolarity_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxpolarity = uvm_reg_field::type_id::create( "rxpolarity" );
    rxpolarity.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxpolarity_reg

class vio_rxrate_reg extends uvm_reg;
  `uvm_object_utils( vio_rxrate_reg )
  rand uvm_reg_field rxrate;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxrate_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxrate = uvm_reg_field::type_id::create( "rxrate" );
    rxrate.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxrate_reg

class vio_txdiffctrl_reg extends uvm_reg;
  `uvm_object_utils( vio_txdiffctrl_reg )
  rand uvm_reg_field txdiffctrl;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txdiffctrl_reg" );
    super.new( .name( name ), .n_bits( 5 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txdiffctrl = uvm_reg_field::type_id::create( "txdiffctrl" );
    txdiffctrl.configure( .parent( this ), .size( 5 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 24 ), .has_reset( 1 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txdiffctrl_reg

class vio_txinhibit_reg extends uvm_reg;
  `uvm_object_utils( vio_txinhibit_reg )
  rand uvm_reg_field txinhibit;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txinhibit_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txinhibit = uvm_reg_field::type_id::create( "txinhibit" );
    txinhibit.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txinhibit_reg

class vio_txoutclksel_reg extends uvm_reg;
  `uvm_object_utils( vio_txoutclksel_reg )
  rand uvm_reg_field txoutclksel;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txoutclksel_reg" );
    super.new( .name( name ), .n_bits( 3 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txoutclksel = uvm_reg_field::type_id::create( "txoutclksel" );
    txoutclksel.configure( .parent( this ), .size( 3 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 2 ), .has_reset( 1 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txoutclksel_reg

class vio_txpolarity_reg extends uvm_reg;
  `uvm_object_utils( vio_txpolarity_reg )
  rand uvm_reg_field txpolarity;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txpolarity_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txpolarity = uvm_reg_field::type_id::create( "txpolarity" );
    txpolarity.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txpolarity_reg

class vio_reset_rx_cdr_stable_reg extends uvm_reg;
  `uvm_object_utils( vio_reset_rx_cdr_stable_reg )
  rand uvm_reg_field reset_rx_cdr_stable;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reset_rx_cdr_stable_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_rx_cdr_stable = uvm_reg_field::type_id::create( "reset_rx_cdr_stable" );
    reset_rx_cdr_stable.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_reset_rx_cdr_stable_reg

class vio_dmonitorout_reg extends uvm_reg;
  `uvm_object_utils( vio_dmonitorout_reg )
  rand uvm_reg_field dmonitorout;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_dmonitorout_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    dmonitorout = uvm_reg_field::type_id::create( "dmonitorout" );
    dmonitorout.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_dmonitorout_reg

class vio_eyescandataerror_reg extends uvm_reg;
  `uvm_object_utils( vio_eyescandataerror_reg )
  rand uvm_reg_field eyescandataerror;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_eyescandataerror_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    eyescandataerror = uvm_reg_field::type_id::create( "eyescandataerror" );
    eyescandataerror.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_eyescandataerror_reg

class vio_rxcommadet_reg extends uvm_reg;
  `uvm_object_utils( vio_rxcommadet_reg )
  rand uvm_reg_field rxcommadet;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxcommadet_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxcommadet = uvm_reg_field::type_id::create( "rxcommadet" );
    rxcommadet.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxcommadet_reg

class vio_rxctrl1_reg extends uvm_reg;
  `uvm_object_utils( vio_rxctrl1_reg )
  rand uvm_reg_field rxctrl1;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxctrl1_reg" );
    super.new( .name( name ), .n_bits( 16 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxctrl1 = uvm_reg_field::type_id::create( "rxctrl1" );
    rxctrl1.configure( .parent( this ), .size( 16 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxctrl1_reg

class vio_rxctrl3_reg extends uvm_reg;
  `uvm_object_utils( vio_rxctrl3_reg )
  rand uvm_reg_field rxctrl3;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxctrl3_reg" );
    super.new( .name( name ), .n_bits( 8 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxctrl3 = uvm_reg_field::type_id::create( "rxctrl3" );
    rxctrl3.configure( .parent( this ), .size( 8 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxctrl3_reg

class vio_rxdlysresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_rxdlysresetdone_reg )
  rand uvm_reg_field rxdlysresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxdlysresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxdlysresetdone = uvm_reg_field::type_id::create( "rxdlysresetdone" );
    rxdlysresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxdlysresetdone_reg

class vio_rxphaligndone_reg extends uvm_reg;
  `uvm_object_utils( vio_rxphaligndone_reg )
  rand uvm_reg_field rxphaligndone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxphaligndone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxphaligndone = uvm_reg_field::type_id::create( "rxphaligndone" );
    rxphaligndone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxphaligndone_reg

class vio_rxresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_rxresetdone_reg )
  rand uvm_reg_field rxresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxresetdone = uvm_reg_field::type_id::create( "rxresetdone" );
    rxresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxresetdone_reg

class vio_rxsyncdone_reg extends uvm_reg;
  `uvm_object_utils( vio_rxsyncdone_reg )
  rand uvm_reg_field rxsyncdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_rxsyncdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    rxsyncdone = uvm_reg_field::type_id::create( "rxsyncdone" );
    rxsyncdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_rxsyncdone_reg

class vio_txbufstatus_reg extends uvm_reg;
  `uvm_object_utils( vio_txbufstatus_reg )
  rand uvm_reg_field txbufstatus;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txbufstatus_reg" );
    super.new( .name( name ), .n_bits( 2 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txbufstatus = uvm_reg_field::type_id::create( "txbufstatus" );
    txbufstatus.configure( .parent( this ), .size( 2 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txbufstatus_reg

class vio_txdlysresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_txdlysresetdone_reg )
  rand uvm_reg_field txdlysresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txdlysresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txdlysresetdone = uvm_reg_field::type_id::create( "txdlysresetdone" );
    txdlysresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txdlysresetdone_reg

class vio_txphaligndone_reg extends uvm_reg;
  `uvm_object_utils( vio_txphaligndone_reg )
  rand uvm_reg_field txphaligndone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txphaligndone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txphaligndone = uvm_reg_field::type_id::create( "txphaligndone" );
    txphaligndone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txphaligndone_reg

class vio_txphinitdone_reg extends uvm_reg;
  `uvm_object_utils( vio_txphinitdone_reg )
  rand uvm_reg_field txphinitdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txphinitdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txphinitdone = uvm_reg_field::type_id::create( "txphinitdone" );
    txphinitdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txphinitdone_reg

class vio_txresetdone_reg extends uvm_reg;
  `uvm_object_utils( vio_txresetdone_reg )
  rand uvm_reg_field txresetdone;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_txresetdone_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    txresetdone = uvm_reg_field::type_id::create( "txresetdone" );
    txresetdone.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RO" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_txresetdone_reg

class vio_disable_reset_reg extends uvm_reg;
  `uvm_object_utils( vio_disable_reset_reg )
  rand uvm_reg_field disable_reset;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_disable_reset_reg" );
    super.new( .name( name ), .n_bits( 1 ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    disable_reset = uvm_reg_field::type_id::create( "disable_reset" );
    disable_reset.configure( .parent( this ), .size( 1 ), .lsb_pos( 0 ), .access( "RW" ),
           .volatile( 1 ), .reset( 0 ), .has_reset( 0 ), .is_rand( 1 ),
           .individually_accessible( 0 ) );
  endfunction : build
endclass: vio_disable_reset_reg
  
class vio_reg_block extends uvm_reg_block;
  `uvm_object_utils( vio_reg_block )
  rand vio_reset_all_reg reset_all;
  rand vio_reset_tx_pll_and_datapath_reg reset_tx_pll_and_datapath;
  rand vio_reset_tx_datapath_reg reset_tx_datapath;
  rand vio_reset_rx_pll_and_datapath_reg reset_rx_pll_and_datapath;
  rand vio_reset_rx_datapath_reg reset_rx_datapath;
  rand vio_link_down_latched_reset_reg link_down_latched_reset;
  rand vio_txpmareset_reg txpmareset;
  rand vio_rxpmareset_reg rxpmareset;
  rand vio_txpcsreset_reg txpcsreset;
  rand vio_rxpcsreset_reg rxpcsreset;
  rand vio_rxdfelpmreset_reg rxdfelpmreset;
  rand vio_txprecursor_reg txprecursor;
  rand vio_txpostcursor_reg txpostcursor;
  rand vio_loopback_reg loopback;
  rand vio_txprbssel_reg txprbssel;
  rand vio_rxprbssel_reg rxprbssel;
  rand vio_txprbsforceerr_reg txprbsforceerr;
  rand vio_rxprbscntreset_reg rxprbscntreset;
  rand vio_link_status_out_reg link_status_out;
  rand vio_link_down_reg link_down;
  rand vio_init_done_reg init_done;
  rand vio_init_retry_ctr_reg init_retry_ctr;
  rand vio_gtpowergood_reg gtpowergood;
  rand vio_qpll0lock_reg qpll0lock;
  rand vio_qpll1lock_reg qpll1lock;
  rand vio_cplllock_reg cplllock;
  rand vio_txpmaresetdone_reg txpmaresetdone;
  rand vio_rxpmaresetdone_reg rxpmaresetdone;
  rand vio_reset_tx_done_reg reset_tx_done;
  rand vio_reset_rx_done_reg reset_rx_done;
  rand vio_rxbufstatus_reg rxbufstatus;
  rand vio_rxprbserr_reg rxprbserr;
  rand vio_rxprbslocked_reg rxprbslocked;
  rand vio_eyescanreset_reg eyescanreset;
  rand vio_eyescantrigger_reg eyescantrigger;
  rand vio_pcsrsvdin_reg pcsrsvdin;
  rand vio_rxbufreset_reg rxbufreset;
  rand vio_rxcdrhold_reg rxcdrhold;
  rand vio_rxlpmen_reg rxlpmen;
  rand vio_rxoutclksel_reg rxoutclksel;
  rand vio_rxpolarity_reg rxpolarity;
  rand vio_rxrate_reg rxrate;
  rand vio_txdiffctrl_reg txdiffctrl;
  rand vio_txinhibit_reg txinhibit;
  rand vio_txoutclksel_reg txoutclksel;
  rand vio_txpolarity_reg txpolarity;
  rand vio_reset_rx_cdr_stable_reg reset_rx_cdr_stable;
  rand vio_dmonitorout_reg dmonitorout;
  rand vio_eyescandataerror_reg eyescandataerror;
  rand vio_rxcommadet_reg rxcommadet;
  rand vio_rxctrl1_reg rxctrl1;
  rand vio_rxctrl3_reg rxctrl3;
  rand vio_rxdlysresetdone_reg rxdlysresetdone;
  rand vio_rxphaligndone_reg rxphaligndone;
  rand vio_rxresetdone_reg rxresetdone;
  rand vio_rxsyncdone_reg rxsyncdone;
  rand vio_txbufstatus_reg txbufstatus;
  rand vio_txdlysresetdone_reg txdlysresetdone;
  rand vio_txphaligndone_reg txphaligndone;
  rand vio_txphinitdone_reg txphinitdone;
  rand vio_txresetdone_reg txresetdone;
  rand vio_disable_reset_reg disable_reset;
   
  uvm_reg_map reg_map;

  //---------------------------------------------------------------------------
  // Function: new
  //---------------------------------------------------------------------------

  function new( string name = "vio_reg_block" );
    super.new( .name( name ), .has_coverage( UVM_CVR_ADDR_MAP /*UVM_NO_COVERAGE*/ ) );
  endfunction : new

  //---------------------------------------------------------------------------
  // Function: build
  //---------------------------------------------------------------------------

  virtual function void build();
    reset_all = vio_reset_all_reg::type_id::create( "reset_all" );
    reset_all.configure( .blk_parent( this ) );
    reset_all.build();
    reset_tx_pll_and_datapath = vio_reset_tx_pll_and_datapath_reg::type_id::create( "reset_tx_pll_and_datapath" );
    reset_tx_pll_and_datapath.configure( .blk_parent( this ) );
    reset_tx_pll_and_datapath.build();
    reset_tx_datapath = vio_reset_tx_datapath_reg::type_id::create( "reset_tx_datapath" );
    reset_tx_datapath.configure( .blk_parent( this ) );
    reset_tx_datapath.build();
    reset_rx_pll_and_datapath = vio_reset_rx_pll_and_datapath_reg::type_id::create( "reset_rx_pll_and_datapath" );
    reset_rx_pll_and_datapath.configure( .blk_parent( this ) );
    reset_rx_pll_and_datapath.build();
    reset_rx_datapath = vio_reset_rx_datapath_reg::type_id::create( "reset_rx_datapath" );
    reset_rx_datapath.configure( .blk_parent( this ) );
    reset_rx_datapath.build();
    link_down_latched_reset = vio_link_down_latched_reset_reg::type_id::create( "link_down_latched_reset" );
    link_down_latched_reset.configure( .blk_parent( this ) );
    link_down_latched_reset.build();
    txpmareset = vio_txpmareset_reg::type_id::create( "txpmareset" );
    txpmareset.configure( .blk_parent( this ) );
    txpmareset.build();
    rxpmareset = vio_rxpmareset_reg::type_id::create( "rxpmareset" );
    rxpmareset.configure( .blk_parent( this ) );
    rxpmareset.build();
    txpcsreset = vio_txpcsreset_reg::type_id::create( "txpcsreset" );
    txpcsreset.configure( .blk_parent( this ) );
    txpcsreset.build();
    rxpcsreset = vio_rxpcsreset_reg::type_id::create( "rxpcsreset" );
    rxpcsreset.configure( .blk_parent( this ) );
    rxpcsreset.build();
    rxdfelpmreset = vio_rxdfelpmreset_reg::type_id::create( "rxdfelpmreset" );
    rxdfelpmreset.configure( .blk_parent( this ) );
    rxdfelpmreset.build();
    txprecursor = vio_txprecursor_reg::type_id::create( "txprecursor" );
    txprecursor.configure( .blk_parent( this ) );
    txprecursor.build();
    txpostcursor = vio_txpostcursor_reg::type_id::create( "txpostcursor" );
    txpostcursor.configure( .blk_parent( this ) );
    txpostcursor.build();
    loopback = vio_loopback_reg::type_id::create( "loopback" );
    loopback.configure( .blk_parent( this ) );
    loopback.build();
    txprbssel = vio_txprbssel_reg::type_id::create( "txprbssel" );
    txprbssel.configure( .blk_parent( this ) );
    txprbssel.build();
    rxprbssel = vio_rxprbssel_reg::type_id::create( "rxprbssel" );
    rxprbssel.configure( .blk_parent( this ) );
    rxprbssel.build();
    txprbsforceerr = vio_txprbsforceerr_reg::type_id::create( "txprbsforceerr" );
    txprbsforceerr.configure( .blk_parent( this ) );
    txprbsforceerr.build();
    rxprbscntreset = vio_rxprbscntreset_reg::type_id::create( "rxprbscntreset" );
    rxprbscntreset.configure( .blk_parent( this ) );
    rxprbscntreset.build();
    link_status_out = vio_link_status_out_reg::type_id::create( "link_status_out" );
    link_status_out.configure( .blk_parent( this ) );
    link_status_out.build();
    link_down = vio_link_down_reg::type_id::create( "link_down" );
    link_down.configure( .blk_parent( this ) );
    link_down.build();
    init_done = vio_init_done_reg::type_id::create( "init_done" );
    init_done.configure( .blk_parent( this ) );
    init_done.build();
    init_retry_ctr = vio_init_retry_ctr_reg::type_id::create( "init_retry_ctr" );
    init_retry_ctr.configure( .blk_parent( this ) );
    init_retry_ctr.build();
    gtpowergood = vio_gtpowergood_reg::type_id::create( "gtpowergood" );
    gtpowergood.configure( .blk_parent( this ) );
    gtpowergood.build();
    qpll0lock = vio_qpll0lock_reg::type_id::create( "qpll0lock" );
    qpll0lock.configure( .blk_parent( this ) );
    qpll0lock.build();
    qpll1lock = vio_qpll1lock_reg::type_id::create( "qpll1lock" );
    qpll1lock.configure( .blk_parent( this ) );
    qpll1lock.build();
    cplllock = vio_cplllock_reg::type_id::create( "cplllock" );
    cplllock.configure( .blk_parent( this ) );
    cplllock.build();
    txpmaresetdone = vio_txpmaresetdone_reg::type_id::create( "txpmaresetdone" );
    txpmaresetdone.configure( .blk_parent( this ) );
    txpmaresetdone.build();
    rxpmaresetdone = vio_rxpmaresetdone_reg::type_id::create( "rxpmaresetdone" );
    rxpmaresetdone.configure( .blk_parent( this ) );
    rxpmaresetdone.build();
    reset_tx_done = vio_reset_tx_done_reg::type_id::create( "reset_tx_done" );
    reset_tx_done.configure( .blk_parent( this ) );
    reset_tx_done.build();
    reset_rx_done = vio_reset_rx_done_reg::type_id::create( "reset_rx_done" );
    reset_rx_done.configure( .blk_parent( this ) );
    reset_rx_done.build();
    rxbufstatus = vio_rxbufstatus_reg::type_id::create( "rxbufstatus" );
    rxbufstatus.configure( .blk_parent( this ) );
    rxbufstatus.build();
    rxprbserr = vio_rxprbserr_reg::type_id::create( "rxprbserr" );
    rxprbserr.configure( .blk_parent( this ) );
    rxprbserr.build();
    rxprbslocked = vio_rxprbslocked_reg::type_id::create( "rxprbslocked" );
    rxprbslocked.configure( .blk_parent( this ) );
    rxprbslocked.build();
    eyescanreset = vio_eyescanreset_reg::type_id::create( "eyescanreset" );
    eyescanreset.configure( .blk_parent( this ) );
    eyescanreset.build();
    eyescantrigger = vio_eyescantrigger_reg::type_id::create( "eyescantrigger" );
    eyescantrigger.configure( .blk_parent( this ) );
    eyescantrigger.build();
    pcsrsvdin = vio_pcsrsvdin_reg::type_id::create( "pcsrsvdin" );
    pcsrsvdin.configure( .blk_parent( this ) );
    pcsrsvdin.build();
    rxbufreset = vio_rxbufreset_reg::type_id::create( "rxbufreset" );
    rxbufreset.configure( .blk_parent( this ) );
    rxbufreset.build();
    rxcdrhold = vio_rxcdrhold_reg::type_id::create( "rxcdrhold" );
    rxcdrhold.configure( .blk_parent( this ) );
    rxcdrhold.build();
    rxlpmen = vio_rxlpmen_reg::type_id::create( "rxlpmen" );
    rxlpmen.configure( .blk_parent( this ) );
    rxlpmen.build();
    rxoutclksel = vio_rxoutclksel_reg::type_id::create( "rxoutclksel" );
    rxoutclksel.configure( .blk_parent( this ) );
    rxoutclksel.build();
    rxpolarity = vio_rxpolarity_reg::type_id::create( "rxpolarity" );
    rxpolarity.configure( .blk_parent( this ) );
    rxpolarity.build();
    rxrate = vio_rxrate_reg::type_id::create( "rxrate" );
    rxrate.configure( .blk_parent( this ) );
    rxrate.build();
    txdiffctrl = vio_txdiffctrl_reg::type_id::create( "txdiffctrl" );
    txdiffctrl.configure( .blk_parent( this ) );
    txdiffctrl.build();
    txinhibit = vio_txinhibit_reg::type_id::create( "txinhibit" );
    txinhibit.configure( .blk_parent( this ) );
    txinhibit.build();
    txoutclksel = vio_txoutclksel_reg::type_id::create( "txoutclksel" );
    txoutclksel.configure( .blk_parent( this ) );
    txoutclksel.build();
    txpolarity = vio_txpolarity_reg::type_id::create( "txpolarity" );
    txpolarity.configure( .blk_parent( this ) );
    txpolarity.build();
    reset_rx_cdr_stable = vio_reset_rx_cdr_stable_reg::type_id::create( "reset_rx_cdr_stable" );
    reset_rx_cdr_stable.configure( .blk_parent( this ) );
    reset_rx_cdr_stable.build();
    dmonitorout = vio_dmonitorout_reg::type_id::create( "dmonitorout" );
    dmonitorout.configure( .blk_parent( this ) );
    dmonitorout.build();
    eyescandataerror = vio_eyescandataerror_reg::type_id::create( "eyescandataerror" );
    eyescandataerror.configure( .blk_parent( this ) );
    eyescandataerror.build();
    rxcommadet = vio_rxcommadet_reg::type_id::create( "rxcommadet" );
    rxcommadet.configure( .blk_parent( this ) );
    rxcommadet.build();
    rxctrl1 = vio_rxctrl1_reg::type_id::create( "rxctrl1" );
    rxctrl1.configure( .blk_parent( this ) );
    rxctrl1.build();
    rxctrl3 = vio_rxctrl3_reg::type_id::create( "rxctrl3" );
    rxctrl3.configure( .blk_parent( this ) );
    rxctrl3.build();
    rxdlysresetdone = vio_rxdlysresetdone_reg::type_id::create( "rxdlysresetdone" );
    rxdlysresetdone.configure( .blk_parent( this ) );
    rxdlysresetdone.build();
    rxphaligndone = vio_rxphaligndone_reg::type_id::create( "rxphaligndone" );
    rxphaligndone.configure( .blk_parent( this ) );
    rxphaligndone.build();
    rxresetdone = vio_rxresetdone_reg::type_id::create( "rxresetdone" );
    rxresetdone.configure( .blk_parent( this ) );
    rxresetdone.build();
    rxsyncdone = vio_rxsyncdone_reg::type_id::create( "rxsyncdone" );
    rxsyncdone.configure( .blk_parent( this ) );
    rxsyncdone.build();
    txbufstatus = vio_txbufstatus_reg::type_id::create( "txbufstatus" );
    txbufstatus.configure( .blk_parent( this ) );
    txbufstatus.build();
    txdlysresetdone = vio_txdlysresetdone_reg::type_id::create( "txdlysresetdone" );
    txdlysresetdone.configure( .blk_parent( this ) );
    txdlysresetdone.build();
    txphaligndone = vio_txphaligndone_reg::type_id::create( "txphaligndone" );
    txphaligndone.configure( .blk_parent( this ) );
    txphaligndone.build();
    txphinitdone = vio_txphinitdone_reg::type_id::create( "txphinitdone" );
    txphinitdone.configure( .blk_parent( this ) );
    txphinitdone.build();
    txresetdone = vio_txresetdone_reg::type_id::create( "txresetdone" );
    txresetdone.configure( .blk_parent( this ) );
    txresetdone.build();
    disable_reset = vio_disable_reset_reg::type_id::create( "disable_reset" );
    disable_reset.configure( .blk_parent( this ) );
    disable_reset.build();
    reg_map = create_map( .name( "reg_map" ), .base_addr( 0 ), .n_bytes( 8 ),
                          .endian( UVM_LITTLE_ENDIAN ), .byte_addressing( 1 ) );
    reg_map.add_reg( .rg( reset_all ), .offset( 0 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( reset_tx_pll_and_datapath ), .offset( 1 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( reset_tx_datapath ), .offset( 2 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( reset_rx_pll_and_datapath ), .offset( 3 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( reset_rx_datapath ), .offset( 4 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( link_down_latched_reset ), .offset( 5 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpmareset ), .offset( 6 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpmareset ), .offset( 7 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpcsreset ), .offset( 8 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpcsreset ), .offset( 9 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxdfelpmreset ), .offset( 10 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txprecursor ), .offset( 11 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpostcursor ), .offset( 12 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( loopback ), .offset( 13 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txprbssel ), .offset( 14 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxprbssel ), .offset( 15 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txprbsforceerr ), .offset( 16 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxprbscntreset ), .offset( 17 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( link_status_out ), .offset( 18 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( link_down ), .offset( 19 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( init_done ), .offset( 20 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( init_retry_ctr ), .offset( 21 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( gtpowergood ), .offset( 22 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( qpll0lock ), .offset( 23 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( qpll1lock ), .offset( 24 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( cplllock ), .offset( 25 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txpmaresetdone ), .offset( 26 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxpmaresetdone ), .offset( 27 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( reset_tx_done ), .offset( 28 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( reset_rx_done ), .offset( 29 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxbufstatus ), .offset( 30 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxprbserr ), .offset( 31 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxprbslocked ), .offset( 32 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( eyescanreset ), .offset( 33 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( eyescantrigger ), .offset( 34 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( pcsrsvdin ), .offset( 35 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxbufreset ), .offset( 36 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxcdrhold ), .offset( 37 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxlpmen ), .offset( 38 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxoutclksel ), .offset( 39 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxpolarity ), .offset( 40 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( rxrate ), .offset( 41 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txdiffctrl ), .offset( 42 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txinhibit ), .offset( 43 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txoutclksel ), .offset( 44 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( txpolarity ), .offset( 45 ), .rights( "RW" ) );
    reg_map.add_reg( .rg( reset_rx_cdr_stable ), .offset( 46 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( dmonitorout ), .offset( 47 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( eyescandataerror ), .offset( 48 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxcommadet ), .offset( 49 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxctrl1 ), .offset( 50 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxctrl3 ), .offset( 51 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxdlysresetdone ), .offset( 52 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxphaligndone ), .offset( 53 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxresetdone ), .offset( 54 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( rxsyncdone ), .offset( 55 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txbufstatus ), .offset( 56 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txdlysresetdone ), .offset( 57 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txphaligndone ), .offset( 58 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txphinitdone ), .offset( 59 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( txresetdone ), .offset( 60 ), .rights( "RO" ) );
    reg_map.add_reg( .rg( disable_reset ), .offset( 61 ), .rights( "RW" ) );
  endfunction : build

endclass: vio_reg_block