v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 790 -450 860 -450 {}
L 4 790 -520 860 -520 {}
L 4 790 -480 800 -470 {}
L 4 790 -460 800 -470 {}
L 4 790 -460 790 -450 {}
L 4 860 -460 860 -450 {}
L 4 790 -520 790 -460 {}
L 4 860 -520 860 -460 {}
L 4 860 -510 870 -510 {}
L 4 880 -470 890 -470 {}
L 4 780 -470 790 -470 {}
L 4 780 -510 790 -510 {}
L 4 620 -510 740 -510 {}
L 4 870 -510 920 -510 {}
L 4 740 -510 780 -510 {}
L 4 790 -350 860 -350 {}
L 4 790 -420 860 -420 {}
L 4 790 -380 800 -370 {}
L 4 790 -360 800 -370 {}
L 4 790 -360 790 -350 {}
L 4 860 -360 860 -350 {}
L 4 790 -420 790 -360 {}
L 4 860 -420 860 -360 {}
L 4 860 -410 870 -410 {}
L 4 880 -370 890 -370 {}
L 4 780 -370 790 -370 {}
L 4 780 -410 790 -410 {}
L 4 620 -410 740 -410 {}
L 4 870 -410 920 -410 {}
L 4 740 -410 780 -410 {}
L 4 560 -540 760 -540 {}
L 4 760 -540 760 -370 {}
L 4 760 -370 780 -370 {}
L 4 760 -470 780 -470 {}
L 4 545 -535 545 -485 {}
L 4 545 -485 605 -485 {}
L 4 605 -535 605 -485 {}
L 4 545 -535 605 -535 {}
L 4 555 -525 565 -515 {}
L 4 555 -505 565 -515 {}
L 4 555 -495 565 -495 {}
L 4 575 -515 585 -525 {}
L 4 585 -525 585 -495 {}
L 4 545 -435 545 -385 {}
L 4 545 -385 605 -385 {}
L 4 605 -435 605 -385 {}
L 4 545 -435 605 -435 {}
L 4 555 -425 565 -415 {}
L 4 555 -405 565 -415 {}
L 4 555 -395 565 -395 {}
L 4 575 -415 585 -425 {}
L 4 585 -425 585 -395 {}
L 4 430 -460 480 -460 {}
L 4 480 -520 480 -460 {}
L 4 480 -520 540 -520 {}
L 4 430 -440 480 -440 {}
L 4 480 -440 480 -400 {}
L 4 480 -400 540 -400 {}
L 4 520 -500 540 -500 {}
L 4 520 -420 540 -420 {}
L 4 520 -440 520 -420 {}
L 4 520 -440 560 -470 {}
L 4 520 -500 520 -480 {}
L 4 520 -480 560 -450 {}
L 4 560 -470 630 -470 {}
L 4 630 -510 630 -470 {}
L 4 560 -450 630 -450 {}
L 4 630 -450 630 -410 {}
A 4 867.5 -470 7.071067811865476 315 360 {}
A 4 867.5 -370 7.071067811865476 315 360 {}
A 4 612.5 -510 7.071067811865476 315 360 {}
A 4 612.5 -410 7.071067811865476 315 360 {}
N 110 -460 270 -460 {lab=vin}
N 110 -480 270 -480 {lab=vip}
N 390 -460 430 -460 {lab=D0}
N 920 -410 990 -410 {lab=NQ1}
N 920 -510 990 -510 {lab=Q1}
N 1050 -410 1100 -410 {lab=do_b}
N 1050 -510 1100 -510 {lab=do}
N 240 -440 270 -440 {lab=vcm}
N 240 -420 270 -420 {lab=vcm}
N 110 -420 240 -420 {lab=vcm}
N 240 -440 240 -420 {lab=vcm}
N 390 -440 430 -440 {lab=ND0}
N 110 -350 330 -350 {lab=vss}
N 330 -390 330 -350 {lab=vss}
N 350 -540 350 -510 {lab=vclk}
N 110 -540 350 -540 {lab=vclk}
N 350 -540 390 -540 {lab=vclk}
N 450 -540 560 -540 {lab=CLK}
N 330 -590 330 -510 {lab=vdd}
N 110 -590 330 -590 {lab=vdd}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {iopin.sym} 110 -350 0 1 {name=p1 lab=vss}
C {netlist_at_end.sym} 30 -210 0 0 {name=MODELS only_toplevel=false value="
.model adc_buf adc_bridge(in_low=0.7499 in_high=0.7501)
.model dac1 dac_bridge(out_low = 0 out_high = 1.5 out_undef = 0 input_load = 0.1e-15 t_rise = 0.01e-9 t_fall = 0.01e-9)
.model nor1 d_nor(rise_delay = 0.01e-9 fall_delay = 0.01e-9 input_load = 0.01e-15)
.model dlatch1 d_dlatch(data_delay = 0.01e-9 enable_delay = 0.01e-9 set_delay = 0.01e-9 reset_delay = 0.01e-9 ic = 0 rise_delay = 0.01e-9 fall_delay = 0.01e-9)
*.model dff1 d_dff(clk_delay = 0.01e-9 set_delay = 0.01e-9 reset_delay = 0.01e-9 ic = 0 rise_delay = 0.01e-9 fall_delay = 0.01e-9)
"}
C {ipin.sym} 110 -480 0 0 {name=p2 lab=vip}
C {ipin.sym} 110 -460 0 0 {name=p3 lab=vin}
C {ipin.sym} 110 -420 0 0 {name=p6 lab=vcm}
C {lab_wire.sym} 430 -460 0 0 {name=p4 sig_type=std_logic lab=D0}
C {ipin.sym} 110 -540 0 0 {name=p8 lab=vclk}
C {devices/dac_bridge.sym} 1020 -410 0 0 {name=A3 dac_bridge_model= dac1}
C {devices/dac_bridge.sym} 1020 -510 0 0 {name=A2 dac_bridge_model= dac1}
C {netlist_at_end.sym} 420 -300 0 0 {name=NORLATCH only_toplevel=false value="
a21 [D0 NQ0] Q0 nor1
a22 [ND0 Q0] NQ0 nor1
"
}
C {opin.sym} 1100 -410 0 0 {name=p7 lab=do_b}
C {opin.sym} 1100 -510 0 0 {name=p10 lab=do}
C {sal-macro.sym} 270 -510 0 0 {name=xcomp}
C {lab_wire.sym} 430 -440 0 0 {name=p5 sig_type=std_logic lab=ND0}
C {lab_wire.sym} 970 -510 0 0 {name=p11 sig_type=std_logic lab=Q1}
C {lab_wire.sym} 970 -410 0 0 {name=p13 sig_type=std_logic lab=NQ1}
C {netlist_at_end.sym} 770 -300 0 0 {name=DLATCH only_toplevel=false value="
a23 Q0 CLK NULL NULL %d(Q1 NULL) dlatch1
a24 NQ0 CLK NULL NULL %d(NQ1 NULL) dlatch1
"
}
C {devices/adc_bridge.sym} 420 -540 0 0 {name=A1 adc_bridge_model= adc_buf
}
C {lab_wire.sym} 560 -540 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {iopin.sym} 110 -590 0 1 {name=p12 lab=vdd}
