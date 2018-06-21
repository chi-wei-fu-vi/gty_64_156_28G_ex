`ifndef MM_SEQUENCER__SVH
`define MM_SEQUENCER__SVH
class mm_sequencer extends uvm_sequencer#(mm_item);
  drp_reg_block m_drp;
  `uvm_component_utils_begin(mm_sequencer)

  `uvm_component_utils_end


  function  new(string name="mm_sequencer", uvm_component parent);
    super.new(name, parent);


  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);


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
endclass : mm_sequencer
`endif // MM_SEQUENCER__SVH
