`ifndef TOPLEVEL_ENV__SVH
`define TOPLEVEL_ENV__SVH

class toplevel_env extends uvm_env;
  `uvm_component_utils_begin(toplevel_env)
  `uvm_component_utils_end


  mm_env                                             m_mm_env;
  toplevel_config                                    m_config;
  function  new(string name="toplevel_env", uvm_component parent);
    super.new(name, parent);


  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    m_mm_env=mm_env::type_id::create("m_mm_env",this);

    if (!uvm_config_db #(toplevel_config)::get(this, "", "config", m_config))
      `uvm_error(get_type_name(), "Unable to get toplevel_config")

    uvm_config_db #(mm_config)::set(this, "m_mm_env", "config", m_config.m_mm_config);


  endfunction : build_phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);



  endfunction : connect_phase

  task reset_phase(uvm_phase phase);

  endtask : reset_phase
  task configure_phase(uvm_phase phase);

  endtask : configure_phase
  task main_phase(uvm_phase phase);

  endtask : main_phase
  task shutdown_phase(uvm_phase phase);

  endtask : shutdown_phase
endclass : toplevel_env
`endif // TOPLEVEL_ENV__SVH
