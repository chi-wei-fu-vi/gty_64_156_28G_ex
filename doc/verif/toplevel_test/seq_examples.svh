
`ifndef SEQ_EXAMPLES__SVH
`define SEQ_EXAMPLES__SVH

class seq_mm_item extends uvm_sequence #(mm_item);
  int num_inst = 4;
  mm_item req;

  `uvm_object_utils_begin(seq_mm_item)    
    `uvm_field_int(num_inst, UVM_ALL_ON)
  `uvm_object_utils_end
  `uvm_declare_p_sequencer (mm_sequencer)
  
  function new(string name="seq_mm_item");
    super.new(name);
  endfunction
  

  virtual task body();
    uvm_reg regs[$];
    uvm_reg_field flds[$];
    uvm_status_e status;
    uvm_reg_data_t value;
    m_sequencer.print();
    `uvm_info(get_full_name(),$sformatf("Num of transactions %d",num_inst),UVM_LOW);
/*
    repeat(num_inst) begin
      `uvm_do_with(req, { kind == UVM_READ; });
    end
*/
    p_sequencer.m_drp.top.get_registers(regs);
    p_sequencer.m_drp.top.get_fields(flds);
    foreach (regs[i]) begin
      `uvm_info("GET",$sformatf("%s : %04h",regs[i].get_full_name(),regs[i].get()),UVM_HIGH)
      regs[i].read(status,value);
      `uvm_info("READ",$sformatf("%s : status %s  value %04h",regs[i].get_full_name(),status.name(),value),UVM_HIGH)
    end
    foreach (flds[i]) begin
      `uvm_info("GET",$sformatf("%s : %04h",flds[i].get_full_name(),flds[i].get()),UVM_HIGH)
      flds[i].read(status,value);
      `uvm_info("READ",$sformatf("%s : status %s  value %04h",flds[i].get_full_name(),status.name(),value),UVM_HIGH)
    end
  endtask
endclass : seq_mm_item 

`endif // SEQ_EXAMPLES__SVH
