
###############################################################################
# qip base makefile
###############################################################################
TOPLEVEL_LANG ?= verilog
PWD=$(shell pwd)
WPWD=$(shell pwd)
PYTHONPATH:=$(WPWD)/../env:$(PYTHONPATH)
RUNSIM_DO:=runsim.do
DO_CMD:='do runsim.do;compile_vsim;quit'
RUN_CMD=
SolveArrayResizeMax:=set SolveArrayResizeMax 0  # default value 2000
ifneq ($(SolveArrayResizeMax),)
RUN_CMD+=$(SolveArrayResizeMax);
endif
RUN_CMD+=run -all
#ALL_CMD:='do runsim.do;compile_vsim;run_vsim'
TOPLEVEL := toplevel_tb
TEST ?= base_test
VSIM_ARGS ?=



ARCH?=$(shell uname -m)
export ARCH

OS=$(shell uname)
export OS

ifdef VERILOG_INCLUDE_DIRS
VLOG_ARGS += +incdir+$(VERILOG_INCLUDE_DIRS)
endif

ifdef EXTRA_ARGS
VLOG_ARGS += $(EXTRA_ARGS)
endif

SIM_CMD = vsim -c
VSIM_ARGS =
#VSIM_ARGS +=-onfinish exit
#VSIM_ARGS +=-solvefaildebug
#VSIM_ARGS +=-solveverbose
VSIM_ARGS +=-l $(TEST).log
VSIM_ARGS +=-wlf $(TEST).wlf
UVM_ARGS =+UVM_TESTNAME=$(TEST)
#UVM_ARGS =+UVM_CONFIG_DB_TRACE
#UVM_ARGS +=+UVM_RESOURCE_DB_TRACE
#UVM_ARGS +=+UVM_CONFIG_DB_TRACE
UVM_ARGS +=+UVM_VERBOSITY=UVM_FULL
#UVM_ARGS +=+UVM_VERBOSITY=UVM_MEDIUM
#UVM_ARGS +=+UVM_OVM_RUN_SEMANTIC


.PHONY: $(RUNSIM_DO)
all:
	$(SIM_CMD) -do $(DO_CMD) -l compile.log 2>&1
	$(SIM_CMD) $(QUESTARUN_OPTS) -do "$(RUN_CMD)" 2>&1
compile:
	$(SIM_CMD) -do $(DO_CMD) -l compile.log 2>&1
run:
	$(SIM_CMD) $(QUESTARUN_OPTS) -do "$(RUN_CMD)" 2>&1
$(RUNSIM_DO) : ;



###############################################################################
# PROJECT VAR
###############################################################################
SIM_LIB_DIR:=${QUARTUS_ROOTDIR}/eda/sim_lib
TOPXML:=$(abspath ../../../top/doc/fiji_regs_top.xml)
RALDIR:=$(abspath ../toplevel/mm/ral)
SHARED_INCDIR:=$(abspath ../../../../../common/vi_include)
SHARED_LIBDIR:=$(abspath ../../../../../common/vi_lib)
SHARED_IPDIR:=$(abspath ../../../../../common/vi_ip)
#TBDIR:=../env
VGEN:=$(abspath ../../../../../common/vi_scripts/vgen.py)
PCAP2ETH:=$(abspath ../../../../../common/vi_scripts/pcap2eth.py)
XML2UVMRAL:=$(abspath ../../../../../common/vi_scripts/xml2uvmral.py)
SCRPDIR:=../../../../scripts
CFGDIR:=../cfg
CFG =
SIMDEF =
#DOCMD ='log -r /*; run -all; quit'
DOCMD ='log -r /*; run -all'
COV = 0
DATE := $(shell date +%T)
COV_DOCMD   = 'coverage save -onexit cov_${TEST}.ucdb; run -all; quit'
SEED = 12345
#ALTLIB_SOURCE= 220model.v sgate.v altera_lnsim.sv altera_primitives.v altera_mf.v stratixv_atoms.v stratixv_atoms_ncrypt.v stratixv_hssi_atoms.v stratixv_hssi_atoms_ncrypt.v stratixv_pcie_hip_atoms.v stratixv_pcie_hip_atoms_ncrypt.v
#ALTLIB_SOURCE= 220model.v sgate.v altera_lnsim.sv altera_primitives.v altera_mf.v stratixv_atoms.v stratixv_hssi_atoms.v

