`ifndef DRP_ADAPTER__SVH
`define DRP_ADAPTER__SVH
class drp_adapter extends uvm_reg_adapter;
  `uvm_object_utils(drp_adapter)

  function new(string name = "");
     super.new(name);
  endfunction : new

  function uvm_sequence_item reg2bus(const ref uvm_reg_bus_op rw);
    //mm_item m_item = mm_item::type_id::create("m_item");
    mm_item m_item = mm_item::type_id::create("m_item");
//    m_item.addr = rw.addr;
    m_item.offset = rw.addr;
    m_item.kind = rw.kind;
    if (rw.kind == UVM_READ) begin
//      m_item.kind = mm_item::MM_READ;
    end
    else begin
//      m_item.kind = mm_item::MM_WRITE;
      m_item.value[0] = rw.data;
      `uvm_info(get_type_name(), $sformatf("trans2bus rw::kind: %s, addr: %h, data: %04h, status: %s", rw.kind, rw.addr, rw.data, rw.status.name()), UVM_HIGH)
    end
//    `uvm_info(get_type_name(), $sformatf("trans2bus rw::kind: %s, addr: %d, data: %h, status: %s", rw.kind, rw.addr, rw.data, rw.status), UVM_HIGH)
    return m_item;
  endfunction : reg2bus


  function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
    mm_item m_item;
    if (!$cast(m_item, bus_item))
      `uvm_fatal(get_type_name(),"Provided bus_item is not of the correct type")
//    if (m_item.kind == mm_item::MM_READ) begin
//      rw.kind   = UVM_READ;
//    end
//    else begin
//      rw.kind   = UVM_WRITE;
//    end
    m_item.kind = rw.kind;
//    rw.addr   = m_item.addr;
    rw.addr   = m_item.offset;
    rw.data   = m_item.value[0];
    rw.status = UVM_IS_OK;
    if (rw.kind == UVM_READ) begin
      `uvm_info(get_type_name(), $sformatf("bus2reg rw::kind: %s, addr: %h, data: %04h, status: %s", rw.kind, rw.addr, rw.data, rw.status.name()), UVM_HIGH)
    end
  endfunction : bus2reg
endclass : drp_adapter
`endif // DRP_ADAPTER__SVH
