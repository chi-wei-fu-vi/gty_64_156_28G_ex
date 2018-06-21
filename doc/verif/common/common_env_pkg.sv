package common_env_pkg;
  `include "uvm_macros.svh"

  import uvm_pkg::*;

  typedef struct {
    bit [7:0] ctrl;
    bit [31:0] datah;
    bit [31:0] datal;
  } xgmii_data_t;
  class readmif #( parameter Channel  = 0 );
    string  s;
    xgmii_data_t xgmii_data;
    int     fh;
    string FileName;
    function new;
      if(Channel == 0) begin
        void'($value$plusargs("MIF_CH0=%s", FileName));
        $display("PCAP: CH0 uses file %s", FileName);
      end else begin
        void'($value$plusargs("MIF_CH1=%s", FileName));
        $display("PCAP: CH1 uses file %s", FileName);
      end
      fh = $fopen(FileName, "r");
      if(!fh) begin
        $display("File %s open failed, no such file!", FileName);
        $finish(2);
      end
    endfunction
      
    task seek_begin;
      void'($fscanf(fh, "%s", s));
      while (s.compare("BEGIN")!=0) begin
        void'($fscanf(fh, "%s", s));
      end
    endtask
    task read(output xgmii_data_t xgmii_data);
      int ctrl;
      longint data;
      void'($fscanf(fh, "%s", s));
      while (s.len()!=19 && s.compare("END;")!=0) begin
        void'($fscanf(fh, "%s", s));
      end
      //$display(s);
      if (s.compare("END;")!=0) begin
        s=s.substr(0,17);
        xgmii_data.ctrl=s.substr(0,1).atohex();
        xgmii_data.datah=s.substr(2,9).atohex();
        xgmii_data.datal=s.substr(10,17).atohex();
      end
      else begin
        xgmii_data.ctrl =8'hff;
        xgmii_data.datah=32'h0;
        xgmii_data.datal=32'h0;
        $fclose(fh); 
      end
    endtask
  endclass : readmif
  virtual class utils;
    static function void cfg_printer (uvm_printer printer);
      //printer.knobs.full_name = 1;               // Show full name of the variable relative to class instance
      //printer.knobs.size = 0;                    // Do not show size column
      printer.knobs.size = 1;                    // Show size column
      //printer.knobs.depth = 1;                   // Only show upto 1 level of the nested hierarchy
      //printer.knobs.reference = 2;               // Do not print object ID handles
      //printer.knobs.type_name = 0;               // Do not show Type column
      printer.knobs.indent = 4;                  // Indent from the left by 4
      printer.knobs.hex_radix = "0x";            // Replace 'h radix by 0x - observe Value field to see this
    endfunction
  endclass : utils

endpackage : common_env_pkg
