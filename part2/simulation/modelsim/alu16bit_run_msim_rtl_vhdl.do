transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/user/Desktop/DSD-067/part2/components2.vhd}
vcom -93 -work work {C:/Users/user/Desktop/DSD-067/part2/alu1comp.vhd}
vcom -93 -work work {C:/Users/user/Desktop/DSD-067/part2/alu16bit.vhd}

