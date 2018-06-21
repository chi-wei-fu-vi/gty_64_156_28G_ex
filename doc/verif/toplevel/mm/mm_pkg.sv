package mm_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  import common_pkg::*;
  import common_env_pkg::*;
  import drp_reg_pkg::*;
  typedef class mm_env_coverage;
  typedef class mm_sequencer;
  typedef class mm_driver;
  typedef class mm_monitor;
  typedef class mm_coverage;
  typedef class mm_agent;
  typedef class drp_adapter;
  typedef class mm_env;
  typedef class mm_config;
  typedef class mm_item;
  `include "mm_env_coverage.svh"
  `include "mm_sequencer.svh"
  `include "mm_driver.svh"
  `include "mm_monitor.svh"
  `include "mm_coverage.svh"
  `include "mm_agent.svh"
  `include "drp_adapter.svh"
  `include "mm_env.svh"
  `include "mm_config.svh"
  `include "mm_item.svh"
endpackage : mm_pkg
