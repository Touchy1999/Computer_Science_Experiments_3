transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {kadai2_7_1200mv_100c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/17.1/kadai2 {C:/intelFPGA_lite/17.1/kadai2/kadai2_test1.vt}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  test1

add wave *
view structure
view signals
run -all
