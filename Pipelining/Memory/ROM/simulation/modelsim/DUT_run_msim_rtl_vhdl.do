transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester_4/EE309/Pipeline/Memory/ROM/DUT.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Pipeline/Memory/ROM/ROM.vhd}

vcom -93 -work work {D:/IITB/Semester_4/EE309/Pipeline/Memory/ROM/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
