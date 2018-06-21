`ifndef MM_ITEM__SVH
`define MM_ITEM__SVH
class mm_item extends uvm_reg_item;
  `uvm_object_utils_begin(mm_item)
    `uvm_field_int(value[0], UVM_ALL_ON)
    `uvm_field_int(offset, UVM_ALL_ON)
    `uvm_field_enum(uvm_access_e, kind, UVM_ALL_ON)
  `uvm_object_utils_end
//class mm_item extends uvm_sequence_item;
//
//  typedef enum {MM_READ,MM_WRITE} kind_e;
//  rand logic [15:0] data;
//  rand logic [31:0] addr;
//  rand kind_e       kind;
//
//  `uvm_object_utils_begin(mm_item)
//    `uvm_field_int(data, UVM_ALL_ON)
//    `uvm_field_int(addr, UVM_ALL_ON)
//    `uvm_field_enum(kind_e, kind, UVM_ALL_ON)
//  `uvm_object_utils_end
//  function new(string name="");
//    super.new(name);
//  endfunction : new
//
//  function void do_copy(uvm_object rhs);
//    mm_item rhs_;
//    if (!$cast(rhs_, rhs))
//      `uvm_fatal(get_type_name(), "Cast of rhs object failed")
//    super.do_copy(rhs);
//    data  = rhs_.data;
//    addr  = rhs_.addr;
//    kind  = rhs_.kind;
//  endfunction : do_copy
//
//
//  function bit do_compare(uvm_object rhs, uvm_comparer comparer);
//    bit result;
//    mm_item rhs_;
//    if (!$cast(rhs_, rhs))
//      `uvm_fatal(get_type_name(), "Cast of rhs object failed")
//    result = super.do_compare(rhs, comparer);
//    result &= comparer.compare_field("data",data,rhs_.data, $bits(data));
//    result &= comparer.compare_field("addr",addr,rhs_.addr, $bits(addr));
//    result &= comparer.compare_field("kind",kind,rhs_.kind, $bits(kind));
//  endfunction : do_compare
///*
//  function void do_print(uvm_printer printer);
//    if (printer.knobs.sprint == 0)
//      `uvm_info(get_type_name(), convert2string(), UVM_MEDIUM)
//    else
//      printer.m_string = convert2string();
//  endfunction : do_print
//*/
//
//  function void do_record(uvm_recorder recorder);
//    super.do_record(recorder);
//    `uvm_record_field("data", data)
//    `uvm_record_field("addr", addr)
//    `uvm_record_field("kind", kind)
//  endfunction : do_record
//
//  function void do_pack(uvm_packer packer);
//    super.do_pack(packer);
//    `uvm_pack_int(data)
//    `uvm_pack_int(addr)
//    `uvm_pack_enum(kind)
//  endfunction : do_pack
//
//  function void do_unpack(uvm_packer packer);
//    super.do_unpack(packer);
//    `uvm_unpack_int(data)
//    `uvm_unpack_int(addr)
//    `uvm_unpack_enum(kind, kind_e)
//  endfunction : do_unpack
//  function string convert2string();
//    string s;
//    $sformat(s, "%s\n", super.convert2string());
//    $sformat(s, {"%s\n",
//      "data      = 'h%0h      'd%0d\n",
//      "addr      = 'h%0h      'd%0d\n",
//      "kind      = %s\n"},
//      get_full_name(), data, data, addr, addr, kind.name);
//    return s;
//  endfunction : convert2string
//
  static task do_init(virtual mm_if vif);
    vif.master_cb.drp_addr <= 0;
    vif.master_cb.drp_en <= 0;
    vif.master_cb.drp_we <= 0;
    vif.master_cb.drp_di <= 0;
  endtask

  static task do_config(virtual mm_if vif,mm_item req);
    vif.master_cb.drp_addr <= req.offset;
    @(vif.master_cb);
    vif.master_cb.drp_en <= 1;
    if (req.kind==UVM_WRITE) begin
      vif.master_cb.drp_we <= 1;
    end
    @(vif.master_cb);
    vif.master_cb.drp_en <= 0;
    vif.master_cb.drp_we <= 0;
  endtask

  static task do_mon(virtual mm_if vif,mm_item item);
  endtask

endclass : mm_item
`endif // MM_ITEM__SVH
