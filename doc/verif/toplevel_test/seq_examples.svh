
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


class gty_prbs_seq extends uvm_sequence #(mm_item);
  mm_item req;

  `uvm_object_utils_begin(gty_prbs_seq)    
  `uvm_object_utils_end
  `uvm_declare_p_sequencer (mm_sequencer)
  
  function new(string name="gty_prbs_seq");
    super.new(name);
  endfunction
  

  virtual task body();
    uvm_status_e status;
    uvm_reg_data_t value;
    uvm_reg_data_t err_cnt;
    drp_reg_block m_drp;
    //m_sequencer.print();
    
    m_drp=p_sequencer.m_drp;
    // Put the PCS into reset by asserting TXPCSRESET.
    m_drp.top.vio.txpcsreset.write(status,1);
    // Set the attribute TXGEARBOX_EN = 1'b0 via DRP.  Originally it is 1'b1.
    m_drp.top.ch.tx_maincursor_sel.txgearbox_en.write(status,0);
    // Set the port TXOUTCLKSEL to 3'b010 (TXOUTCLKPMA).  Originally it is 3'b101 (TXPROGDIVCLK).
    m_drp.top.vio.txoutclksel.write(status,2);
    // Set the attribute TXBUF_EN = 1'b1 (Enable TX Buffer) via DRP.  Originally it is 1'b0
    m_drp.top.ch.tx_maincursor_sel.txbuf_en.write(status,1);
    // Set TXPRBSEL and RXPRBSEL to the desired PRBS pattern.  Originally it is 4'b0000 (Pat Gen/Chk off)
    m_drp.top.vio.txprbssel.write(status,5);
    m_drp.top.vio.rxprbssel.write(status,5);
    // Release TXPCSRESET
    m_drp.top.vio.txpcsreset.write(status,0);
    m_drp.top.ch.rxprbs_linkacq_cnt.read(status,value);
    `uvm_info("READ",$sformatf(" m_drp.top.ch.rxprbs_linkacq_cnt: status %s  value %04h",status.name(),value),UVM_HIGH)
    #5us;
    //m_drp.top.vio.rxprbscntreset.write(status,1);
    m_drp.top.ch.rx_prbs_err_15_0_cnt.read(status,err_cnt);
    m_drp.top.ch.rx_prbs_err_31_16_cnt.read(status,value);
    err_cnt+=value<<16;
    `uvm_info("READ",$sformatf("ERROR COUNT: %08h",err_cnt),UVM_HIGH)
    #5us;
    m_drp.top.vio.txprbsforceerr.write(status,1);
    m_drp.top.vio.txprbsforceerr.write(status,0);
    #5us;
    m_drp.top.ch.rx_prbs_err_15_0_cnt.read(status,err_cnt);
    m_drp.top.ch.rx_prbs_err_31_16_cnt.read(status,value);
    err_cnt+=value<<16;
    `uvm_info("READ",$sformatf("ERROR COUNT: %08h",err_cnt),UVM_HIGH)

    // Put the PCS into reset by asserting TXPCSRESET.
    m_drp.top.vio.txpcsreset.write(status,1);
    // Set the attribute TXGEARBOX_EN = 1'b0 via DRP.  Originally it is 1'b1.
    m_drp.top.ch.tx_maincursor_sel.txgearbox_en.write(status,0);
    // Set the port TXOUTCLKSEL to 3'b010 (TXOUTCLKPMA).  Originally it is 3'b101 (TXPROGDIVCLK).
    m_drp.top.vio.txoutclksel.write(status,2);
    // Set the attribute TXBUF_EN = 1'b1 (Enable TX Buffer) via DRP.  Originally it is 1'b0
    m_drp.top.ch.tx_maincursor_sel.txbuf_en.write(status,1);
    // Set TXPRBSEL and RXPRBSEL to the desired PRBS pattern.  Originally it is 4'b0000 (Pat Gen/Chk off)
    m_drp.top.vio.txprbssel.write(status,10);
    m_drp.top.vio.rxprbssel.write(status,10);
    // Release TXPCSRESET
    m_drp.top.vio.txpcsreset.write(status,0);
    #5us;

  endtask
endclass : gty_prbs_seq 

`endif // SEQ_EXAMPLES__SVH
