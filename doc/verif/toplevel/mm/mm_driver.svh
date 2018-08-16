`ifndef MM_DRIVER__SVH
`define MM_DRIVER__SVH

class mm_driver extends uvm_driver#(mm_item);
  `uvm_component_utils_begin(mm_driver)

  `uvm_component_utils_end

  virtual mm_if                                      vif;

  function  new(string name, uvm_component parent);
    super.new(name, parent);


  endfunction : new
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);


  endfunction : build_phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);


  endfunction : connect_phase

  task reset_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "reset_phase", UVM_MEDIUM)
    phase.raise_objection(this);
    repeat (100) @(posedge vif.master_cb);
    mm_item::do_init(vif);
    wait(vif.link_status);
    phase.drop_objection(this);
  endtask : reset_phase
  task configure_phase(uvm_phase phase);
    `uvm_info(get_type_name(), "configure_phase", UVM_MEDIUM)
    forever
    begin
      mm_item req;
      //mm_item rsp;
      //rsp=new;
      @(posedge vif.master_cb);
      seq_item_port.get_next_item(req);
      `uvm_info(get_type_name(), {"req item\n",req.sprint()}, UVM_MEDIUM)
      req.do_config(vif,req);
      //rsp.set_sequence_id(req.get_sequence_id);
      //rsp.offset=req.offset;
      //rsp.kind=req.kind;
      @(vif.master_cb.drp_rdy);
      #1ps;
      //rsp.value[0]=vif.master_cb.drp_do;
      req.value[0]=vif.master_cb.drp_do;
      //`uvm_info(get_type_name(), {"rsp item\n",rsp.sprint()}, UVM_MEDIUM)
      `uvm_info(get_type_name(), {"rsp item\n",req.sprint()}, UVM_MEDIUM)
      //seq_item_port.item_done(rsp);
      seq_item_port.item_done();
    end

  endtask : configure_phase
  task main_phase(uvm_phase phase);

  endtask : main_phase
  task shutdown_phase(uvm_phase phase);

  endtask : shutdown_phase
endclass : mm_driver
`endif // MM_DRIVER__SVH
