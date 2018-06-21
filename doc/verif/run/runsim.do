proc compile_vsim {} {
if [file exists altlib] {vdel -lib altlib -all}
vlib altlib

if [file exists tblib] {vdel -lib tblib -all}
vlib tblib
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../common/common_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../common/common_env_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel/mm/ral/drp_reg_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel/mm/mm_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel/toplevel_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel/mm/mm_if.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel_test/toplevel_test_pkg.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel_tb/toplevel_tb.sv
 vlog -fsmdebug -novopt -timescale 1ns/100ps +incdir+../ +define+ -sv -work tblib ./../toplevel_tb/toplevel_th.sv

}
proc run_vsim {} {
vsim -novopt -L tblib -L altlib +transport_int_delays +transport_path_delays +notimingchecks -t ps tblib.toplevel_tb +UVM_TESTNAME=base_test +UVM_VERBOSITY=UVM_FULL -l base_test.log -wlf base_test.wlf -sv_seed 12345

log -r /*; run -all
}
