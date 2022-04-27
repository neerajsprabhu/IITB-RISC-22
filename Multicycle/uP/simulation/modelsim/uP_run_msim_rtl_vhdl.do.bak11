transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/inc.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/controller.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/SE9.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/SE6.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/reg_bank.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/reg_16.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/reg_1.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux81_3.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux81.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux41_3.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux41.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux21.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/mux21 _3.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/memory.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/datapath.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/bit7shift.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/bit1shift.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/alu.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/uP.vhd}
vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/DUT.vhd}

vcom -93 -work work {C:/Users/Neeraj Prabhu/Desktop/IITB/Semester 4/EE 309/IITB-RISC/IITB-RISC-22/Multicycle/uP/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
