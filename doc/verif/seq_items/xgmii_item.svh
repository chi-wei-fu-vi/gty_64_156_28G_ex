
`ifndef XGMII_ITEM__SVH
`define XGMII_ITEM__SVH

class xgmii_item extends uvm_sequence_item;
  common_pkg::uid uid;
  rand bit [ 7: 0]                xgmii_rx_ctrl;
  rand bit [ 63: 0]               xgmii_rx_data;



  `uvm_object_utils_begin(xgmii_item)
    `uvm_field_int( xgmii_rx_ctrl , UVM_DEFAULT | UVM_NOPACK )
    `uvm_field_int( xgmii_rx_data , UVM_DEFAULT | UVM_NOPACK )
  `uvm_object_utils_end


  function new(string name = "xgmii_item");
    super.new(name);
    uid = new("xgmii_item");
  endfunction : new

endclass : xgmii_item
`endif // XGMII_ITEM__SVH
