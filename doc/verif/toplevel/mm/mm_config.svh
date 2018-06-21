`ifndef MM_CONFIG__SVH
`define MM_CONFIG__SVH
class mm_config extends uvm_object;
  `uvm_object_utils(mm_config)

  virtual mm_if                                      vif;
  uvm_active_passive_enum                            is_active = UVM_ACTIVE;
  bit                                                coverage_enable;
  bit                                                checks_enable;

  drp_reg_block                                      m_drp;
  function  new(string name="");
    super.new(name);

  endfunction : new
  task body();
  endtask : body
endclass : mm_config
`endif // MM_CONFIG__SVH
