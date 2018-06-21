`ifndef MM_ENV_COVERAGE__SVH
`define MM_ENV_COVERAGE__SVH

class mm_env_coverage extends uvm_subscriber#(mm_item);
  `uvm_component_utils_begin(mm_env_coverage)
  `uvm_component_utils_end
  mm_config                                          m_config;
  bit                                                m_is_covered;



  mm_item                                            m_item;
  covergroup m_cov;
    option.per_instance = 1;
  endgroup
  function  new(string name="mm_env_coverage", uvm_component parent);
    super.new(name, parent);


    m_is_covered = 0;
    m_cov=new();
  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db #(mm_config)::get(this, "", "config", m_config))
      `uvm_error(get_type_name(), "mm_config config not found")

  endfunction : build_phase
  function void write(mm_item t );
    m_item = t;
    if (m_config.coverage_enable)
    begin
      m_cov.sample();
      // Check coverage - could use m_cov.option.goal instead of 100 if your simulator supports it
      if (m_cov.get_inst_coverage() >= 100) m_is_covered = 1;
    end
  endfunction : write
  function void report_phase(uvm_phase phase);
    if (m_config.coverage_enable)
      `uvm_info(get_type_name(), $sformatf("Coverage score = %3.1f%%", m_cov.get_inst_coverage()), UVM_MEDIUM)
    else
      `uvm_info(get_type_name(), "Coverage disabled for this agent", UVM_MEDIUM)
  endfunction : report_phase
endclass : mm_env_coverage
`endif // MM_ENV_COVERAGE__SVH
