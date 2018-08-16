
`ifndef BASE_TEST__SVH
`define BASE_TEST__SVH
class base_test extends uvm_test;
  `uvm_component_utils(base_test)

  toplevel_env m_toplevel_env;
  seq_mm_item                        m_seq_mm_item;

  function new(string name="base_test", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    uvm_reg::include_coverage("*", UVM_CVR_ALL);
    m_toplevel_env = toplevel_env::type_id::create("m_toplevel_env", this);
    //seq_mm_item::type_id::set_type_override(gty_prbs_seq::get_type());
    m_seq_mm_item=seq_mm_item::type_id::create("m_seq_mm_item");
    common_env_pkg::utils::cfg_printer(uvm_default_printer);
  endfunction : build_phase

  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_factory f;
    uvm_phase main_phase = phase.find_by_name("main", 0);
    main_phase.phase_done.set_drain_time(this, 1us);
    uvm_top.print_topology();
    f=uvm_factory::get();
    f.print(.all_types(2));
  endfunction : end_of_elaboration_phase

  function void start_of_simulation_phase(uvm_phase phase);
  endfunction : start_of_simulation_phase

  task reset_phase(uvm_phase phase);

  endtask : reset_phase
  task configure_phase(uvm_phase phase);
    phase.raise_objection(this);
    `uvm_info(get_type_name(), "configure_phase", UVM_MEDIUM)
    m_seq_mm_item.start(m_toplevel_env.m_mm_env.m_mm_agent.m_sequencer);
    phase.drop_objection(this);

  endtask : configure_phase
  task main_phase(uvm_phase phase);
    phase.raise_objection(this);
    #5us;
    phase.drop_objection(this);
  endtask : main_phase
  task shutdown_phase(uvm_phase phase);

  endtask : shutdown_phase
endclass : base_test
`endif // BASE_TEST__SVH
