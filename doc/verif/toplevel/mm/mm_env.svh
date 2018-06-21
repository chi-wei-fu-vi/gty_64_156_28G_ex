`ifndef MM_ENV__SVH
`define MM_ENV__SVH

class mm_env extends uvm_env;
  `uvm_component_utils_begin(mm_env)
  `uvm_component_utils_end


  drp_reg_block                                      m_drp;
  mm_env_coverage                                    m_mm_env_coverage;
  mm_agent                                           m_mm_agent;
  mm_coverage                                        m_mm_coverage;
  uvm_reg_predictor #(mm_item)                       m_drp_predictor;
  drp_adapter                                        m_drp_adapter;
  mm_config                                          m_config;
  function  new(string name="mm_env", uvm_component parent);
    super.new(name, parent);


  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    m_drp=drp_reg_block::type_id::create("m_drp",this);
    m_mm_env_coverage=mm_env_coverage::type_id::create("m_mm_env_coverage",this);
    m_mm_agent=mm_agent::type_id::create("m_mm_agent",this);
    m_mm_coverage=mm_coverage::type_id::create("m_mm_coverage",this);
    m_drp_predictor=uvm_reg_predictor #(mm_item)::type_id::create("m_drp_predictor",this);
    m_drp_adapter=drp_adapter::type_id::create("m_drp_adapter",this);

    if (!uvm_config_db #(mm_config)::get(this, "", "config", m_config))
      `uvm_error(get_type_name(), "Unable to get mm_config")
    m_config.m_drp = m_drp;
    uvm_config_db #(mm_config)::set(this, "m_mm_env_coverage", "config", m_config);
    uvm_config_db #(mm_config)::set(this, "m_mm_agent", "config", m_config);
    uvm_config_db #(mm_config)::set(this, "m_mm_coverage", "config", m_config);

    m_drp.build();
    m_drp.lock_model();

  endfunction : build_phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);


    m_drp_predictor.map     = m_drp.reg_map;
    m_drp_predictor.adapter = m_drp_adapter;
    m_drp.reg_map.set_sequencer( .sequencer( m_mm_agent.m_sequencer ), .adapter( m_drp_adapter ));
    m_drp.reg_map.set_auto_predict( .on( 0 ) );

    m_mm_agent.m_monitor.analysis_port.connect(m_drp_predictor.bus_in);
    m_mm_agent.m_monitor.analysis_port.connect(m_mm_env_coverage.analysis_export);
    m_mm_agent.m_monitor.analysis_port.connect(m_mm_coverage.analysis_export);
    m_mm_agent.m_sequencer.m_drp=m_drp;
  endfunction : connect_phase

  task reset_phase(uvm_phase phase);

  endtask : reset_phase
  task configure_phase(uvm_phase phase);

  endtask : configure_phase
  task main_phase(uvm_phase phase);

  endtask : main_phase
  task shutdown_phase(uvm_phase phase);

  endtask : shutdown_phase
endclass : mm_env
`endif // MM_ENV__SVH
