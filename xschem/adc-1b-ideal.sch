v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 660 -390 730 -390 {}
L 4 660 -460 730 -460 {}
L 4 660 -420 670 -410 {}
L 4 660 -400 670 -410 {}
L 4 660 -400 660 -390 {}
L 4 730 -400 730 -390 {}
L 4 660 -460 660 -400 {}
L 4 730 -460 730 -400 {}
L 4 730 -450 740 -450 {}
L 4 750 -410 760 -410 {}
L 4 650 -410 660 -410 {}
L 4 650 -450 660 -450 {}
L 4 430 -450 490 -450 {}
L 4 490 -450 610 -450 {}
L 4 740 -450 790 -450 {}
L 4 850 -410 940 -410 {}
L 4 880 -450 940 -450 {}
L 4 790 -450 880 -450 {}
L 4 760 -410 850 -410 {}
L 4 610 -450 650 -450 {}
A 4 737.5 -410 7.071067811865476 315 360 {}
N 110 -460 270 -460 {lab=vin}
N 110 -480 270 -480 {lab=vip}
N 390 -450 430 -450 {lab=D0}
N 390 -420 420 -420 {lab=vss}
N 110 -310 150 -310 {lab=vclk}
N 210 -310 510 -310 {lab=CLK}
N 510 -410 650 -410 {lab=CLK}
N 940 -410 1010 -410 {lab=NQ0}
N 940 -450 1010 -450 {lab=Q0}
N 1070 -410 1120 -410 {lab=do_b}
N 1070 -450 1120 -450 {lab=do}
N 510 -410 510 -310 {lab=CLK}
N 240 -440 270 -440 {lab=vcm}
N 420 -420 420 -350 {lab=vss}
N 240 -420 270 -420 {lab=vcm}
N 110 -350 420 -350 {lab=vss}
N 110 -420 240 -420 {lab=vcm}
N 240 -440 240 -420 {lab=vcm}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {iopin.sym} 110 -350 0 1 {name=p1 lab=vss}
C {netlist_at_end.sym} 30 -210 0 0 {name=MODELS only_toplevel=false value="
.model adc_buf adc_bridge(in_low=0.7499 in_high=0.7501)
.model dac1 dac_bridge(out_low = 0 out_high = 1.5 out_undef = 0 input_load = 0.1e-15 t_rise = 0.01e-9 t_fall = 0.01e-9)
.model dlatch1 d_dlatch(data_delay = 0.01e-9 enable_delay = 0.01e-9 set_delay = 0.01e-9 reset_delay = 0.01e-9 ic = 0 rise_delay = 0.01e-9 fall_delay = 0.01e-9)"}
C {ipin.sym} 110 -480 0 0 {name=p2 lab=vip}
C {ipin.sym} 110 -460 0 0 {name=p3 lab=vin}
C {ipin.sym} 110 -420 0 0 {name=p6 lab=vcm}
C {lab_wire.sym} 420 -450 0 0 {name=p4 sig_type=std_logic lab=D0}
C {devices/adc_bridge.sym} 180 -310 0 0 {name=A1 adc_bridge_model= adc_buf}
C {ipin.sym} 110 -310 0 0 {name=p8 lab=vclk}
C {lab_wire.sym} 320 -310 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/dac_bridge.sym} 1040 -410 0 0 {name=A3 dac_bridge_model= dac1}
C {devices/dac_bridge.sym} 1040 -450 0 0 {name=A2 dac_bridge_model= dac1}
C {lab_wire.sym} 990 -410 0 0 {name=p11 sig_type=std_logic lab=NQ0}
C {lab_wire.sym} 990 -450 0 0 {name=p13 sig_type=std_logic lab=Q0}
C {netlist_at_end.sym} 550 -350 0 0 {name=DLATCH only_toplevel=false value="
a21 D0 CLK NULL NULL %d(Q0 NQ0) dlatch1
"
}
C {opin.sym} 1120 -410 0 0 {name=p7 lab=do_b}
C {opin.sym} 1120 -450 0 0 {name=p10 lab=do}
C {comp-macro.sym} 270 -510 0 0 {name=xcomp}
