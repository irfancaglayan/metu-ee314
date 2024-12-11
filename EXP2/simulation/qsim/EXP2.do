onerror {exit -code 1}
vlib work
vlog -work work EXP2.vo
vlog -work work fouroneMUX.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.fouroneMUX_vlg_vec_tst -voptargs="+acc"
vcd file -direction EXP2.msim.vcd
vcd add -internal fouroneMUX_vlg_vec_tst/*
vcd add -internal fouroneMUX_vlg_vec_tst/i1/*
run -all
quit -f
