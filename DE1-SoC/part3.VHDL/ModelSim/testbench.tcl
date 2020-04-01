# stop any simulation that is currently running
quit -sim

# if simulating with a MIF file, copy it to the working folder. Assumes inst_mem.mif
if {[file exists ../inst_mem.mif]} {
	file delete inst_mem.mif
	file copy ../inst_mem.mif .
}
# in case Quartus generated an "empty black box" file for the memory, delete it
if {[file exists ../inst_mem_bb.vhd]} {
	file delete ../inst_mem_bb.vhd
}


# create the default "work" library
vlib work;

# compile the VHDL source code in the parent folder
vcom {C:\Users\The_N\Documents\UQAC\2020\Conception Systemes Digitaux\labo3\DE1-SoC\part3.VHDL\part3.vhd}
# compile the VHDL code of the testbench
vcom {C:\Users\The_N\Documents\UQAC\2020\Conception Systemes Digitaux\labo3\DE1-SoC\part3.VHDL\ModelSim\testbench.vht}
# start the Simulator, including some libraries that may be needed
vsim work.testbench -Lf 220model -Lf altera_mf
# show waveforms specified in wave.do
do wave.do
# advance the simulation the desired amount of time
run 1800 ns
