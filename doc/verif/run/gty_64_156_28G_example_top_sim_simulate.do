######################################################################
#
# File name : gty_64_156_28G_example_top_sim_simulate.do
# Created on: Mon Jun 11 11:18:58 PDT 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -lib xil_defaultlib gty_64_156_28G_example_top_sim_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {gty_64_156_28G_example_top_sim_wave.do}

view wave
view structure
view signals

do {gty_64_156_28G_example_top_sim.udo}

run 1000ns