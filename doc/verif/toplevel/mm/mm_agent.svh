`ifndef MM_AGENT__SVH
`define MM_AGENT__SVH

class mm_agent extends uvm_agent;
  `uvm_component_utils_begin(mm_agent)

  `uvm_component_utils_end

  uvm_analysis_port#(mm_item)                        analysis_port;
  mm_config                                          m_config;
  mm_monitor                                         m_monitor;
  mm_sequencer                                       m_sequencer;
  mm_driver                                          m_driver;
  function  new(string name, uvm_component parent);
    super.new(name, parent);
    analysis_port=new("analysis_port",this);

  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    m_monitor=mm_monitor::type_id::create("m_monitor",this);
    m_sequencer=mm_sequencer::type_id::create("m_sequencer",this);
    m_driver=mm_driver::type_id::create("m_driver",this);

    if (!uvm_config_db #(mm_config)::get(this, "", "config", m_config))
      `uvm_error(get_type_name(), "mm_config config not found")

  endfunction : build_phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    m_monitor.vif = m_config.vif;
    m_driver.vif = m_config.vif;
    m_driver.seq_item_port.connect(m_sequencer.seq_item_export);
  endfunction : connect_phase

endclass : mm_agent
`endif // MM_AGENT__SVH
