`ifndef TOPLEVEL_CONFIG__SVH
`define TOPLEVEL_CONFIG__SVH
class toplevel_config extends uvm_object;
  `uvm_object_utils(toplevel_config)
  mm_config                                          m_mm_config;



  function  new(string name="");
    super.new(name);

      m_mm_config=mm_config::type_id::create("m_mm_config");
      m_mm_config.is_active       = UVM_ACTIVE;
      m_mm_config.checks_enable   = 0;
      m_mm_config.coverage_enable = 0;
  endfunction : new
  task body();
  endtask : body
endclass : toplevel_config
`endif // TOPLEVEL_CONFIG__SVH
