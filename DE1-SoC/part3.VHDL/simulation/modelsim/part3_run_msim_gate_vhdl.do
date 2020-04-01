transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {part3.vho}

vcom -93 -work work {C:/Users/The_N/Documents/UQAC/2020/Conception Systemes Digitaux/labo3/DE1-SoC/part3.VHDL/ModelSim/testbench.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=part3_vhd.sdo -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
