onerror {exit -code 1}
vlib work
vlog -work work EXP3.vo
vlog -work work bcdCounter.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bcdCounter_vlg_vec_tst -voptargs="+acc"
vcd file -direction EXP3.msim.vcd
vcd add -internal bcdCounter_vlg_vec_tst/*
vcd add -internal bcdCounter_vlg_vec_tst/i1/*
run -all
quit -f
