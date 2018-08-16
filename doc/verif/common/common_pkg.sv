package common_pkg;
 `include "uvm_macros.svh"
 import uvm_pkg::*;



 
 //typedef class dal_record;
 
 //------------------------------------------------------------------------------
 // Defines package-scoped types and functions.
 //------------------------------------------------------------------------------

  typedef bit [63:0] bit64_t;

  typedef byte unsigned alert_type_t;
  typedef bit [55:0] timestamp_t;
  typedef bit [15:0] vlan_t;
  typedef bit [47:0] mac_addr_t;
  typedef bit [31:0] ip_addr_t;
  typedef bit [15:0] tcp_port_t;
  typedef bit [31:0] life_time_t;
  typedef bit [95:0] flow_id_t;
  typedef bit [15:0] flow_hash_t;
  typedef bit [2:0]  dpl_id_t;
  typedef bit [31:0] seq_num_t; // wraps around after FFFF_FFFF
  typedef bit [15:0] tcp_win_size_t;
  typedef int        unsigned xid_t;

  typedef bit [ 7:0] ip_ttl_t;
  typedef bit [15:0] complete_duplicate_t;

  typedef bit [4:0]  link_ch_id_t; // the bit width must be (link_id_t + ch_id_t)
  typedef bit [3:0]  link_id_t;    // supports link_id 0 to 15
  typedef bit        ch_id_t;

  typedef bit [18:0] link_flow_hash_t; // link_id_t + flow_hash_t

  localparam IP_CSEQ_PROTO              = 64'b0000000000000000000000000000000000000000000000000000000000000001;
  localparam TCP_CSEQ_PROTO             = 64'b0000000000000000000000000000000000000000000000000000000000000010;
  localparam NETBIOS_CSEQ_PROTO         = 64'b0000000000000000000000000000000000000000000000000000000000000100;
  localparam SMB2_CSEQ_PROTO            = 64'b0000000000000000000000000000000000000000000000000000000000001000;
  localparam IPV6_CSEQ_PROTO            = 64'b0000000000000000000000000000000000000000000000000000000000010000;
  localparam UDP_CSEQ_PROTO             = 64'b0000000000000000000000000000000000000000000000000000000000100000;

//  typedef enum bit[63:0] {
//    IP_CSEQ_PROTO              = 64'b0000000000000000000000000000000000000000000000000000000000000001,
//    TCP_CSEQ_PROTO             = 64'b0000000000000000000000000000000000000000000000000000000000000010,
//    NETBIOS_CSEQ_PROTO         = 64'b0000000000000000000000000000000000000000000000000000000000000100,
//    SMB2_CSEQ_PROTO            = 64'b0000000000000000000000000000000000000000000000000000000000001000,
//    IPV6_CSEQ_PROTO            = 64'b0000000000000000000000000000000000000000000000000000000000010000,
//    UDP_CSEQ_PROTO             = 64'b0000000000000000000000000000000000000000000000000000000000100000
//  } cseq_proto_e;

  typedef enum bit[63:0] {
    SMB2_CSEQ_PACKET           = 64'b0000000000000000000000000000000000000000000000000000000000001111,
    SMB2_IPV6_CSEQ_PACKET      = 64'b0000000000000000000000000000000000000000000000000000000000011110,
    SMB2_UDP_CSEQ_PACKET       = 64'b0000000000000000000000000000000000000000000000000000000000101101
  } cseq_packet_e;


  // SMB2
  typedef enum bit[31:0] {
    OWNER_SECURITY_INFORMATION     = 32'h00000001,
    GROUP_SECURITY_INFORMATION     = 32'h00000002,
    DACL_SECURITY_INFORMATION      = 32'h00000004,
    SACL_SECURITY_INFORMATION      = 32'h00000008,
    LABEL_SECURITY_INFORMATION     = 32'h00000010,
    ATTRIBUTE_SECURITY_INFORMATION = 32'h00000020,
    SCOPE_SECURITY_INFORMATION     = 32'h00000040,
    BACKUP_SECURITY_INFORMATION    = 32'h00010000
  } AdditionalInformation_e;

  typedef enum bit[31:0] {
    FILE_SUPERSEDE                 = 32'h00000000,
    FILE_OPEN                      = 32'h00000001,
    FILE_CREATE                    = 32'h00000002,
    FILE_OPEN_IF                   = 32'h00000003,
    FILE_OVERWRITE                 = 32'h00000004,
    FILE_OVERWRITE_IF              = 32'h00000005
  } CreateDisposition_e;

  typedef enum bit[7:0] {
    SMB2_OPLOCK_LEVEL_NONE         = 8'h00,
    SMB2_OPLOCK_LEVEL_II           = 8'h01,
    SMB2_OPLOCK_LEVEL_EXCLUSIVE    = 8'h08,
    SMB2_OPLOCK_LEVEL_BATCH        = 8'h09,
    SMB2_OPLOCK_LEVEL_LEASE        = 8'hFF,
    SMB2_OPLOCK_LEVEL_NOCHANGE     = 8'h99
  } SMB2_OPLOCK_LEVEL_e;

  typedef enum bit[15:0] {
    SMB2_NEGOTIATE                 = 16'h0000,
    SMB2_SESSION_SETUP             = 16'h0001,
    SMB2_LOGOFF                    = 16'h0002,
    SMB2_TREE_CONNECT              = 16'h0003,
    SMB2_TREE_DISCONNECT           = 16'h0004,
    SMB2_CREATE                    = 16'h0005,
    SMB2_CLOSE                     = 16'h0006,
    SMB2_FLUSH                     = 16'h0007,
    SMB2_READ                      = 16'h0008,
    SMB2_WRITE                     = 16'h0009,
    SMB2_LOCK                      = 16'h000A,
    SMB2_IOCTL                     = 16'h000B,
    SMB2_CANCEL                    = 16'h000C,
    SMB2_ECHO                      = 16'h000D,
    SMB2_QUERY_DIRECTORY           = 16'h000E,
    SMB2_CHANGE_NOTIFY             = 16'h000F,
    SMB2_QUERY_INFO                = 16'h0010,
    SMB2_SET_INFO                  = 16'h0011,
    SMB2_OPLOCK_BREAK              = 16'h0012
  } SMB2_COM_e;

  typedef enum bit[31:0] {
    FSCTL_DFS_GET_REFERRALS        = 32'h00060194,
    FSCTL_PIPE_PEEK                = 32'h0011400C,
    FSCTL_PIPE_WAIT                = 32'h00110018,
    FSCTL_PIPE_TRANSCEIVE          = 32'h0011C017,
    FSCTL_SRV_COPYCHUNK            = 32'h001440F2,
    FSCTL_SRV_ENUMERATE_SNAPSHOTS  = 32'h00144064,
    FSCTL_SRV_REQUEST_RESUME_KEY   = 32'h00140078,
    FSCTL_SRV_READ_HASH            = 32'h001441bb,
    FSCTL_SRV_COPYCHUNK_WRITE      = 32'h001480F2,
    FSCTL_LMR_REQUEST_RESILIENCY   = 32'h001401D4,
    FSCTL_QUERY_NETWORK_INTERFACE_INFO = 32'h001401FC,
    FSCTL_SET_REPARSE_POINT        = 32'h000980A4,
    FSCTL_DFS_GET_REFERRALS_EX     = 32'h000601B0,
    FSCTL_FILE_LEVEL_TRIM          = 32'h00098208,
    FSCTL_VALIDATE_NEGOTIATE_INFO  = 32'h00140204
  } SMB2_IOCTL_e;

  typedef enum bit[15:0] {
    SMB20_PROT_ID                  = 16'h0202,
    SMB21_PROT_ID                  = 16'h0210,
    SMB30_PROT_ID                  = 16'h0300,
    SMB302_PROT_ID                 = 16'h0302,
    SMB311_PROT_ID                 = 16'h0311,
    SMBGE21_WILD                   = 16'h02FF
  } DialectRevision_e;

  typedef enum bit[31:0] {
    FILE_SUPERSEDED                = 32'h00000000,
    FILE_OPENED                    = 32'h00000001,
    FILE_CREATED                   = 32'h00000002,
    FILE_OVERWRITTEN               = 32'h00000003
  } CreateAction_e;

  typedef enum bit[7:0] {
    TYPE_DISK                      = 8'h01,
    TYPE_PIPE                      = 8'h02,
    TYPE_PRINT                     = 8'h03
  } SMB2_SHARE_TYPE_e;

  typedef enum bit[31:0] {
    IL_ANONYMOUS                   = 32'h00000000,
    IL_IDENTIFICATION              = 32'h00000001,
    IL_IMPERSONATION               = 32'h00000002,
    IL_DELEGATE                    = 32'h00000003
  } IL_e;

  typedef enum bit[7:0] {
    SMB2_LEASE_NONE                = 8'h00,
    SMB2_LEASE_READ_CACHING        = 8'h01,
    SMB2_LEASE_HANDLE_CACHING      = 8'h02,
    SMB2_LEASE_WRITE_CACHING       = 8'h04
  } SMB2_LEASE_e;

  typedef enum bit[7:0] {
    SMB2_O_INFO_FILE               = 8'h01,
    SMB2_O_INFO_FILESYSTEM         = 8'h02,
    SMB2_O_INFO_SECURITY           = 8'h03,
    SMB2_O_INFO_QUOTA              = 8'h04
  } SMB2_O_INFO_e;

  typedef enum bit[31:0] {
    FILE_NOTIFY_CHANGE_FILE_NAME   = 32'h00000001,
    FILE_NOTIFY_CHANGE_DIR_NAME    = 32'h00000002,
    FILE_NOTIFY_CHANGE_ATTRIBUTES  = 32'h00000004,
    FILE_NOTIFY_CHANGE_SIZE        = 32'h00000008,
    FILE_NOTIFY_CHANGE_LAST_WRITE  = 32'h00000010,
    FILE_NOTIFY_CHANGE_LAST_ACCESS = 32'h00000020,
    FILE_NOTIFY_CHANGE_CREATION    = 32'h00000040,
    FILE_NOTIFY_CHANGE_EA          = 32'h00000080,
    FILE_NOTIFY_CHANGE_SECURITY    = 32'h00000100,
    FILE_NOTIFY_CHANGE_STREAM_NAME = 32'h00000200,
    FILE_NOTIFY_CHANGE_STREAM_SIZE = 32'h00000400,
    FILE_NOTIFY_CHANGE_STREAM_WRITE = 32'h00000800
  } SMB2_COMPLETIONFILTER_e;

  typedef enum int {
    ACCEPT_COMPLETED               = 0,
    ACCEPT_INCOMPLETE              = 1,
    REJECT                         = 2,
    REQUEST_MIC                    = 3
  } GSS_STATUS_e;

  typedef enum bit[15:0] {
    END                            = 16'h0000,
    NB_COMPUTER_NAME               = 16'h0001,
    NB_DOMAIN_NAME                 = 16'h0002,
    DNS_COMPUTER_NAME              = 16'h0003,
    DNS_DOMAIN_NAME                = 16'h0004,
    DNS_TREE_NAME                  = 16'h0005,
    FLAGS                          = 16'h0006,
    TIMESTAMP                      = 16'h0007,
    RESTRICTIONS                   = 16'h0008,
    TARGET_NAME                    = 16'h0009,
    CHANNEL_BINDINGS               = 16'h000a
  } NTLM_TARGET_INFO_e;


  // PCS sequencer priorities
  typedef enum int {
    IDLE_PRI  = 100,
    ETHER_PRI = 200,
    NFS3_PRI  = 300,
    SMB2_PRI  = 400
  } priority_e;


  typedef struct { 
     bit [31:0] addr;
     bit [10:0] hdr_len;
     bit [31:0] pyld_len_bytes;
  } tlp_s;

  // end of env_defines.svh

  typedef enum bit[15:0] { ETYPE_IPV4           = 16'h0800,
                           ETYPE_VLAN           = 16'h8100,
                           ETYPE_IPV6           = 16'h86dd,
                           ETYPE_SLOW_PROTOCOLS = 16'h8809,
                           ETYPE_STAG           = 16'h88a8,
                           ETYPE_QINQ1          = 16'h9100,
                           ETYPE_QINQ2          = 16'h9200 } etype_e;

  typedef enum { UNKNOWN_PACKET_KIND,
                      NO_PACKET_KIND, // for CONN and INTV
                    CALL_PACKET_KIND,
                   REPLY_PACKET_KIND,
                 PAYLOAD_PACKET_KIND,
            OUT_OF_ORDER_PACKET_KIND,
            PRESUMED_RPC_PACKET_KIND,
                 GARBAGE_PACKET_KIND,
                     SYN_PACKET_KIND,
                     FIN_PACKET_KIND,
                     RST_PACKET_KIND,
                     ACK_PACKET_KIND,
                   JUMBO_PACKET_KIND,
                 TIMEOUT_PACKET_KIND,
                 REQUEST_PACKET_KIND, // SMB
                RESPONSE_PACKET_KIND,
                     SMB_PACKET_KIND } packet_kind_e;

  typedef enum bit[3:0] { 
                          ZERO_PAYLOAD_DAL_TYPE = 4'd0,
                          MULTIPLE_MSG_DAL_TYPE = 4'd3,
                       REASSEMBLED_TCP_DAL_TYPE = 4'd4,
                            INTV_STATS_DAL_TYPE = 4'd8,
                            CONN_STATS_DAL_TYPE = 4'd9,
                          RAW_ETHERNET_DAL_TYPE = 4'd10,
                             TCP_ALERT_DAL_TYPE = 4'd11 } dal_type_e;

  // Descriptor Field Names

  typedef enum byte { PKT_TYPE_DESC_FIELD,
                            SN_DESC_FIELD,
                       TCP_LEN_DESC_FIELD,
                       DAL_LEN_DESC_FIELD } desc_field_e;

  // DAL Field Names

  typedef enum byte { TIMESTAMP_DAL_FIELD, // common
                           STAG_DAL_FIELD,
                           VLAN_DAL_FIELD,
                         DST_IP_DAL_FIELD,
                         SRC_IP_DAL_FIELD,
                       DST_PORT_DAL_FIELD,
                       SRC_PORT_DAL_FIELD,
                        DST_MAC_DAL_FIELD,
                        SRC_MAC_DAL_FIELD,

                   ACK_LIMIT_SN_DAL_FIELD, // Message DAL
                      
                         ACK_SN_DAL_FIELD, // TCP Alert DAL
                   TCP_WIN_SIZE_DAL_FIELD,

                         REASON_DAL_FIELD, // CONN DAL
                      LIFE_TIME_DAL_FIELD,

                     PCIE_TX_BW_DAL_FIELD, // INTV DAL
              PCIE_NREADY_TICKS_DAL_FIELD,
           PCIE_NP_CREDIT_TICKS_DAL_FIELD,
            PCIE_P_CREDIT_TICKS_DAL_FIELD,
                  DPL_FREE_DESC_DAL_FIELD,
          DESC_RD_PENDING_TICKS_DAL_FIELD,
          DESC_WR_PENDING_TICKS_DAL_FIELD,
                      MAX_FLOWS_DAL_FIELD,
       LATEST_ARRIVAL_TIMESTAMP_DAL_FIELD,

                         LOSYNC_DAL_FIELD,
                          LOSIG_DAL_FIELD,
                    XGMII_ERROR_DAL_FIELD,
                        LINK_UP_DAL_FIELD,
                           RUNT_DAL_FIELD,
                      CRC_ERROR_DAL_FIELD,
                       OVERSIZE_DAL_FIELD,
                         IP_TTL_DAL_FIELD,
                   MAX_MSG_HDRS_DAL_FIELD,
             COMPLETE_DUPLICATE_DAL_FIELD,
               TCP_OUT_OF_ORDER_DAL_FIELD,
                        TCP_SYN_DAL_FIELD,
               RPC_TCP_MISALIGN_DAL_FIELD,
                         NFS_V4_DAL_FIELD,
                        UDP_NFS_DAL_FIELD,
               IP_FRAGMENTATION_DAL_FIELD,
                     IP_VERSION_DAL_FIELD,
                   TCP_CHECKSUM_DAL_FIELD,
                    IP_CHECKSUM_DAL_FIELD,
                     NON_TCP_IP_DAL_FIELD,
                    DAL_PACKETS_DAL_FIELD,
                         DAL_BW_DAL_FIELD,
                   WIRE_PACKETS_DAL_FIELD,
                        WIRE_BW_DAL_FIELD,
                   BUF_OVERFLOW_DAL_FIELD,
                       CAM_FULL_DAL_FIELD,
                       CAM_MISS_DAL_FIELD,
                            PFC_DAL_FIELD,
                          PAUSE_DAL_FIELD,
                    LINK_STATUS_DAL_FIELD,
                          FLAGS_DAL_FIELD,
                     VENDOR_OUI_DAL_FIELD,
                            SFP_DAL_FIELD,
                         CAM_WQ_DAL_FIELD,
                        TCP_FIN_DAL_FIELD,
                    TEMPERATURE_DAL_FIELD,
                       RX_POWER_DAL_FIELD,
                       TX_POWER_DAL_FIELD,
                        WARNING_DAL_FIELD,
                          ALARM_DAL_FIELD,
             VENDOR_PART_NUMBER_DAL_FIELD,
           VENDOR_SERIAL_NUMBER_DAL_FIELD,
                        NON_RPC_DAL_FIELD,
                 SMALL_MULTIPLE_DAL_FIELD,
                 HEADER_HUNTING_DAL_FIELD,
              PARTIAL_DUPLICATE_DAL_FIELD,
                        TCP_ACK_DAL_FIELD } dal_field_e;

  // TCP Up Reason

  typedef enum byte { TCP_SYN_TRANSMITTED = 0,
                   NO_TCP_SYN_TRANSMITTED = 1,
                   UNKNOWN_TCP_UP_REASON  = 2 } tcp_up_reason_e;

  // TCP Close Reason

  typedef enum byte { UNKNOWN_TCP_CLOSE_REASON = 0,
                      TCP_NORMAL_CLOSE         = 1,
                      TCP_CLOSE_BY_RESET       = 2,
                      TCP_CLOSE_BY_TIMEOUT     = 4 } tcp_close_reason_e;

  // Compare Result

  typedef enum byte { MATCHED_RESULT = 0,
                   MISMATCHED_RESULT = 1,
                    TOLERATED_RESULT = 2 } compare_result_e;

//   const int NUM_CH   = 2;
//   const int NUM_LAGS = 2;

  // DAL Header Length

  const int       MSG_DAL_SHORT_HEADER_LEN =  16;
  const int        MSG_DAL_LONG_HEADER_LEN =  48;
  const int TCP_ALERT_DAL_SHORT_HEADER_LEN =  16;
  const int  TCP_ALERT_DAL_LONG_HEADER_LEN =  48;
  const int      CONN_STATS_DAL_HEADER_LEN =  80;
  const int      INTV_STATS_DAL_HEADER_LEN = 288;
  const int         RAW_ETH_DAL_HEADER_LEN =  16;

  // DAL Length

  const int TCP_ALERT_SHORT_DAL_LEN = TCP_ALERT_DAL_SHORT_HEADER_LEN;
  const int  TCP_ALERT_LONG_DAL_LEN =  TCP_ALERT_DAL_LONG_HEADER_LEN;
  const int      CONN_STATS_DAL_LEN =      CONN_STATS_DAL_HEADER_LEN;
  const int      INTV_STATS_DAL_LEN =      INTV_STATS_DAL_HEADER_LEN;

  // TCP Alert Kind

  const byte unsigned            NO_TCP_ALERT = 8'b0000_0000;
  const byte unsigned TCP_WINDOW_UPDATE_ALERT = 8'b0000_0001;
  const byte unsigned       OUT_OF_SYNC_ALERT = 8'b0000_0010;
  const byte unsigned TCP_COMPLETE_DUPL_ALERT = 8'b0000_0100;
  const byte unsigned  TCP_PARTIAL_DUPL_ALERT = 8'b0000_1000;
  const byte unsigned  TCP_OUT_OF_ORDER_ALERT = 8'b0001_0000;
  const byte unsigned         TCP_RESET_ALERT = 8'b0010_0000;


  typedef enum bit[3:0] { TCP_CLOSED,
                          TCP_LISTEN,
                          TCP_SYN_SENT,
                          TCP_PRE_SYN_RCVD,
                          TCP_SYN_RCVD,
                          TCP_PRE_ESTABLISHED,
                          TCP_ESTABLISHED,
                          TCP_PRE_CLOSE_WAIT,
                          TCP_CLOSE_WAIT,
                          TCP_LAST_ACK,
                          TCP_FIN_WAIT_1,
                          TCP_FIN_WAIT_2,
                          TCP_PRE_CLOSING,
                          TCP_CLOSING,
                          TCP_PRE_TIME_WAIT,
                          TCP_TIME_WAIT } tcp_state_e;

  typedef enum { WIN_UNKNOWN,
                 WIN_OPENED,
                 WIN_CLOSING,
                 WIN_CLOSED,
                 WIN_OPENING,
                 WIN_NOT_UPDATED,
                 WIN_UPDATED } win_state_e;

  typedef enum bit[1:0] { UNKNOWN_ORDER_STATE,
                               IN_ORDER_STATE,
                           OUT_OF_ORDER_STATE,
                     IN_OR_OUT_OF_ORDER_STATE } order_state_e;

  typedef enum bit { SEARCHING_HEADER_STATE,
                        LOCKED_HEADER_STATE } header_state_e; // used initially and in out-of-order state

  typedef enum bit { FULL_DATA_STATE,
                    TRUNCATION_STATE } truncation_state_e;

  typedef enum bit { HUNTING_RPC_STATE,
                      LOCKED_RPC_STATE } rpc_state_e;

  // MAC errors; some of them are not MAC errors strictly speaking...

  typedef bit [17:0] mac_error_t; // one-hot

  const mac_error_t               MAC_NO_ERROR = 18'b00_0000_0000_0000_0000;
  const mac_error_t      MAC_IP_CHECKSUM_ERROR = 18'b00_0000_0000_0000_0001;
  const mac_error_t     MAC_TCP_CHECKSUM_ERROR = 18'b00_0000_0000_0000_0010;
  const mac_error_t     MAC_IP_MORE_FRAG_ERROR = 18'b00_0000_0000_0000_0100;
  const mac_error_t MAC_CH_FIFO_OVERFLOW_ERROR = 18'b00_0000_0000_0000_1000;
  const mac_error_t  MAC_IP_TOTAL_LENGTH_ERROR = 18'b00_0000_0000_0001_0000;
  const mac_error_t     MAC_CRC_MISMATCH_ERROR = 18'b00_0000_0000_0010_0000;
  const mac_error_t MAC_OVERSIZED_PACKET_ERROR = 18'b00_0000_0000_0100_0000;
  const mac_error_t MAC_INSUFFICIENT_IPG_ERROR = 18'b00_0000_0000_1000_0000;
  const mac_error_t    MAC_PREV_BAD_TERM_ERROR = 18'b00_0000_0001_0000_0000; // prev. packet had a bad termination
  const mac_error_t            MAC_XGMII_ERROR = 18'b00_0000_0010_0000_0000;
  const mac_error_t       MAC_IP_VERSION_ERROR = 18'b00_0000_0100_0000_0000;
  const mac_error_t             MAC_RUNT_ERROR = 18'b00_0000_1000_0000_0000;
  const mac_error_t        MAC_LINK_DOWN_ERROR = 18'b00_0001_0000_0000_0000;
  const mac_error_t        MAC_LINK_TRANSITION = 18'b00_0010_0000_0000_0000;
  const mac_error_t         MAC_ERROR_INJECTED = 18'b00_0100_0000_0000_0000;
  const mac_error_t    MAC_BUF_FULL_TRANSITION = 18'b00_1000_0000_0000_0000;
  const mac_error_t         MAC_BUF_FULL_ERROR = 18'b01_0000_0000_0000_0000;
  const mac_error_t   MAC_BUF_AVAIL_TRANSITION = 18'b10_0000_0000_0000_0000;

  typedef bit [5:0]  head_t; // one-hot

  const head_t        NO_HEAD = 6'b00_0000;
  const head_t      LEAF_HEAD = 6'b00_0001;
// const head_t FIRST_DAL_HEAD = 6'b00_0010; // obsolete
  const head_t     ERROR_HEAD = 6'b00_0100;
// const head_t   CUTTAGE_HEAD = 6'b00_1000; // obsolete; this node can become root
  const head_t        BP_HEAD = 6'b01_0000; // back-pressure head; a.k.a "child replace head"
  const head_t     RESET_HEAD = 6'b10_0000; // a.k.a. "persistent head"

  typedef struct {
     bit [ 7:0] ptype;
     bit [ 7:0] link_id;
     bit [15:0] flow_hash;
     bit [31:0] buffer_ptr;
     bit [31:0] tcp_seqnum;
     bit [15:0] tcp_len;
     bit [15:0] dal_len;
  } dpl_desc_s;

  typedef enum { NOT_UPDATED,
                 NO_MORE_UPDATES,
                 UPDATED_DAL_ROUTE,
                 UPDATED_WITH_ERROR } dal_route_update_status_e;

  // DUT

  typedef enum bit[3:0] { MONITOR_MODE_OFF = 0,
                    INTV_ONLY_MONITOR_MODE = 1,
                       NORMAL_MONITOR_MODE = 2 } monitor_mode_e;

  //------------------------------------------------------------------------------
  // XGMII
  //------------------------------------------------------------------------------

  typedef enum       bit[8:0] { XGMII_K_START    = 9'h1FB,
                                XGMII_K_TERM     = 9'h1FD,
                                XGMII_K_IDLE     = 9'h107,
                                XGMII_K_SEQUENCE = 9'h19C,
                                XGMII_K_ERROR    = 9'h1FE,
                                XGMII_D_PREAMBLE = 9'h055,
                                XGMII_D_SFD      = 9'h0D5 } xgmii_e;

  typedef enum       { XGMII_IDLE_STATE,
                       XGMII_START_STATE,
                       XGMII_PREAMBLE_STATE1,
                       XGMII_PREAMBLE_STATE2,
                       XGMII_PREAMBLE_STATE3,
                       XGMII_PREAMBLE_STATE4,
                       XGMII_PREAMBLE_STATE5,
                       XGMII_PREAMBLE_STATE6,
                       XGMII_SFD_DATA_STATE } xgmii_state_e;

  //------------------------------------------------------------------------------
  // Service Name and Transport Protocol Port Number Registry
  //------------------------------------------------------------------------------

  const tcp_port_t SUNRPC_PORT = 16'h006f;
  const tcp_port_t  MS_DS_PORT = 16'h01bd;
  const tcp_port_t    NFS_PORT = 16'h0801;

  //------------------------------------------------------------------------------
  // IEEE Std 802.3-2012 57A.3 Addressing
  //------------------------------------------------------------------------------

  const mac_addr_t SLOW_PROTOCOLS_MULTICAST_ADDRESS = 48'h01_80_C2_00_00_02;

  //------------------------------------------------------------------------------
  // RFC 5531 7. Authentication
  //------------------------------------------------------------------------------

  typedef enum int unsigned {
     AUTH_NONE  = 0,
     AUTH_SYS   = 1,
     AUTH_SHORT = 2 } auth_flavor_e;

  //------------------------------------------------------------------------------
  // RFC 5531 9. The RPC Message Protocol
  //------------------------------------------------------------------------------

  typedef enum       int unsigned { 
     RPC_TYPE_CALL  = 0,
     RPC_TYPE_REPLY = 1 } msg_type_e;

  typedef enum       int unsigned { 
     RPC_MSG_ACCEPTED = 0,
     RPC_MSG_DENIED   = 1 } reply_stat_e;

  typedef enum       int unsigned { 
     RPC_SUCCESS       = 0,
     RPC_PROG_UNAVAIL  = 1,
     RPC_PROG_MISMATCH = 2,
     RPC_PROC_UNAVAIL  = 3,
     RPC_GARBAGE_ARGS  = 4,
     RPC_SYSTEM_ERR    = 5 } accept_stat_e;

  typedef enum       int unsigned { // RFC 5531
     RPC_PROG_UNKNOWN      = 32'd000000,
     RPC_PROG_PORTMAP      = 32'd100000,
     RPC_PROG_RSTATPROG    = 32'd100001,
     RPC_PROG_RUSERSPROG   = 32'd100002,
     RPC_PROG_NFS          = 32'd100003,
     RPC_PROG_YPSERV       = 32'd100004,
     RPC_PROG_MOUNT        = 32'd100005,
     RPC_PROG_DBX          = 32'd100006,
     RPC_PROG_YPBIND       = 32'd100007,
     RPC_PROG_WALL         = 32'd100008,
     RPC_PROG_YPPASSWDD    = 32'd100009,
     RPC_PROG_ETHERSTAT    = 32'd100010,
     RPC_PROG_RQUOTA       = 32'd100011,
     RPC_PROG_SPRAY        = 32'd100012,
     RPC_PROG_IBM3270      = 32'd100013,
     RPC_PROG_IBMRJE       = 32'd100014,
     RPC_PROG_SELNSVC      = 32'd100015,
     RPC_PROG_RDATABASE    = 32'd100016,
     RPC_PROG_REXEC        = 32'd100017,
     RPC_PROG_ALICE        = 32'd100018,
     RPC_PROG_SCHED        = 32'd100019,
     RPC_PROG_KLM          = 32'd100020,
     RPC_PROG_NLM          = 32'd100021,
     RPC_PROG_NSM          = 32'd100024,
     RPC_PROG_SELNLIB      = 32'd100025,
     RPC_PROG_BOOTPARAM    = 32'd100026,
     RPC_PROG_MAZE         = 32'd100027,
     RPC_PROG_YPUPDATE     = 32'd100028,
     RPC_PROG_KEYSERVE     = 32'd100029,
     RPC_PROG_SECURECMD    = 32'd100030,
     RPC_PROG_NETFWDI      = 32'd100031,
     RPC_PROG_NETFWDT      = 32'd100032,
     RPC_PROG_SUNLINKMAP   = 32'd100033,
     RPC_PROG_NETMON       = 32'd100034,
     RPC_PROG_DBASE        = 32'd100035,
     RPC_PROG_PWDAUTH      = 32'd100036,
     RPC_PROG_TFS          = 32'd100037,
     RPC_PROG_NSE          = 32'd100038,
     RPC_PROG_NSE_ACTIVATE = 32'd100039,
     RPC_PROG_SUNVIEW_HELP = 32'd100040,
     RPC_PROG_NFSACL       = 32'd100227 } rpc_prog_e;

  typedef enum       int unsigned { // RFC 1813
     NFS_PROC_NULL        = 0,
     NFS_PROC_GETATTR     = 1,
     NFS_PROC_SETATTR     = 2,
     NFS_PROC_LOOKUP      = 3,
     NFS_PROC_ACCESS      = 4,
     NFS_PROC_READLINK    = 5,
     NFS_PROC_READ        = 6,
     NFS_PROC_WRITE       = 7,
     NFS_PROC_CREATE      = 8,
     NFS_PROC_MKDIR       = 9,
     NFS_PROC_SYMLINK     = 10,
     NFS_PROC_MKNOD       = 11,
     NFS_PROC_REMOVE      = 12,
     NFS_PROC_RMDIR       = 13,
     NFS_PROC_RENAME      = 14,
     NFS_PROC_LINK        = 15,
     NFS_PROC_READDIR     = 16,
     NFS_PROC_READDIRPLUS = 17,
     NFS_PROC_FSSTAT      = 18,
     NFS_PROC_FSINFO      = 19,
     NFS_PROC_PATHCONF    = 20,
     NFS_PROC_COMMIT      = 21 } rpc_proc_e;

  //------------------------------------------------------------------------------
  // RFC 4506 4.4 Boolean
  //------------------------------------------------------------------------------

  typedef enum       int { FALSE = 0, TRUE = 1 } bool_e;

  //------------------------------------------------------------------------------
  // RFC 1813 2.5 Basic Data Types
  //------------------------------------------------------------------------------

  typedef enum       int { NFS3_OK             = 0,
                           NFS3ERR_PERM        = 1,
                           NFS3ERR_NOENT       = 2,
                           NFS3ERR_IO          = 5,
                           NFS3ERR_NXIO        = 6,
                           NFS3ERR_ACCES       = 13,
                           NFS3ERR_EXIST       = 17,
                           NFS3ERR_XDEV        = 18,
                           NFS3ERR_NODEV       = 19,
                           NFS3ERR_NOTDIR      = 20,
                           NFS3ERR_ISDIR       = 21,
                           NFS3ERR_INVAL       = 22,
                           NFS3ERR_FBIG        = 27,
                           NFS3ERR_NOSPC       = 28,
                           NFS3ERR_ROFS        = 30,
                           NFS3ERR_MLINK       = 31,
                           NFS3ERR_NAMETOOLONG = 63,
                           NFS3ERR_NOTEMPTY    = 66,
                           NFS3ERR_DQUOT       = 69,
                           NFS3ERR_STALE       = 70,
                           NFS3ERR_REMOTE      = 71,
                           NFS3ERR_BADHANDLE   = 10001,
                           NFS3ERR_NOT_SYNC    = 10002,
                           NFS3ERR_BAD_COOKIE  = 10003,
                           NFS3ERR_NOTSUPP     = 10004,
                           NFS3ERR_TOOSMALL    = 10005,
                           NFS3ERR_SERVERFAULT = 10006,
                           NFS3ERR_BADTYPE     = 10007,
                           NFS3ERR_JUKEBOX     = 10008 } nfsstat3_e;

  //------------------------------------------------------------------------------
  // SMB2
  //------------------------------------------------------------------------------


  const int unsigned SMB2_FLAGS_SERVER_TO_REDIR    = 32'h00000001;
  const int unsigned SMB2_FLAGS_ASYNC_COMMAND      = 32'h00000002;
  const int unsigned SMB2_FLAGS_RELATED_OPERATIONS = 32'h00000004;
  const int unsigned SMB2_FLAGS_SIGNED             = 32'h00000008;
  const int unsigned SMB2_FLAGS_PRIORITY_MASK      = 32'h00000070;
  const int unsigned SMB2_FLAGS_DFS_OPERATIONS     = 32'h10000000;
  const int unsigned SMB2_FLAGS_REPLAY_OPERATION   = 32'h20000000;

  //------------------------------------------------------------------------------
  // Function: set_report_object_verbosity
  //------------------------------------------------------------------------------
   function string rjust( string s, int  width, byte fill_char = " ", bit  trim_left = 0 );
      automatic int slen = s.len();
      automatic int padding;

      if ( width < slen & trim_left == 0 ) width = slen; // extend the width
      padding = width - slen;

      if ( padding >= 0 ) begin
        rjust = s;
        repeat( padding ) rjust = { string'( fill_char ), rjust };
      end
      else
        foreach (s[i]) begin
          if (i < width)
            rjust = {rjust,s[i]};
        end
   endfunction: rjust

  function void set_report_object_verbosity( uvm_report_object obj, int verbosity );
     case ( verbosity )                                  // uvm_verbosity
       0: obj.set_report_verbosity_level( UVM_NONE   ); //   0
       1: obj.set_report_verbosity_level( UVM_LOW    ); // 100
       2: obj.set_report_verbosity_level( UVM_MEDIUM ); // 200
       3: obj.set_report_verbosity_level( UVM_HIGH   ); // 300
       4: obj.set_report_verbosity_level( UVM_FULL   ); // 400
       5: obj.set_report_verbosity_level( UVM_DEBUG  ); // 500
     endcase
  endfunction: set_report_object_verbosity

  //------------------------------------------------------------------------------
  // Function: get_int_cfg
  //   Convenience function to get an int from the uvm_config_db.
  //------------------------------------------------------------------------------

  function int get_int_cfg( uvm_component comp, string field_name );
     if ( ! uvm_config_db#( int )::get( comp, "", field_name, get_int_cfg ) ) begin
        `uvm_fatal( "get_int_cfg", { "Cannot find ", field_name } )
     end
  endfunction: get_int_cfg

  //------------------------------------------------------------------------------
  // Function: get_sys_io
  //   Convenience function to get the sys_io from the uvm_config_db.
  //------------------------------------------------------------------------------

  function virtual sys_io get_sys_io( uvm_component comp, string field_name = "sys_io" );
     if ( ! uvm_config_db#( virtual sys_io )::get( comp, "", field_name, get_sys_io ) ) begin
        `uvm_fatal( "get_sys_io", { "Cannot find ", field_name } )
     end
  endfunction: get_sys_io

  //------------------------------------------------------------------------------
  // Function: subtract
  //   Subtract sn2 from sn1 ( sn1 - sn2 ).
  //------------------------------------------------------------------------------

  function int subtract( seq_num_t sn1, seq_num_t sn2 );
     if ( sn1[31] == 0 && sn2[31] == 1 ) // wrapped around
       subtract = sn1 + ( 32'hffff_ffff - sn2 + 1 );
     else
       subtract = sn1 - sn2;
  endfunction: subtract

  //---------------------------------------------------------------------------
  // Function: roundup_time
  //---------------------------------------------------------------------------

  function time roundup_time( time t1, time t2 );
     return t1 / t2 + ( t1 % t2 ? 1 : 0 );
  endfunction: roundup_time

  //---------------------------------------------------------------------------
  // Function: roundup_int
  //---------------------------------------------------------------------------

  function int roundup_int( int val, int num_truncate );
     bit [31:0] mask;

     repeat ( num_truncate ) mask = { mask, 1'b1 };
     
     return ( val >> num_truncate ) + ( ( val & mask ) ? 1 : 0 );
  endfunction: roundup_int

  //---------------------------------------------------------------------------
  // Function: lowest_bit_1_loc
  //   Returns the lowest location of bits whose value is 1. If no
  //   bit is 1, returns -1.
  //---------------------------------------------------------------------------

  function int lowest_bit_1_loc( int unsigned bits );
     for ( int i = 0; i < 32; i++ ) if ( bits[i] ) return i;
     return -1;
  endfunction: lowest_bit_1_loc

  //------------------------------------------------------------------------------
  // Function: reverse_flow_id
  //------------------------------------------------------------------------------

  function flow_id_t reverse_flow_id( flow_id_t flow_id );
     ip_addr_t  dst_ip;
     ip_addr_t  src_ip;
     tcp_port_t dst_port;
     tcp_port_t src_port;
     
     { src_ip, dst_ip, src_port, dst_port } = flow_id;
     return { dst_ip, src_ip, dst_port, src_port };
  endfunction: reverse_flow_id

  //------------------------------------------------------------------------------
  // Function: get_port_name
  //------------------------------------------------------------------------------

  function string get_port_name( tcp_port_t port );
     case ( port )
       SUNRPC_PORT: return "RPC";
       MS_DS_PORT:  return "MSDS";
       NFS_PORT:    return "NFS";
       default:     return $sformatf( "%h", port );
     endcase
  endfunction: get_port_name

  //------------------------------------------------------------------------------
  // Function: pretty_flow_id
  //------------------------------------------------------------------------------

  function string pretty_flow_id( flow_id_t flow_id );
     ip_addr_t  dst_ip;
     ip_addr_t  src_ip;
     tcp_port_t dst_port;
     tcp_port_t src_port;
     string     dst_port_s;
     string     src_port_s;
     
     { src_ip, dst_ip, src_port, dst_port } = flow_id;

     return $sformatf( "%h(%s)-%h(%s)", src_ip, get_port_name( src_port ), dst_ip, get_port_name( dst_port ) );
  endfunction: pretty_flow_id   

  //------------------------------------------------------------------------------
  // Function: get_short_errors
  //------------------------------------------------------------------------------

  function string get_short_errors( mac_error_t mac_error );
     automatic string s;
     
     if ( mac_error == 0 ) return "no error";
     if ( mac_error & MAC_IP_CHECKSUM_ERROR      ) s = { s, "IP_CHECKSUM "      };
     if ( mac_error & MAC_TCP_CHECKSUM_ERROR     ) s = { s, "TCP_CHECKSUM "     };
     if ( mac_error & MAC_IP_MORE_FRAG_ERROR     ) s = { s, "IP_MORE_FRAG "     };
     if ( mac_error & MAC_CH_FIFO_OVERFLOW_ERROR ) s = { s, "CH_FIFO_OVERFLOW " };
     if ( mac_error & MAC_IP_TOTAL_LENGTH_ERROR  ) s = { s, "IP_TOTAL_LENGTH "  };
     if ( mac_error & MAC_CRC_MISMATCH_ERROR     ) s = { s, "CRC_MISMATCH "     };
     if ( mac_error & MAC_OVERSIZED_PACKET_ERROR ) s = { s, "OVERSIZED_PACKET " };
     if ( mac_error & MAC_INSUFFICIENT_IPG_ERROR ) s = { s, "INSUFFICIENT_IPG " };
     if ( mac_error & MAC_PREV_BAD_TERM_ERROR    ) s = { s, "PREV_BAD_TERM "    };
     if ( mac_error & MAC_XGMII_ERROR            ) s = { s, "XGMII "            };
     if ( mac_error & MAC_IP_VERSION_ERROR       ) s = { s, "IP_VERSION "       };
     if ( mac_error & MAC_RUNT_ERROR             ) s = { s, "RUNT "             };
     if ( mac_error & MAC_LINK_DOWN_ERROR        ) s = { s, "LINK_DOWN "        };
     if ( mac_error & MAC_LINK_TRANSITION        ) s = { s, "LINK_TRANS "       };
     if ( mac_error & MAC_ERROR_INJECTED         ) s = { s, "ERROR_INJECTED "   };
     if ( mac_error & MAC_BUF_FULL_ERROR         ) s = { s, "BUF_FULL "         };
     if ( mac_error & MAC_BUF_FULL_TRANSITION    ) s = { s, "BUF_FULL_TRANS"    };
     return s;
  endfunction: get_short_errors

  //---------------------------------------------------------------------------
  // Function: decode_alert_type
  //---------------------------------------------------------------------------

  function string decode_alert_type( alert_type_t alert_type );
     string alert_type_s;
     
     alert_type_s = ""; // required because this function is not automatic.
     if ( alert_type == 0 ) alert_type_s = "NONE";
     if ( alert_type &         TCP_RESET_ALERT ) alert_type_s = { alert_type_s, " TCP_RST"    };
     if ( alert_type &  TCP_OUT_OF_ORDER_ALERT ) alert_type_s = { alert_type_s, " OO_ORDER"   };
     if ( alert_type &  TCP_PARTIAL_DUPL_ALERT ) alert_type_s = { alert_type_s, " PART_DUPL"  };
     if ( alert_type & TCP_COMPLETE_DUPL_ALERT ) alert_type_s = { alert_type_s, " COMP_DUPL"  };
     if ( alert_type &       OUT_OF_SYNC_ALERT ) alert_type_s = { alert_type_s, " OO_SYNC"    };
     if ( alert_type & TCP_WINDOW_UPDATE_ALERT ) alert_type_s = { alert_type_s, " WIN_UPDATE" };
//    if ( alert_type & TCP_WINDOW_OPEN_ALERT   ) alert_type_s = { alert_type_s, " WIN_OPEN"   };
//    if ( alert_type & TCP_WINDOW_CLOSE_ALERT  ) alert_type_s = { alert_type_s, " WIN_CLOSE"  };
     return alert_type_s;
  endfunction: decode_alert_type

  //------------------------------------------------------------------------------
  // Function: separator
  //------------------------------------------------------------------------------

  function string separator();
     return "-----------------------------------------------------------------------------------------------\n";
  endfunction: separator

  //------------------------------------------------------------------------------
  // Function: name_strings
  //------------------------------------------------------------------------------

  function string name_strings( string name, string s1, string s2 = "", bit newline = 1 );
     string     s;

     s = $sformatf( "%30s: %31s %31s", name, s1, s2 );
     if ( newline ) return { s, "\n" };
     else           return s;
  endfunction: name_strings

  //------------------------------------------------------------------------------
  // Function: name_string3
  //------------------------------------------------------------------------------

  function string name_string3( string name, string s1, string s2, string s3, bit newline = 1 );
     string     s;
     
     s = $sformatf( "%30s: %11s %11s %11s\n", name, s1, s2, s3 );
     if ( newline ) return { s, "\n" };
     else           return s;
  endfunction: name_string3

  //------------------------------------------------------------------------------
  // Function: name_bit
  //------------------------------------------------------------------------------

  function string name_bit( string name, bit b );
     return $sformatf( "%30s: %30s%b\n", name, "", b );
  endfunction: name_bit

  //------------------------------------------------------------------------------
  // Function: name_hex
  //------------------------------------------------------------------------------

  function string name_hex( string name, int i );
     return $sformatf( "%30s: %30sh\n", name, rjust( $sformatf( "%0h", i ), 12 ) );
  endfunction: name_hex

  //------------------------------------------------------------------------------
  // Function: name_hex2
  //------------------------------------------------------------------------------

  function string name_hex2( string name, int i1, int i2 );
     return $sformatf( "%30s: %30sh %30sh\n", name, 
                       rjust( $sformatf( "%0h", i1 ), 12 ),
                       rjust( $sformatf( "%0h", i2 ), 12 ) );
  endfunction: name_hex2

  //------------------------------------------------------------------------------
  // Function: name_dec
  //------------------------------------------------------------------------------

  function string name_dec( string name, int i );
     return $sformatf( "%30s: %31d\n", name, i );
  endfunction: name_dec

  //------------------------------------------------------------------------------
  // Function: name_dec2
  //------------------------------------------------------------------------------

  function string name_dec2( string name, int i1, int i2 );
     return $sformatf( "%30s: %31d %31d\n", name, i1, i2 );
  endfunction: name_dec2

  //------------------------------------------------------------------------------
  // Function: name_dec3
  //------------------------------------------------------------------------------

  function string name_dec3( string name, int i1, int i2, int i3 );
     return $sformatf( "%30s: %11d %11d %11d\n", name, i1, i2, i3 );
  endfunction: name_dec3

  //------------------------------------------------------------------------------
  // Function: name_time
  //------------------------------------------------------------------------------

  function string name_time( string name, time t );
     return $sformatf( "%30s: %31t\n", name, t );
  endfunction: name_time

  //------------------------------------------------------------------------------
  // Function: name_time2
  //------------------------------------------------------------------------------

  function string name_time2( string name, time t1, time t2 );
     return $sformatf( "%30s: %31t %31t\n", name, t1, t2 );
  endfunction: name_time2

  //------------------------------------------------------------------------------
  // Function: cmp_title
  //------------------------------------------------------------------------------

  function string cmp_title();
     return { name_strings( "Field", "Expected", "Actual" ) };
  endfunction: cmp_title

  //------------------------------------------------------------------------------
  // Function: diff_title
  //------------------------------------------------------------------------------

  function string diff_title( string s1, string s2 );
     return { name_strings( "Field", s1, s2 ) };
  endfunction: diff_title

  //------------------------------------------------------------------------------
  // Function: cmp_strings
  //------------------------------------------------------------------------------

  function string cmp_strings( string name, string s1, string s2, bit matched = 0 );
     return { name_strings( name, s1, s2, .newline( 0 ) ), " ", 
              ( s1 == s2 ? "" : ( matched ? "<-- tolerated" : "<-- mismatched" ) ) , "\n" };
  endfunction: cmp_strings

  //------------------------------------------------------------------------------
  // Function: diff_strings
  //------------------------------------------------------------------------------

  function string diff_strings( string name, string s1, string s2 );
     if ( s1 == s2 ) return name_strings( name, s1, "n/c" );
     else            return name_strings( name, s1, s2    );
  endfunction: diff_strings

  //------------------------------------------------------------------------------
  // Function: diff_hexes
  //------------------------------------------------------------------------------

  function string diff_hexes( string name, int i1, int i2 );
     if ( i1 == i2 ) return name_strings( name, rjust( $sformatf( "%0hh", i1 ), 12 ), "n/c" );
     else            return name_hex2( name, i1, i2 );
  endfunction: diff_hexes

  //------------------------------------------------------------------------------
  // Function: diff_decs
  //------------------------------------------------------------------------------

  function string diff_decs( string name, int i1, int i2 );
     if ( i1 == i2 ) return name_strings( name, $sformatf( "%31d", i1 ), "n/c" );
     else            return name_dec2( name, i1, i2 );
  endfunction: diff_decs

  //------------------------------------------------------------------------------
  // Function: diff_times
  //------------------------------------------------------------------------------

  function string diff_times( string name, time t1, time t2 );
     if ( t1 == t2 ) return name_strings( name, $sformatf( "%31t", t1 ), "n/c" );
     else            return name_time2( name, t1, t2 );
  endfunction: diff_times

  //------------------------------------------------------------------------------
  // Function: cmp_ints
  //------------------------------------------------------------------------------

  function string cmp_ints( string name, longint unsigned i1, longint unsigned i2, bit matched = 0 );
     string     i1h;
     string     i2h;

     i1h = rjust( $sformatf( "%0h", i1 ), 12 );
     i2h = rjust( $sformatf( "%0h", i2 ), 12 );
     return $sformatf( "%30s: %15d (%sh) %15d (%sh) %0s\n", 
                       name, i1, i1h, i2, i2h, i1 == i2 ? "" : matched ? "<-- tolerated" : "<-- mismatched" );
  endfunction: cmp_ints

  //------------------------------------------------------------------------------
  // Function: banner
  //------------------------------------------------------------------------------

  function string banner( string s );
     automatic string border = { s.len() { "=" } };

     banner = { "\n", border, "\n", s, "\n", border, "\n" };
  endfunction: banner

  localparam [31:0] crc32_ccitt_table[256] = {
    32'h00000000, 32'h77073096, 32'hee0e612c, 32'h990951ba, 32'h076dc419,
    32'h706af48f, 32'he963a535, 32'h9e6495a3, 32'h0edb8832, 32'h79dcb8a4,
    32'he0d5e91e, 32'h97d2d988, 32'h09b64c2b, 32'h7eb17cbd, 32'he7b82d07,
    32'h90bf1d91, 32'h1db71064, 32'h6ab020f2, 32'hf3b97148, 32'h84be41de,
    32'h1adad47d, 32'h6ddde4eb, 32'hf4d4b551, 32'h83d385c7, 32'h136c9856,
    32'h646ba8c0, 32'hfd62f97a, 32'h8a65c9ec, 32'h14015c4f, 32'h63066cd9,
    32'hfa0f3d63, 32'h8d080df5, 32'h3b6e20c8, 32'h4c69105e, 32'hd56041e4,
    32'ha2677172, 32'h3c03e4d1, 32'h4b04d447, 32'hd20d85fd, 32'ha50ab56b,
    32'h35b5a8fa, 32'h42b2986c, 32'hdbbbc9d6, 32'hacbcf940, 32'h32d86ce3,
    32'h45df5c75, 32'hdcd60dcf, 32'habd13d59, 32'h26d930ac, 32'h51de003a,
    32'hc8d75180, 32'hbfd06116, 32'h21b4f4b5, 32'h56b3c423, 32'hcfba9599,
    32'hb8bda50f, 32'h2802b89e, 32'h5f058808, 32'hc60cd9b2, 32'hb10be924,
    32'h2f6f7c87, 32'h58684c11, 32'hc1611dab, 32'hb6662d3d, 32'h76dc4190,
    32'h01db7106, 32'h98d220bc, 32'hefd5102a, 32'h71b18589, 32'h06b6b51f,
    32'h9fbfe4a5, 32'he8b8d433, 32'h7807c9a2, 32'h0f00f934, 32'h9609a88e,
    32'he10e9818, 32'h7f6a0dbb, 32'h086d3d2d, 32'h91646c97, 32'he6635c01,
    32'h6b6b51f4, 32'h1c6c6162, 32'h856530d8, 32'hf262004e, 32'h6c0695ed,
    32'h1b01a57b, 32'h8208f4c1, 32'hf50fc457, 32'h65b0d9c6, 32'h12b7e950,
    32'h8bbeb8ea, 32'hfcb9887c, 32'h62dd1ddf, 32'h15da2d49, 32'h8cd37cf3,
    32'hfbd44c65, 32'h4db26158, 32'h3ab551ce, 32'ha3bc0074, 32'hd4bb30e2,
    32'h4adfa541, 32'h3dd895d7, 32'ha4d1c46d, 32'hd3d6f4fb, 32'h4369e96a,
    32'h346ed9fc, 32'had678846, 32'hda60b8d0, 32'h44042d73, 32'h33031de5,
    32'haa0a4c5f, 32'hdd0d7cc9, 32'h5005713c, 32'h270241aa, 32'hbe0b1010,
    32'hc90c2086, 32'h5768b525, 32'h206f85b3, 32'hb966d409, 32'hce61e49f,
    32'h5edef90e, 32'h29d9c998, 32'hb0d09822, 32'hc7d7a8b4, 32'h59b33d17,
    32'h2eb40d81, 32'hb7bd5c3b, 32'hc0ba6cad, 32'hedb88320, 32'h9abfb3b6,
    32'h03b6e20c, 32'h74b1d29a, 32'head54739, 32'h9dd277af, 32'h04db2615,
    32'h73dc1683, 32'he3630b12, 32'h94643b84, 32'h0d6d6a3e, 32'h7a6a5aa8,
    32'he40ecf0b, 32'h9309ff9d, 32'h0a00ae27, 32'h7d079eb1, 32'hf00f9344,
    32'h8708a3d2, 32'h1e01f268, 32'h6906c2fe, 32'hf762575d, 32'h806567cb,
    32'h196c3671, 32'h6e6b06e7, 32'hfed41b76, 32'h89d32be0, 32'h10da7a5a,
    32'h67dd4acc, 32'hf9b9df6f, 32'h8ebeeff9, 32'h17b7be43, 32'h60b08ed5,
    32'hd6d6a3e8, 32'ha1d1937e, 32'h38d8c2c4, 32'h4fdff252, 32'hd1bb67f1,
    32'ha6bc5767, 32'h3fb506dd, 32'h48b2364b, 32'hd80d2bda, 32'haf0a1b4c,
    32'h36034af6, 32'h41047a60, 32'hdf60efc3, 32'ha867df55, 32'h316e8eef,
    32'h4669be79, 32'hcb61b38c, 32'hbc66831a, 32'h256fd2a0, 32'h5268e236,
    32'hcc0c7795, 32'hbb0b4703, 32'h220216b9, 32'h5505262f, 32'hc5ba3bbe,
    32'hb2bd0b28, 32'h2bb45a92, 32'h5cb36a04, 32'hc2d7ffa7, 32'hb5d0cf31,
    32'h2cd99e8b, 32'h5bdeae1d, 32'h9b64c2b0, 32'hec63f226, 32'h756aa39c,
    32'h026d930a, 32'h9c0906a9, 32'heb0e363f, 32'h72076785, 32'h05005713,
    32'h95bf4a82, 32'he2b87a14, 32'h7bb12bae, 32'h0cb61b38, 32'h92d28e9b,
    32'he5d5be0d, 32'h7cdcefb7, 32'h0bdbdf21, 32'h86d3d2d4, 32'hf1d4e242,
    32'h68ddb3f8, 32'h1fda836e, 32'h81be16cd, 32'hf6b9265b, 32'h6fb077e1,
    32'h18b74777, 32'h88085ae6, 32'hff0f6a70, 32'h66063bca, 32'h11010b5c,
    32'h8f659eff, 32'hf862ae69, 32'h616bffd3, 32'h166ccf45, 32'ha00ae278,
    32'hd70dd2ee, 32'h4e048354, 32'h3903b3c2, 32'ha7672661, 32'hd06016f7,
    32'h4969474d, 32'h3e6e77db, 32'haed16a4a, 32'hd9d65adc, 32'h40df0b66,
    32'h37d83bf0, 32'ha9bcae53, 32'hdebb9ec5, 32'h47b2cf7f, 32'h30b5ffe9,
    32'hbdbdf21c, 32'hcabac28a, 32'h53b39330, 32'h24b4a3a6, 32'hbad03605,
    32'hcdd70693, 32'h54de5729, 32'h23d967bf, 32'hb3667a2e, 32'hc4614ab8,
    32'h5d681b02, 32'h2a6f2b94, 32'hb40bbe37, 32'hc30c8ea1, 32'h5a05df1b,
    32'h2d02ef8d
  };
  function int cal_crc32(byte unsigned byte_data[]);
    int unsigned crc32;
    byte unsigned index;
    byte unsigned crc_byte[4];
    int unsigned data;
    crc32=32'hffffffff;
    foreach (byte_data[i]) begin
      index = (crc32 ^ byte_data[i]) & 8'hff;
      crc32 = crc32_ccitt_table[index] ^ (crc32 >> 8);
    end
    crc_byte = {>>{~crc32}};
    crc_byte.reverse();
    data = {>>{crc_byte}};
    return data;
  endfunction : cal_crc32

  function shortint cal_checksum(byte unsigned byte_data[]);
    int unsigned checksum;
    int unsigned w;
    checksum=0;
    foreach (byte_data[i]) begin
      if (i%2) begin
        w=(w<<8)+byte_data[i];
        checksum=w+checksum;
        checksum=checksum & 16'hffff + (checksum >> 16) & 16'hffff;
      end
      else begin
        w=byte_data[i];
      end
    end
    return shortint'(~checksum & 16'hffff);
  endfunction : cal_checksum



  function string hexdump(byte unsigned lcl_frame[$],int fs_count,string path);
    $display("# Path                                : %0s",path);
    $display("# Time                                : %0t",$time);
    $display("# Accumulated Frame count             : %0d",fs_count);
    $display("#                  0   1  2  3  4  5  6  7 |  8  9 10 11 12 13 14 15");
    $display("#                  ~~~~~~~~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~~~~~~~~");
    for (int i=0;i < (lcl_frame.size/16);i++)
      $display("#           %04d : %02x %02x %02x %02x %02x %02x %02x %02x | %02x %02x %02x %02x %02x %02x %02x %02x",
i*16,
lcl_frame[16*i+ 0],
lcl_frame[16*i+ 1],
lcl_frame[16*i+ 2],
lcl_frame[16*i+ 3],
lcl_frame[16*i+ 4],
lcl_frame[16*i+ 5],
lcl_frame[16*i+ 6],
lcl_frame[16*i+ 7],
lcl_frame[16*i+ 8],
lcl_frame[16*i+ 9],
lcl_frame[16*i+10],
lcl_frame[16*i+11],
lcl_frame[16*i+12],
lcl_frame[16*i+13],
lcl_frame[16*i+14],
lcl_frame[16*i+15]);
    if ((lcl_frame.size%16)!=0) begin
      $write("#           %04d :",(lcl_frame.size/16)*16);
      for (int i=(lcl_frame.size/16)*16;i < lcl_frame.size;i++) begin
        if (i==((lcl_frame.size/16)*16+8))
          $write(" |");
        $write(" %02x",lcl_frame[i]);
      end
      $write("\n");
    end
    $display("#                  ~~~~~~~~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~~~~~~~~");
    $display("#           (Total Len  = %d)",lcl_frame.size);
    return "";
  endfunction: hexdump

  class rand_delays extends uvm_object;
    typedef enum {
      FAST_AS_YOU_CAN,
      REGULAR,
      BURSTY
    } traffic_type_e;


    rand traffic_type_e traffic_type;

    rand int unsigned min_delay, max_delay;

    rand int unsigned burst_on_min, burst_on_max;

    rand int unsigned burst_off_min, burst_off_max;

    time wait_timescale = 1ns;

    int unsigned burst_on_time = 1;
    `uvm_object_utils_begin(rand_delays)
      `uvm_field_enum(traffic_type_e, traffic_type,UVM_DEFAULT)
      `uvm_field_int(min_delay,                    UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(max_delay,                    UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(burst_on_min,                 UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(burst_on_max,                 UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(burst_off_min,                UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(burst_off_max,                UVM_DEFAULT | UVM_DEC)
      `uvm_field_int(wait_timescale,               UVM_DEFAULT | UVM_DEC)
    `uvm_object_utils_end


    constraint delay_L0_cnstr {
      traffic_type == REGULAR -> (min_delay <= max_delay);
      traffic_type == BURSTY -> (burst_on_min <= burst_on_max) && (burst_off_min <= burst_off_max);
    }

    constraint delay_L1_cnstr {
      max_delay <= 500;
      burst_on_max <= 500;
      burst_off_max <= 500;
    }

    function new(string name="rand_delay");
      super.new(name);
    endfunction : new

    virtual function int unsigned get_next_delay();
      case(traffic_type)
        FAST_AS_YOU_CAN: get_next_delay = 0;
        REGULAR: begin
          void'(std::randomize(get_next_delay) with {
            get_next_delay inside {[min_delay:max_delay]};
          });
        end
        BURSTY: begin
          if(burst_on_time) begin
            burst_on_time -= 1;
            get_next_delay = 0;
          end else begin
            void'(std::randomize(get_next_delay) with {
              get_next_delay inside {[burst_off_min:burst_off_max]};
            });
            void'(std::randomize(burst_on_time) with {
              burst_on_time inside {[burst_on_min:burst_on_max]};
            });
          end
        end
      endcase
    endfunction : get_next_delay

    virtual task wait_next_delay();
      int unsigned delay = get_next_delay();
      #(delay * wait_timescale);
    endtask : wait_next_delay
  endclass : rand_delays

  class conn_dal_t extends uvm_sequence_item;
    //    Header Layout
    //    =============
    //       3                   2                   1
    //     1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 00 | Reason        | Timestamp                                     :
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 04 :                                                               |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 08 | Outer VLAN (STAG)             | VLAN                          |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 12 | Destination IP                                                |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 16 | Source IP                                                     |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 20 | Destination TCP               | Source TCP                    |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 24 | Destination MAC                                               :
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 28 :                               | Source MAC                    :
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 32 :                                                               |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 36 | Reserved                                                      :
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 40 :                                                               |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 44 | Life Time                                                     |
    //    +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    rand tcp_close_reason_e reason;
    rand timestamp_t   timestamp;
    rand vlan_t        stag;  // outer vlan
    rand vlan_t        vlan;
    rand ip_addr_t     dst_ip;
    rand ip_addr_t     src_ip;
    rand tcp_port_t    dst_port;
    rand tcp_port_t    src_port;
    rand mac_addr_t    dst_mac;
    rand mac_addr_t    src_mac;
    rand life_time_t   life_time = 0;

    `uvm_object_utils_begin( conn_dal_t )
      `uvm_field_enum ( tcp_close_reason_e, reason, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( stag, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( vlan, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( life_time, UVM_ALL_ON | UVM_NOPACK )
    `uvm_object_utils_end

    //---------------------------------------------------------------------------
    // Function: new
    //---------------------------------------------------------------------------
    function new( string name = "" );
      super.new( name );
    endfunction: new

    function void do_pack ( uvm_packer packer );
      packer.pack_field_int( { << byte { reason } }, $bits( reason ) );
      packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
      packer.pack_field_int( { << byte { stag } }, $bits( stag ) );
      packer.pack_field_int( { << byte { vlan } }, $bits( vlan ) );
      packer.pack_field_int( { << byte { dst_ip } }, $bits( dst_ip ) );
      packer.pack_field_int( { << byte { src_ip } }, $bits( src_ip ) );
      packer.pack_field_int( { << byte { dst_port } }, $bits( dst_port ) );
      packer.pack_field_int( { << byte { src_port } }, $bits( src_port ) );
      packer.pack_field_int( dst_mac, $bits( dst_mac ) );
      packer.pack_field_int( src_mac, $bits( src_mac ) );
      //packer.pack_field_int( { << byte { dst_mac } }, $bits( dst_mac ) );
      //packer.pack_field_int( { << byte { src_mac } }, $bits( src_mac ) );
    endfunction : do_pack
    function void do_unpack ( uvm_packer packer );
      { << byte { reason } }                            = packer.unpack_field_int( $bits( reason ) );
      { << byte { timestamp } }                         = packer.unpack_field_int( $bits( timestamp ) );
      { << byte { stag } }                              = packer.unpack_field_int( $bits( stag ) );
      { << byte { vlan } }                              = packer.unpack_field_int( $bits( vlan ) );
      { << byte { dst_ip } }                            = packer.unpack_field_int( $bits( dst_ip ) );
      { << byte { src_ip } }                            = packer.unpack_field_int( $bits( src_ip ) );
      { << byte { dst_port } }                          = packer.unpack_field_int( $bits( dst_port ) );
      { << byte { src_port } }                          = packer.unpack_field_int( $bits( src_port ) );
      dst_mac                           = packer.unpack_field_int( $bits( dst_mac ) );
      src_mac                           = packer.unpack_field_int( $bits( src_mac ) );
      //{ << byte { dst_mac } }                         = packer.unpack_field_int( $bits( dst_mac ) );
      //{ << byte { src_mac } }                         = packer.unpack_field_int( $bits( src_mac ) );
    endfunction : do_unpack
    virtual function void do_print( uvm_printer printer );
      printer.m_string=convert2string();
    endfunction : do_print
    //---------------------------------------------------------------------------
    // Function: do_copy
    //---------------------------------------------------------------------------

    virtual function void do_copy( uvm_object rhs );
      conn_dal_t that;

      if ( ! $cast( that, rhs ) ) begin
         `uvm_fatal( "do_copy", "rhs is not a conn_dal_t" )
      end

      super.do_copy( rhs );
      this.stag      = that.stag;
      this.vlan      = that.vlan;
      this.dst_ip    = that.dst_ip;
      this.src_ip    = that.src_ip;
      this.dst_port  = that.dst_port;
      this.src_port  = that.src_port;
      this.dst_mac   = that.dst_mac;
      this.src_mac   = that.src_mac;

      // CONN DAL

      this.reason    = that.reason;
      this.life_time = that.life_time;

    endfunction: do_copy

   endclass: conn_dal_t

   class link_stats_t extends uvm_sequence_item;
      // Header Layout
      // =============
      //        3                   2                   1
      //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      //   0 | Reserved      | Timestamp                                     :
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      //   4 :                                                               |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      //   8 | PCIe Tx BW                    | PCIe NREADY Ticks             |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ Chip Stats
      //  12 | PCIe NP Credit Ticks          | PCIe P Credit Ticks           |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      //  16 | DPL Free Descriptor                                           |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  20 | Descriptor Read Pending Ticks | Descriptor Write Pending Ticks| Link Stats
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  24 | Max Flows                     |Reserved                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  28 | Latest Arrival Timestamp                                      |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ --- 
      //  32 | LOSYNC                        | LOSIG                         |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  | 
      //  36 | XGMII Error                   | Link Up                       | Channel 0 Stats
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  40 | Runt                          | CRC Error                     |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  44 | Oversize                      | IP TTL        | Max Msg Hdrs  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  48 | Complete Duplicate            | TCP Out of Order              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  52 | TCP SYN                       | RPC/TCP Misalign              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  56 | NFS v4                        | UDP NFS                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  60 | IP Fragmentation              | IP Version                    |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  64 | TCP Checksum                  | IP Checksum                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  68 | Non-TCP/IP                    | DAL Packets                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  72 | DAL BW                        | Wire Packets                  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  76 | Wire BW                       | Buf Overflow Discard          |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  80 | CAM Full Discard              | CAM Miss Discard              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  84 | PFC           | PAUSE         | Link Status   | Flags         |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  88 | Vendor OUI                                    | SFP           |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  92 | CAM WQ Discard                | TCP FIN                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  96 | Reserved                      | Temperature                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 100 | Rx Power                      | Tx Power                      |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 104 | Warning                                                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 108 | Alarm                                                         |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 112 | Vendor Part Number                                            :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 116 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 120 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 124 :                                                               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 128 | Vendor Serial Number                                          :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 132 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 136 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 140 :                                                               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 144 | Non RPC Discard             | Small Multiple                  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 148 | Header Hunting              | Partial Duplicate               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 152 | TCP ACK                     | TCP RST                         |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 156 | TCP Keep Alive              | Reserved                        |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      // 160 |                                                               |  ^
      //     |                                                               |  |
      //     |                                                               | Channel 1 Stats
      //     |                                                               |  |
      // 284 |                                                               |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      bit [7:0]  rsvd;
      timestamp_t  timestamp;
      bit [15:0] pcie_tx_bw;
      bit [15:0] pcie_nready_ticks;
      bit [15:0] pcie_np_credit_ticks;
      bit [15:0] pcie_p_credit_ticks;

      bit [31:0] dpl_free_desc;
      bit [15:0] desc_rd_pending_ticks;
      bit [15:0] desc_wr_pending_ticks;
      bit [15:0] max_flows;
      bit [15:0] flow_idle_time;
      bit [31:0] latest_arrival_timestamp;
      `uvm_object_utils_begin( link_stats_t )
         `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pcie_tx_bw, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pcie_nready_ticks, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pcie_np_credit_ticks, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pcie_p_credit_ticks, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( dpl_free_desc, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( desc_rd_pending_ticks, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( desc_wr_pending_ticks, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( max_flows, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( flow_idle_time, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( latest_arrival_timestamp, UVM_ALL_ON | UVM_NOPACK )

      `uvm_object_utils_end
      function new ( string name = "");
        super.new();
      endfunction : new
      function void do_pack ( uvm_packer packer );
        super.do_pack(packer);
        packer.pack_field_int( { << byte { rsvd } }, $bits( rsvd ) );
        packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
        packer.pack_field_int( { << byte { pcie_tx_bw } }, $bits( pcie_tx_bw ) );
        packer.pack_field_int( { << byte { pcie_nready_ticks } }, $bits( pcie_nready_ticks ) );
        packer.pack_field_int( { << byte { pcie_np_credit_ticks } }, $bits( pcie_np_credit_ticks ) );
        packer.pack_field_int( { << byte { pcie_p_credit_ticks } }, $bits( pcie_p_credit_ticks ) );
        packer.pack_field_int( { << byte { dpl_free_desc } }, $bits( dpl_free_desc ) );
        packer.pack_field_int( { << byte { desc_rd_pending_ticks } }, $bits( desc_rd_pending_ticks ) );
        packer.pack_field_int( { << byte { desc_wr_pending_ticks } }, $bits( desc_wr_pending_ticks ) );
        packer.pack_field_int( { << byte { max_flows } }, $bits( max_flows ) );
        packer.pack_field_int( { << byte { flow_idle_time } }, $bits( flow_idle_time ) );
        packer.pack_field_int( { << byte { latest_arrival_timestamp } }, $bits( latest_arrival_timestamp ) );
      endfunction : do_pack
      function void do_unpack ( uvm_packer packer );
        super.do_unpack(packer);
        { << byte { rsvd } }                            = packer.unpack_field_int( $bits( rsvd  ) );
        { << byte { timestamp } }                       = packer.unpack_field_int( $bits( timestamp  ) );
        { << byte { pcie_tx_bw } }                      = packer.unpack_field_int( $bits( pcie_tx_bw ) );
        { << byte { pcie_nready_ticks } }               = packer.unpack_field_int( $bits( pcie_nready_ticks ) );
        { << byte { pcie_np_credit_ticks } }            = packer.unpack_field_int( $bits( pcie_np_credit_ticks ) );
        { << byte { pcie_p_credit_ticks } }             = packer.unpack_field_int( $bits( pcie_p_credit_ticks ) );
        { << byte { dpl_free_desc } }                   = packer.unpack_field_int( $bits( dpl_free_desc ) );
        { << byte { desc_rd_pending_ticks } }           = packer.unpack_field_int( $bits( desc_rd_pending_ticks ) );
        { << byte { desc_wr_pending_ticks } }           = packer.unpack_field_int( $bits( desc_wr_pending_ticks ) );
        { << byte { max_flows } }                       = packer.unpack_field_int( $bits( max_flows ) );
        { << byte { flow_idle_time } }                  = packer.unpack_field_int( $bits( flow_idle_time ) );
        { << byte { latest_arrival_timestamp } }        = packer.unpack_field_int( $bits( latest_arrival_timestamp ) );
      endfunction : do_unpack
      function void do_print ( uvm_printer printer);
        printer.m_string = convert2string();
      endfunction : do_print

   endclass :  link_stats_t
   class ch_stats_t extends uvm_sequence_item;
      // Header Layout
      // =============
      //        3                   2                   1
      //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      //   0 | Reserved      | Timestamp                                     :
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      //   4 :                                                               |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      //   8 | PCIe Tx BW                    | PCIe NREADY Ticks             |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ Chip Stats
      //  12 | PCIe NP Credit Ticks          | PCIe P Credit Ticks           |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      //  16 | DPL Free Descriptor                                           |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  20 | Descriptor Read Pending Ticks | Descriptor Write Pending Ticks| Link Stats
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  24 | Max Flows                     |Reserved                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  28 | Latest Arrival Timestamp                                      |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ --- 
      //  32 | LOSYNC                        | LOSIG                         |  ^
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  | 
      //  36 | XGMII Error                   | Link Up                       | Channel 0 Stats
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  40 | Runt                          | CRC Error                     |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  44 | Oversize                      | IP TTL        | Max Msg Hdrs  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  48 | Complete Duplicate            | TCP Out of Order              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  52 | TCP SYN                       | RPC/TCP Misalign              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  56 | NFS v4                        | UDP NFS                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  60 | IP Fragmentation              | IP Version                    |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  64 | TCP Checksum                  | IP Checksum                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  68 | Non-TCP/IP                    | DAL Packets                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  72 | DAL BW                        | Wire Packets                  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  76 | Wire BW                       | Buf Overflow Discard          |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  80 | CAM Full Discard              | CAM Miss Discard              |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  84 | PFC           | PAUSE         | Link Status   | Flags         |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  88 | Vendor OUI                                    | SFP           |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  92 | CAM WQ Discard                | TCP FIN                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      //  96 | Reserved                      | Temperature                   |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 100 | Rx Power                      | Tx Power                      |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 104 | Warning                                                       |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 108 | Alarm                                                         |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 112 | Vendor Part Number                                            :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 116 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 120 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 124 :                                                               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 128 | Vendor Serial Number                                          :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 132 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 136 :                                                               :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 140 :                                                               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 144 | Non RPC Discard             | Small Multiple                  |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 148 | Header Hunting              | Partial Duplicate               |  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 152 | TCP ACK                     | Reserved                        :  |
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+  |
      // 156 | TCP Keep Alive              | Reserved                        |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      // 160 |                                                               |  ^
      //     |                                                               |  |
      //     |                                                               | Channel 1 Stats
      //     |                                                               |  |
      // 284 |                                                               |  v
      //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ ---
      bit [15:0]  losync;
      bit [15:0]  losig;
      bit [15:0]  xgmii_error;
      bit [15:0]  link_up;
      bit [15:0]  runt;
      bit [15:0]  crc_error;
      bit [15:0]  oversize;
      ip_ttl_t    ip_ttl;
      bit [7:0]   max_msg_hdrs;
      complete_duplicate_t complete_duplicate;
      bit [15:0]  tcp_out_of_order;
      bit [15:0]  tcp_syn;
      bit [15:0]  rpc_tcp_misalign;
      bit [15:0]  nfs_v4;
      bit [15:0]  udp_nfs;
      bit [15:0]  ip_fragmentation;
      bit [15:0]  ip_version;
      bit [15:0]  tcp_checksum;
      bit [15:0]  ip_checksum;
      bit [15:0]  non_tcp_ip;
      bit [15:0]  dal_packets;
      bit [15:0]  dal_bw;
      bit [15:0]  wire_packets;
      bit [15:0]  wire_bw;
      bit [15:0]  buf_overflow;
      bit [15:0]  cam_full;
      bit [15:0]  cam_miss;
      bit [7:0]   pfc;
      bit [7:0]   pause;
      bit [7:0]   link_status;
      bit [7:0]   flags;
      bit [23:0]  vendor_oui;
      bit [7:0]   sfp;
      bit [15:0]  cam_wq;
      bit [15:0]  tcp_fin;
      bit [15:0]  rsvd;
      bit [15:0]  temperature;
      bit [15:0]  rx_power;
      bit [15:0]  tx_power;
      bit [31:0]  warning;
      bit [31:0]  alarm;
      bit [127:0] vendor_part_number;
      bit [127:0] vendor_serial_number;
      bit [15:0]  non_rpc;
      bit [15:0]  small_multiple;
      bit [15:0]  header_hunting;
      bit [15:0]  partial_duplicate;
      bit [15:0]  tcp_ack;
      bit [15:0]  tcp_rst;
      bit [15:0]  tcp_keepalive;
      `uvm_object_utils_begin( ch_stats_t )
         `uvm_field_int( losync, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( losig, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( xgmii_error, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( link_up, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( runt, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( crc_error, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( oversize, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( ip_ttl, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( max_msg_hdrs, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( complete_duplicate, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_out_of_order, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_syn, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( rpc_tcp_misalign, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( nfs_v4, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( udp_nfs, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( ip_fragmentation, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( ip_version, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_checksum, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( ip_checksum, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( non_tcp_ip, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( dal_packets, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( dal_bw, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( wire_packets, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( wire_bw, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( buf_overflow, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( cam_full, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( cam_miss, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pfc, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( pause, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( link_status, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( flags, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( vendor_oui, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( sfp, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( cam_wq, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_fin, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( rsvd, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( temperature, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( rx_power, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tx_power, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( warning, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( alarm, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( vendor_part_number, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( vendor_serial_number, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( non_rpc, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( small_multiple, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( header_hunting, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( partial_duplicate, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_ack, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_rst, UVM_ALL_ON | UVM_NOPACK )
         `uvm_field_int( tcp_keepalive, UVM_ALL_ON | UVM_NOPACK )

      `uvm_object_utils_end
      function new ( string name = "");
        super.new();
      endfunction : new
      function void do_pack ( uvm_packer packer );
        super.do_pack(packer);
        packer.pack_field_int( { << byte { losync } }, $bits( losync ) );
        packer.pack_field_int( { << byte { losig } }, $bits( losig ) );
        packer.pack_field_int( { << byte { xgmii_error } }, $bits( xgmii_error ) );
        packer.pack_field_int( { << byte { link_up } }, $bits( link_up ) );
        packer.pack_field_int( { << byte { runt } }, $bits( runt ) );
        packer.pack_field_int( { << byte { crc_error } }, $bits( crc_error ) );
        packer.pack_field_int( { << byte { oversize } }, $bits( oversize ) );
        packer.pack_field_int( { << byte { ip_ttl } }, $bits( ip_ttl ) );
        packer.pack_field_int( { << byte { max_msg_hdrs } }, $bits( max_msg_hdrs ) );
        packer.pack_field_int( { << byte { complete_duplicate } }, $bits( complete_duplicate ) );
        packer.pack_field_int( { << byte { tcp_out_of_order } }, $bits( tcp_out_of_order ) );
        packer.pack_field_int( { << byte { tcp_syn } }, $bits( tcp_syn ) );
        packer.pack_field_int( { << byte { rpc_tcp_misalign } }, $bits( rpc_tcp_misalign ) );
        packer.pack_field_int( { << byte { nfs_v4 } }, $bits( nfs_v4 ) );
        packer.pack_field_int( { << byte { udp_nfs } }, $bits( udp_nfs ) );
        packer.pack_field_int( { << byte { ip_fragmentation } }, $bits( ip_fragmentation ) );
        packer.pack_field_int( { << byte { ip_version } }, $bits( ip_version ) );
        packer.pack_field_int( { << byte { tcp_checksum } }, $bits( tcp_checksum ) );
        packer.pack_field_int( { << byte { ip_checksum } }, $bits( ip_checksum ) );
        packer.pack_field_int( { << byte { non_tcp_ip } }, $bits( non_tcp_ip ) );
        packer.pack_field_int( { << byte { dal_packets } }, $bits( dal_packets ) );
        packer.pack_field_int( { << byte { dal_bw } }, $bits( dal_bw ) );
        packer.pack_field_int( { << byte { wire_packets } }, $bits( wire_packets ) );
        packer.pack_field_int( { << byte { wire_bw } }, $bits( wire_bw ) );
        packer.pack_field_int( { << byte { buf_overflow } }, $bits( buf_overflow ) );
        packer.pack_field_int( { << byte { cam_full } }, $bits( cam_full ) );
        packer.pack_field_int( { << byte { cam_miss } }, $bits( cam_miss ) );
        packer.pack_field_int( { << byte { pfc } }, $bits( pfc ) );
        packer.pack_field_int( { << byte { pause } }, $bits( pause ) );
        packer.pack_field_int( { << byte { link_status } }, $bits( link_status ) );
        //packer.pack_field_int( flags, $bits( flags ) );
        packer.pack_field_int( { << byte { flags } }, $bits( flags ) );
        packer.pack_field_int( vendor_oui, $bits( vendor_oui ) );
        //packer.pack_field_int( { << byte { vendor_oui } }, $bits( vendor_oui ) );
        packer.pack_field_int( sfp, $bits( sfp ) );
        packer.pack_field_int( { << byte { cam_wq } }, $bits( cam_wq ) );
        packer.pack_field_int( { << byte { tcp_fin } }, $bits( tcp_fin ) );

        packer.pack_field_int( { << byte { rsvd } }, $bits( rsvd ) );

        packer.pack_field_int( temperature, $bits( temperature ) );
        packer.pack_field_int( rx_power, $bits( rx_power ) );
        packer.pack_field_int( tx_power, $bits( tx_power ) );
        packer.pack_field_int( { << byte { warning } }, $bits( warning ) );
        packer.pack_field_int( alarm, $bits( alarm ) );
        packer.pack_field( vendor_part_number, $bits( vendor_part_number ) );
        packer.pack_field( vendor_serial_number, $bits( vendor_serial_number ) );
        packer.pack_field_int( { << byte { non_rpc } }, $bits( non_rpc ) );
        packer.pack_field_int( { << byte { small_multiple } }, $bits( small_multiple ) );
        packer.pack_field_int( { << byte { header_hunting } }, $bits( header_hunting ) );
        packer.pack_field_int( { << byte { partial_duplicate } }, $bits( partial_duplicate ) );
        packer.pack_field_int( { << byte { tcp_ack } }, $bits( tcp_ack ) );
        packer.pack_field_int( { << byte { tcp_rst } }, $bits( tcp_rst ) );
        packer.pack_field_int( { << byte { tcp_keepalive } }, $bits( tcp_keepalive ) );
      endfunction : do_pack
      function void do_unpack ( uvm_packer packer );
        super.do_unpack(packer);
        { << byte { losync } }                          = packer.unpack_field_int( $bits( losync ) );
        { << byte { losig } }                           = packer.unpack_field_int( $bits( losig ) );
        { << byte { xgmii_error } }                     = packer.unpack_field_int( $bits( xgmii_error ) );
        { << byte { link_up } }                         = packer.unpack_field_int( $bits( link_up ) );
        { << byte { runt } }                            = packer.unpack_field_int( $bits( runt ) );
        { << byte { crc_error } }                       = packer.unpack_field_int( $bits( crc_error ) );
        { << byte { oversize } }                        = packer.unpack_field_int( $bits( oversize ) );
        { << byte { ip_ttl } }                          = packer.unpack_field_int( $bits( ip_ttl ) );
        { << byte { max_msg_hdrs } }                    = packer.unpack_field_int( $bits( max_msg_hdrs ) );
        { << byte { complete_duplicate } }              = packer.unpack_field_int( $bits( complete_duplicate ) );
        { << byte { tcp_out_of_order } }                = packer.unpack_field_int( $bits( tcp_out_of_order ) );
        { << byte { tcp_syn } }                         = packer.unpack_field_int( $bits( tcp_syn ) );
        { << byte { rpc_tcp_misalign } }                = packer.unpack_field_int( $bits( rpc_tcp_misalign ) );
        { << byte { nfs_v4 } }                          = packer.unpack_field_int( $bits( nfs_v4 ) );
        { << byte { udp_nfs } }                         = packer.unpack_field_int( $bits( udp_nfs ) );
        { << byte { ip_fragmentation } }                = packer.unpack_field_int( $bits( ip_fragmentation ) );
        { << byte { ip_version } }                      = packer.unpack_field_int( $bits( ip_version ) );
        { << byte { tcp_checksum } }                    = packer.unpack_field_int( $bits( tcp_checksum ) );
        { << byte { ip_checksum } }                     = packer.unpack_field_int( $bits( ip_checksum ) );
        { << byte { non_tcp_ip } }                      = packer.unpack_field_int( $bits( non_tcp_ip ) );
        { << byte { dal_packets } }                     = packer.unpack_field_int( $bits( dal_packets ) );
        { << byte { dal_bw } }                          = packer.unpack_field_int( $bits( dal_bw ) );
        { << byte { wire_packets } }                    = packer.unpack_field_int( $bits( wire_packets ) );
        { << byte { wire_bw } }                         = packer.unpack_field_int( $bits( wire_bw ) );
        { << byte { buf_overflow } }                    = packer.unpack_field_int( $bits( buf_overflow ) );
        { << byte { cam_full } }                        = packer.unpack_field_int( $bits( cam_full ) );
        { << byte { cam_miss } }                        = packer.unpack_field_int( $bits( cam_miss ) );
        { << byte { pfc } }                             = packer.unpack_field_int( $bits( pfc ) );
        { << byte { pause } }                           = packer.unpack_field_int( $bits( pause ) );
        { << byte { link_status } }                     = packer.unpack_field_int( $bits( link_status ) );
        //flags                           = packer.unpack_field_int( $bits( flags ) );
        { << byte { flags } }                           = packer.unpack_field_int( $bits( flags ) );
        vendor_oui                      = packer.unpack_field_int( $bits( vendor_oui ) );
        //{ << byte { vendor_oui } }                      = packer.unpack_field_int( $bits( vendor_oui ) );
        sfp                             = packer.unpack_field_int( $bits( sfp ) );
        { << byte { cam_wq } }                          = packer.unpack_field_int( $bits( cam_wq ) );
        { << byte { tcp_fin } }                         = packer.unpack_field_int( $bits( tcp_fin ) );
        rsvd                            = packer.unpack_field_int( $bits( rsvd       ) );
        temperature                     = packer.unpack_field_int( $bits( temperature ) );
        rx_power                        = packer.unpack_field_int( $bits( rx_power ) );
        tx_power                        = packer.unpack_field_int( $bits( tx_power ) );
        warning                         = packer.unpack_field_int( $bits( warning ) );
        alarm                           = packer.unpack_field_int( $bits( alarm ) );
        vendor_part_number              = packer.unpack_field( $bits( vendor_part_number ) );
        vendor_serial_number            = packer.unpack_field( $bits( vendor_serial_number ) );
        { << byte { non_rpc } }                         = packer.unpack_field_int( $bits( non_rpc ) );
        { << byte { small_multiple } }                  = packer.unpack_field_int( $bits( small_multiple ) );
        { << byte { header_hunting } }                  = packer.unpack_field_int( $bits( header_hunting ) );
        { << byte { partial_duplicate } }               = packer.unpack_field_int( $bits( partial_duplicate ) );
        { << byte { tcp_ack } }                         = packer.unpack_field_int( $bits( tcp_ack ) );
        { << byte { tcp_rst } }                         = packer.unpack_field_int( $bits( tcp_rst ) );
        { << byte { tcp_keepalive } }                   = packer.unpack_field_int( $bits( tcp_keepalive ) );
      endfunction : do_unpack
      function void do_print ( uvm_printer printer);
        printer.m_string = convert2string();
      endfunction : do_print

   endclass :  ch_stats_t
  class tcp_alert_dal_t extends uvm_sequence_item;
    // Header Layout
    // =============
    //        3                   2                   1
    //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 00  | Alert Type    | Timestamp                                     :
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 04  :                                                               |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 08  | ACK Sequence Number                                           |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 12  | TCP Window Size               |    Digest     |   RSVD        |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    // 16  | Outer VLAN (STAG)             | VLAN                          | ^
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 20  | Destination IP                                                | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 24  | Source IP                                                     | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 28  | Destination TCP               | Source TCP                    | extended header
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 32  | Destination MAC                                               : |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 36  :                               | Source MAC                    : |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 40  :                                                               | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 44  | Win Scale     |                 RSVD                          | v
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    rand alert_type_t   alert_type;
    rand timestamp_t    timestamp;
    rand seq_num_t      ack_sn;
    rand tcp_win_size_t tcp_win_size;
    rand bit [7:0]      digest;
    rand bit [7:0]      rsvd;
    rand vlan_t         stag;
    rand vlan_t         vlan;
    rand ip_addr_t      dst_ip;
    rand ip_addr_t      src_ip;
    rand tcp_port_t     dst_port;
    rand tcp_port_t     src_port;
    rand mac_addr_t     dst_mac;
    rand mac_addr_t     src_mac;
    rand bit [7:0]      win_scale;
    bit                 flow_1st_pkt=1;
 
    `uvm_object_utils_begin( tcp_alert_dal_t )
      `uvm_field_int( alert_type, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( ack_sn, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( tcp_win_size, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( digest, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( rsvd, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( stag, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( vlan, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( win_scale, UVM_ALL_ON | UVM_NOPACK )
    `uvm_object_utils_end
    //---------------------------------------------------------------------------
    // Function: new
    //---------------------------------------------------------------------------
 
    function new( string name = "" );
      super.new( name );
    endfunction: new
 
    virtual function void do_print( uvm_printer printer );
      printer.m_string=convert2string();
    endfunction : do_print

    function void do_pack ( uvm_packer packer );
      packer.pack_field_int( { << byte { alert_type } }, $bits( alert_type ) );
      packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
      packer.pack_field_int( { << byte { ack_sn } }, $bits( ack_sn ) );
      packer.pack_field_int( { << byte { tcp_win_size } }, $bits( tcp_win_size ) );
      packer.pack_field_int( { << byte { digest } }, $bits( digest ) );
      packer.pack_field_int( { << byte { rsvd } }, $bits( rsvd ) );
      if (flow_1st_pkt) begin
        packer.pack_field_int( { << byte { stag } }, $bits( stag ) );
        packer.pack_field_int( { << byte { vlan } }, $bits( vlan ) );
        packer.pack_field_int( { << byte { dst_ip } }, $bits( dst_ip ) );
        packer.pack_field_int( { << byte { src_ip } }, $bits( src_ip ) );
        packer.pack_field_int( { << byte { dst_port } }, $bits( dst_port ) );
        packer.pack_field_int( { << byte { src_port } }, $bits( src_port ) );
        packer.pack_field_int( { << byte { dst_mac } }, $bits( dst_mac ) );
        packer.pack_field_int( { << byte { src_mac } }, $bits( src_mac ) );
        packer.pack_field_int( { << byte { win_scale } }, $bits( win_scale ) );
      end
    endfunction : do_pack

    function void do_unpack ( uvm_packer packer );
      { << byte { alert_type } }                        = packer.unpack_field_int( $bits( alert_type ) );
      { << byte { timestamp } }                         = packer.unpack_field_int( $bits( timestamp ) );
      { << byte { ack_sn } }                            = packer.unpack_field_int( $bits( ack_sn ) );
      { << byte { tcp_win_size } }                      = packer.unpack_field_int( $bits( tcp_win_size ) );
      { << byte { digest } }                            = packer.unpack_field_int( $bits( digest ) );
      { << byte { rsvd } }                              = packer.unpack_field_int( $bits( rsvd ) );
      if (flow_1st_pkt) begin
        { << byte { stag } }                              = packer.unpack_field_int( $bits( stag ) );
        { << byte { vlan } }                              = packer.unpack_field_int( $bits( vlan ) );
        { << byte { dst_ip } }                            = packer.unpack_field_int( $bits( dst_ip ) );
        { << byte { src_ip } }                            = packer.unpack_field_int( $bits( src_ip ) );
        { << byte { dst_port } }                          = packer.unpack_field_int( $bits( dst_port ) );
        { << byte { src_port } }                          = packer.unpack_field_int( $bits( src_port ) );
        { << byte { dst_mac } }                           = packer.unpack_field_int( $bits( dst_mac ) );
        { << byte { src_mac } }                           = packer.unpack_field_int( $bits( src_mac ) );
        { << byte { win_scale } }                         = packer.unpack_field_int( $bits( win_scale ) );
      end 
    endfunction : do_unpack

 
  endclass: tcp_alert_dal_t

  class msg_dal_t extends uvm_sequence_item;
    // Header Layout
    // =============
    //        3                   2                   1
    //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 00  | Alert Type    | Timestamp                                     :
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 04  :                                                               |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 08  | ACK Sequence Number                                           |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 12  | TCP Window Size               |    Header Location            |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    // 16  | Outer VLAN (STAG)             | VLAN                          | ^
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 20  | Destination IP                                                | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 24  | Source IP                                                     | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 28  | Destination TCP               | Source TCP                    | extended header
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 32  | Destination MAC                                               : |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 36  :                               | Source MAC                    : |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 40  :                                                               | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // 44  | Win Scale     |                 RSVD                          | v
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    rand alert_type_t   alert_type;
    rand timestamp_t    timestamp;
    rand seq_num_t      ack_sn;
    rand tcp_win_size_t tcp_win_size;
    //rand bit            hunting;
    //rand bit            hdr_digest_prsnt;
    //rand bit            data_digest_prsnt;
    rand bit [15:0]     msg_hdr_loc;
    rand vlan_t         stag;
    rand vlan_t         vlan;
    rand ip_addr_t      dst_ip;
    rand ip_addr_t      src_ip;
    rand tcp_port_t     dst_port;
    rand tcp_port_t     src_port;
    rand mac_addr_t     dst_mac;
    rand mac_addr_t     src_mac;
    rand bit [7:0]      win_scale;
    rand byte           payload[];
    bit                 flow_1st_pkt=1;
    int                 payload_len;
 
    `uvm_object_utils_begin( msg_dal_t )
      `uvm_field_int( alert_type, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( ack_sn, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( tcp_win_size, UVM_ALL_ON | UVM_NOPACK )
      //`uvm_field_int( hunting, UVM_ALL_ON | UVM_NOPACK )
      //`uvm_field_int( hdr_digest_prsnt, UVM_ALL_ON | UVM_NOPACK )
      //`uvm_field_int( data_digest_prsnt, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( msg_hdr_loc, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( stag, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( vlan, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_ip, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_port, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( dst_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( src_mac, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( win_scale, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_array_int( payload, UVM_ALL_ON | UVM_NOPACK )
    `uvm_object_utils_end
    //---------------------------------------------------------------------------
    // Function: new
    //---------------------------------------------------------------------------
 
    function new( string name = "" );
      super.new( name );
    endfunction: new
 
    virtual function void do_print( uvm_printer printer );
      printer.m_string=convert2string();
    endfunction : do_print

    function void do_pack ( uvm_packer packer );
      packer.pack_field_int( { << byte { alert_type } }, $bits( alert_type ) );
      packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
      packer.pack_field_int( { << byte { ack_sn } }, $bits( ack_sn ) );
      packer.pack_field_int( { << byte { tcp_win_size } }, $bits( tcp_win_size ) );
      //packer.pack_field_int( { << byte { hunting } }, $bits( hunting ) );
      //packer.pack_field_int( { << byte { hdr_digest_prsnt } }, $bits( hdr_digest_prsnt ) );
      //packer.pack_field_int( { << byte { data_digest_prsnt } }, $bits( data_digest_prsnt ) );
      packer.pack_field_int( { << byte { msg_hdr_loc } }, $bits( msg_hdr_loc ) );
      if (flow_1st_pkt) begin
        packer.pack_field_int( { << byte { stag } }, $bits( stag ) );
        packer.pack_field_int( { << byte { vlan } }, $bits( vlan ) );
        packer.pack_field_int( { << byte { dst_ip } }, $bits( dst_ip ) );
        packer.pack_field_int( { << byte { src_ip } }, $bits( src_ip ) );
        packer.pack_field_int( { << byte { dst_port } }, $bits( dst_port ) );
        packer.pack_field_int( { << byte { src_port } }, $bits( src_port ) );
        packer.pack_field_int( { << byte { dst_mac } }, $bits( dst_mac ) );
        packer.pack_field_int( { << byte { src_mac } }, $bits( src_mac ) );
        packer.pack_field_int( { << byte { win_scale } }, $bits( win_scale ) );
      end
      foreach ( payload[i] ) packer.pack_field_int( payload[i], 8 );
    endfunction : do_pack

    function void do_unpack ( uvm_packer packer );
      { << byte { alert_type } }                        = packer.unpack_field_int( $bits( alert_type ) );
      { << byte { timestamp } }                         = packer.unpack_field_int( $bits( timestamp ) );
      { << byte { ack_sn } }                            = packer.unpack_field_int( $bits( ack_sn ) );
      { << byte { tcp_win_size } }                      = packer.unpack_field_int( $bits( tcp_win_size ) );
      //{ << byte { hunting } }                           = packer.unpack_field_int( $bits( hunting ) );
      //{ << byte { hdr_digest_prsnt } }                  = packer.unpack_field_int( $bits( hdr_digest_prsnt ) );
      //{ << byte { data_digest_prsnt } }                 = packer.unpack_field_int( $bits( data_digest_prsnt ) );
      { << byte { msg_hdr_loc } }                       = packer.unpack_field_int( $bits( msg_hdr_loc ) );
      if (flow_1st_pkt) begin
        { << byte { stag } }                              = packer.unpack_field_int( $bits( stag ) );
        { << byte { vlan } }                              = packer.unpack_field_int( $bits( vlan ) );
        { << byte { dst_ip } }                            = packer.unpack_field_int( $bits( dst_ip ) );
        { << byte { src_ip } }                            = packer.unpack_field_int( $bits( src_ip ) );
        { << byte { dst_port } }                          = packer.unpack_field_int( $bits( dst_port ) );
        { << byte { src_port } }                          = packer.unpack_field_int( $bits( src_port ) );
        { << byte { dst_mac } }                           = packer.unpack_field_int( $bits( dst_mac ) );
        { << byte { src_mac } }                           = packer.unpack_field_int( $bits( src_mac ) );
        { << byte { win_scale } }                         = packer.unpack_field_int( $bits( win_scale ) );
      end 
      if ( payload_len > 0 ) begin
        payload = new[ payload_len ];
        foreach ( payload[i] ) payload[i] = packer.unpack_field_int( 8 );
      end

    endfunction : do_unpack

 
  endclass: msg_dal_t

  class zero_pyld_dal_t extends uvm_sequence_item;
    // Header Layout
    // =============
    //        3                   2                   1
    //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 00  | Alert Type    | Timestamp                                     :
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 04  :                                                               |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 08  | ACK Sequence Number                                           |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 12  | TCP Window Size               |    Digest     |   RSVD        |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    rand alert_type_t   alert_type;
    rand timestamp_t    timestamp;
    rand seq_num_t      ack_sn;
    rand tcp_win_size_t tcp_win_size;
    rand bit [7:0]      digest;
    rand bit [7:0]      rsvd;
 
    `uvm_object_utils_begin( zero_pyld_dal_t )
      `uvm_field_int( alert_type, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( ack_sn, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( tcp_win_size, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( digest, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( rsvd, UVM_ALL_ON | UVM_NOPACK )
    `uvm_object_utils_end
    //---------------------------------------------------------------------------
    // Function: new
    //---------------------------------------------------------------------------
 
    function new( string name = "" );
      super.new( name );
    endfunction: new
 
    virtual function void do_print( uvm_printer printer );
      printer.m_string=convert2string();
    endfunction : do_print

    function void do_pack ( uvm_packer packer );
      packer.pack_field_int( { << byte { alert_type } }, $bits( alert_type ) );
      packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
      packer.pack_field_int( { << byte { ack_sn } }, $bits( ack_sn ) );
      packer.pack_field_int( { << byte { tcp_win_size } }, $bits( tcp_win_size ) );
      packer.pack_field_int( { << byte { digest } }, $bits( digest ) );
      packer.pack_field_int( { << byte { rsvd } }, $bits( rsvd ) );
    endfunction : do_pack

    function void do_unpack ( uvm_packer packer );
      { << byte { alert_type } }                        = packer.unpack_field_int( $bits( alert_type ) );
      { << byte { timestamp } }                         = packer.unpack_field_int( $bits( timestamp ) );
      { << byte { ack_sn } }                            = packer.unpack_field_int( $bits( ack_sn ) );
      { << byte { tcp_win_size } }                      = packer.unpack_field_int( $bits( tcp_win_size ) );
      { << byte { digest } }                            = packer.unpack_field_int( $bits( digest ) );
      { << byte { rsvd } }                              = packer.unpack_field_int( $bits( rsvd ) );
    endfunction : do_unpack

 
  endclass: zero_pyld_dal_t
  class raw_eth_dal_t extends uvm_sequence_item;
    // Header Layout
    // =============
    //        3                   2                   1
    //      1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 00  | RSVD          | Timestamp                                     :
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 04  :                                                               |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 08  |                RSVD                                           |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
    // 12  |                RSVD                                           |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    // 16  |       payload                                                 | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // ..  |                                                               | |
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ |
    // ..  |                                                               | v
    //     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+---
    rand bit [7:0]      rsvd1;
    rand timestamp_t    timestamp;
    rand bit [63:0]      rsvd2;
    rand byte           payload[];
    int                 payload_len;
 
    `uvm_object_utils_begin( raw_eth_dal_t )
      `uvm_field_int( rsvd1, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( timestamp, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_int( rsvd2, UVM_ALL_ON | UVM_NOPACK )
      `uvm_field_array_int( payload, UVM_ALL_ON | UVM_NOPACK )
    `uvm_object_utils_end
    //---------------------------------------------------------------------------
    // Function: new
    //---------------------------------------------------------------------------
 
    function new( string name = "" );
      super.new( name );
    endfunction: new
 
    virtual function void do_print( uvm_printer printer );
      printer.m_string=convert2string();
    endfunction : do_print

    function void do_pack ( uvm_packer packer );
      packer.pack_field_int( { << byte { rsvd1 } }, $bits( rsvd1 ) );
      packer.pack_field_int( { << byte { timestamp } }, $bits( timestamp ) );
      packer.pack_field_int( { << byte { rsvd2 } }, $bits( rsvd2 ) );
      foreach ( payload[i] ) packer.pack_field_int( payload[i], 8 );
    endfunction : do_pack

    function void do_unpack ( uvm_packer packer );
      { << byte { rsvd1 } }                             = packer.unpack_field_int( $bits( rsvd1 ) );
      { << byte { timestamp } }                         = packer.unpack_field_int( $bits( timestamp ) );
      { << byte { rsvd2 } }                             = packer.unpack_field_int( $bits( rsvd2 ) );
      if ( payload_len > 0 ) begin
        payload = new[ payload_len ];
        foreach ( payload[i] ) payload[i] = packer.unpack_field_int( 8 );
      end

    endfunction : do_unpack
  endclass: raw_eth_dal_t

  class uid extends uvm_object;
    `uvm_object_utils(uid)

    static int unsigned next_id_num[string];
    string prefix;
    int unsigned my_id;
    uid parent;

    function new(string name="uid");
      super.new(name);
      prefix = name;
      if(next_id_num.exists(prefix))
         next_id_num[prefix] += 1;
      else
         next_id_num[prefix] = 0;
      my_id = next_id_num[prefix];
    endfunction : new

    virtual function uid new_subid(string _prefix="");
      string new_name = $sformatf("%s.%s", convert2string(), _prefix);
      new_subid = new(new_name);
      new_subid.parent = this;
      return new_subid;
    endfunction : new_subid

    virtual function string convert2string();
      return ($sformatf("%s:%06d", prefix, my_id));
    endfunction : convert2string
  endclass : uid

endpackage : common_pkg
