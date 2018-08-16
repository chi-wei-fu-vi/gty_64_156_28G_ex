
module toplevel_tb;
  //timeunit      1ns;
  timeunit      1ps;
  timeprecision 1ps;
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  import common_pkg::*;
  import common_env_pkg::*;
  import toplevel_test_pkg::*;
  import toplevel_pkg::toplevel_config;

  // Configuration object for top-level environment
  toplevel_config m_toplevel_config;

  // Test harness
  toplevel_th th();

  initial
  begin
    // Create and populate top-level configuration object
    m_toplevel_config = toplevel_config::type_id::create("m_toplevel_config");
    if ( !m_toplevel_config.randomize() )
      `uvm_error("toplevel_tb", "Failed to randomize top-level configuration object" )

    m_toplevel_config.m_mm_config.vif = th.mm_if_0;
    uvm_config_db #(toplevel_config)::set(null, "", "config", m_toplevel_config);
    run_test();
  end
endmodule
