`ifndef MM_MONITOR__SVH
`define MM_MONITOR__SVH

class mm_monitor extends uvm_monitor;
  `uvm_component_utils_begin(mm_monitor)

  `uvm_component_utils_end

  virtual mm_if                                      vif;
  uvm_analysis_port#(mm_item)                        analysis_port;

  function  new(string name="mm_monitor", uvm_component parent);
    super.new(name, parent);
    analysis_port=new("analysis_port",this);

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
    `uvm_info(get_type_name(), "main_phase", UVM_MEDIUM)
    forever
    begin
      mm_item item;
      @(vif.master_cb);
      item.do_mon(vif,item);
    end

  endtask : main_phase
  task shutdown_phase(uvm_phase phase);

  endtask : shutdown_phase
endclass : mm_monitor
`endif // MM_MONITOR__SVH