###############################################################################
# functions
###############################################################################
define \n
\\n

endef
map=(forach x,$2,$(call $1,$x))
reduce=$(if $(strip $2),$(call reduce,$1,$(wordlist 2,$(words $2),$2),$(call $1,$(firstword $2),$3)),$3)
check_uniq=$(if $(filter $1,$2),$2,$2 $1)
define READLINES_shell=
while read LINE; do \
  case $$LINE in
    *MIF_FILE*);;
    *QIP_FILE*);;
    *VERILOG_FILE*) echo $$LINE| awk '{print $$9}' | sed -e 's:]::g' -e 's:"::g' -e "s:'::g" -e 's:^:$(QIP_PATH):';;
  esac;
done < $(QIP_FILE)
endef
define READLINES_template=
$(shell while read LINE; do \
  case $$LINE in \
    (set*QIP_FILE*\[file*join*$::quartus*qip_path*\]) echo $$LINE | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g" -e 's:^:$(2):' >> $(3);; \
    (set*MIF_FILE*\[file*join*$::quartus*qip_path*\]) echo $$LINE | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g" -e 's:^:$(2):' >> $(4);; \
    (set*VERILOG_FILE*\[file*join*$::quartus*qip_path*\]) echo $$LINE | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g" -e 's:^:$(2):' >> $(5);; \
  esac; \
done < $(1))
endef
define QUESTALIB_template=
if [file exists $(1)] {vdel -lib $(1) -all}\\n
vlib $(1)\\n
 $(foreach x,$(2),$(addprefix vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+$5 +define+$4 -sv -work $(1) $(3)/,$x$(\n)))
endef
define QUESTARUN_template=
vsim -novopt $(1) -L altlib  +transport_int_delays +transport_path_delays +notimingchecks -t ps $(2).$(3) $(4) $(5) -sv_seed $(6)\\n
endef
define QUESTARUN_OPTS_template=
-novopt $(1) -L altlib  +transport_int_delays +transport_path_delays +notimingchecks -t ps $(2).$(3) $(4) $(5) -sv_seed $(6)
endef
QUESTASIM_template=vsim -novopt $(1) $(2) -L altlib +transport_int_delays +transport_path_delays +notimingchecks -t ps $3.$4 -l $(5).log -wlf $(5).wlf -c -sv_seed $(7) -do $(6)
QIPS_template=$(shell grep '^set' $(1)|grep QIP | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g")
MIFS_template=$(shell grep '^set' $(1)|grep MIF | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g")
VERILOGS_template=$(addprefix $(dir $(1)),$(shell grep '^set' $(1)|grep VERILOG | sed -e 's:.*qip_path. ::' -e 's:]::g' -e 's:"::g' -e "s:'::g"))
MKDIRS_template=$(shell for d in $(1); \
                  do \
                    [[ -d $$d ]] || mkdir -p $$d; \
                  done)
XMLREGS_template=$(subst regs.v,regs.xml,$(filter %regs.v,$(1)))
ASSERT_template=$(if $(1),,$(error Assertion failed: $2))
ASSERT_FILE_EXISTS_template=$(call ASSERT_TEMPLATE,$(wildcard $(1)),$(1) does not exist)
ASSERT_NOT_NULL_template=$(call ASSERT_TEMPLATE,$($(1)),The variable "$(1)" is null)
COMMA := ,
ECHO_ARGS=$(subst ' ','$(COMMA) ',$(foreach a,1 2 3 4 5 6 7 8 9,'$($a)'))
VGEN_template=$(foreach f,$(1),$(shell $(VGEN) $(f)))
define QIP_FILE_template=
QIP_PATH=$(dir $(1))
VERILOG_SOURCES=$(call VERILOGS_template,$(1))
XMLREGS_SOURCES=$(call XMLREGS_template,$(VERILOG_SOURCES))
$(call VGEN_template,$(XMLREGS_SOURCES))
SOURCES=$(call reduce,check_uniq,$(VERILOG_SOURCES))
$(shell echo -e  $(call QUESTALIB_template,$(subst .qip,lib,$(notdir $(1))),$(SOURCES),.,$(SIMDEF),$(QIP_PATH))>>$(RUNSIM_DO))
endef
define QIP_FILE_template=
VERILOG_SOURCES=$(call VERILOGS_template,$(1))
XMLREGS_SOURCES=$(call XMLREGS_template,$(call VERILOGS_template,$(1)))
$(call VGEN_template,$(call XMLREGS_template,$(call VERILOGS_template,$(1))))
$(shell echo -e  $(call QUESTALIB_template,$(subst .qip,lib,$(notdir $(1))),$(call reduce,check_uniq,$(call VERILOGS_template,$(1))),.,$(SIMDEF),$(dir $(1)))>>$(RUNSIM_DO))
endef
###############################################################################
# create questa do file
###############################################################################
# altera lib
# directories which containing rtl qip file
VI_LIB_DIR                     = ../../../../../common/vi_lib
MAC_DIR                        = ../../../mac/rtl
PARSER_DIR                     = ../../../parser/rtl
TCAM_DIR                       = ../../../tcam/rtl
FLMAN_DIR                      = ../../../flow_manager/rtl
FLMEM_DIR                      = ../../../flow_memory/rtl
EXTR_DIR                       = ../../../extractor/rtl
LINK_ENGINE_DIR                = ../../../link_engine/rtl
CHIPREGS_DIR                   = ../../../chipregs/rtl
ALL_LINKS_DIR                  = ../../../all_links/rtl
RECORDER_DIR                   = ../../../recorder/rtl
COMMON_DIR                     = ../../../common/rtl

$(shell rm -f $(RUNSIM_DO))
$(shell echo -e  'proc compile_vsim {} {' > $(RUNSIM_DO))
## altlib
SOURCES=$(call reduce,check_uniq,$(ALTLIB_SOURCE))
ifneq ($(DEBUG),)
$(info $(call QUESTALIB_template,altlib,$(SOURCES),$(SIM_LIB_DIR),$(SIMDEF),$(SIM_LIB_DIR)))
endif
$(shell echo -e $(call QUESTALIB_template,altlib,$(SOURCES),$(SIM_LIB_DIR),$(SIMDEF),$(SIM_LIB_DIR))>> $(RUNSIM_DO))
# work lib
QIP_PATH=$(dir $(QIP_FILE))
ifneq ($(DEBUG),)
$(info $(shell $(READLINES_shell) > xyz))
endif
ifneq ($(DEBUG),)
$(info $(call READLINES_template,$(QIP_FILE),$(QIP_PATH),qips,mifs,verilogs))
endif
$(shell rm -f qips)
$(shell rm -f mifs)
$(shell rm -f verilogs)
ifneq ($(DEBUG),)
$(info $(call QIPS_template,$(QIP_FILE)))
endif
ifneq ($(DEBUG),)
$(info $(call MIFS_template,$(QIP_FILE)))
endif
ifneq ($(DEBUG),)
$(info $(call VERILOGS_template,$(QIP_FILE)))
endif
###################
## rtl qip files ##
###################
QIP_FILES+=../tb.qip
$(info $(foreach a,$(QIP_FILES),$(call QIP_FILE_template,$(a))))
WORKLIBS=$(foreach a,$(QIP_FILES),$(subst .qip,lib,$(notdir $(a))))
ifneq ($(DEBUG),)
$(info $(WORKLIBS))
endif
$(shell echo -e  '}\nproc run_vsim {} {' >> $(RUNSIM_DO))
ifneq ($(PCAP),)
$(shell $(PCAP2ETH) $(PCAP) test > log)
VSIM_ARGS+=+MIF_CH0=testch0.mif
VSIM_ARGS+=+MIF_CH1=testch1.mif
endif
$(shell echo -e $(call QUESTARUN_template,$(subst .qip,lib,$(foreach a,$(WORKLIBS),-L $(a))),tblib,$(TOPLEVEL),$(UVM_ARGS),$(VSIM_ARGS),$(SEED))>> $(RUNSIM_DO))
$(shell echo -e $(DOCMD)>> $(RUNSIM_DO))
$(shell echo -e  '}' >> $(RUNSIM_DO))
$(shell $(XML2UVMRAL) $(TOPXML) $(RALDIR) > ral.log)
QUESTARUN_OPTS=$(call QUESTARUN_OPTS_template,$(subst .qip,lib,$(foreach a,$(WORKLIBS),-L $(a))),tblib,$(TOPLEVEL),$(UVM_ARGS),$(VSIM_ARGS),$(SEED))
