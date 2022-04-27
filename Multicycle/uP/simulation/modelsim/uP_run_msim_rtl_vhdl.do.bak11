transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/inc.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/controller.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/SE9.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/SE6.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/reg_bank.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/reg_16.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/reg_1.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux81_3.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux81.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux41_3.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux41.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux21.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/mux21 _3.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/memory.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/datapath.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/bit7shift.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/bit1shift.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/alu.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/uP.vhd}
vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/DUT.vhd}

vcom -93 -work work {D:/IITB/Semester_4/EE309/Project_309/uP/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
