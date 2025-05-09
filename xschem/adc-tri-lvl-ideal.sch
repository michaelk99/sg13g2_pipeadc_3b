v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 670 -660 740 -660 {}
L 4 670 -730 740 -730 {}
L 4 670 -690 680 -680 {}
L 4 670 -670 680 -680 {}
L 4 670 -670 670 -660 {}
L 4 740 -670 740 -660 {}
L 4 670 -730 670 -670 {}
L 4 740 -730 740 -670 {}
L 4 740 -720 750 -720 {}
L 4 760 -680 770 -680 {}
L 4 660 -680 670 -680 {}
L 4 660 -720 670 -720 {}
L 4 670 -550 740 -550 {}
L 4 670 -620 740 -620 {}
L 4 670 -580 680 -570 {}
L 4 670 -560 680 -570 {}
L 4 670 -560 670 -550 {}
L 4 740 -560 740 -550 {}
L 4 670 -620 670 -560 {}
L 4 740 -620 740 -560 {}
L 4 740 -610 750 -610 {}
L 4 660 -570 670 -570 {}
L 4 660 -610 670 -610 {}
L 4 440 -660 500 -660 {}
L 4 500 -720 500 -660 {}
L 4 500 -720 620 -720 {}
L 4 440 -470 500 -470 {}
L 4 500 -610 500 -470 {}
L 4 500 -610 620 -610 {}
L 4 750 -720 800 -720 {}
L 4 750 -610 800 -610 {}
L 4 950 -740 950 -550 {}
L 4 950 -550 1070 -550 {}
L 4 1070 -740 1070 -550 {}
L 4 950 -740 1070 -740 {}
L 4 860 -680 950 -680 {}
L 4 890 -720 950 -720 {}
L 4 890 -610 950 -610 {}
L 4 850 -570 950 -570 {}
L 4 800 -720 890 -720 {}
L 4 770 -680 860 -680 {}
L 4 800 -610 890 -610 {}
L 4 760 -570 850 -570 {}
L 4 620 -610 660 -610 {}
L 4 620 -720 660 -720 {}
A 4 747.5 -680 7.071067811865476 315 360 {}
A 4 747.5 -570 7.071067811865476 315 360 {}
N 400 -440 450 -440 {lab=vss}
N 450 -440 450 -310 {lab=vss}
N 200 -690 280 -690 {lab=vip}
N 200 -500 280 -500 {lab=vip}
N 220 -670 280 -670 {lab=vin}
N 220 -480 280 -480 {lab=vin}
N 200 -690 200 -500 {lab=vip}
N 220 -670 220 -480 {lab=vin}
N 240 -650 280 -650 {lab=vcm}
N 240 -650 240 -440 {lab=vcm}
N 260 -630 280 -630 {lab=vref}
N 260 -630 260 -460 {lab=vref}
N 260 -460 280 -460 {lab=vref}
N 240 -440 280 -440 {lab=vcm}
N 120 -440 240 -440 {lab=vcm}
N 120 -460 260 -460 {lab=vref}
N 120 -670 220 -670 {lab=vin}
N 120 -690 200 -690 {lab=vip}
N 400 -660 440 -660 {lab=D1}
N 400 -470 440 -470 {lab=D0}
N 450 -630 450 -440 {lab=vss}
N 400 -630 450 -630 {lab=vss}
N 120 -360 160 -360 {lab=vclk}
N 220 -360 520 -360 {lab=CLK}
N 520 -570 520 -360 {lab=CLK}
N 520 -570 660 -570 {lab=CLK}
N 520 -680 520 -570 {lab=CLK}
N 520 -680 660 -680 {lab=CLK}
N 120 -310 450 -310 {lab=vss}
N 1310 -700 1370 -700 {lab=do[2]}
N 1310 -640 1370 -640 {lab=do[1]}
N 1310 -580 1370 -580 {lab=do[0]}
N 1380 -720 1380 -570 {lab=do[2:0]
bus=true}
N 1380 -720 1410 -720 {lab=do[2:0]
bus=true}
N 1070 -700 1140 -700 {lab=H2}
N 1070 -640 1140 -640 {lab=H1}
N 1070 -580 1140 -580 {lab=H0}
N 1200 -700 1250 -700 {lab=do2}
N 1200 -640 1250 -640 {lab=do1}
N 1200 -580 1250 -580 {lab=do0}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {comp-macro.sym} 280 -720 0 0 {name=xcomp1}
C {comp-macro.sym} 280 -530 0 0 {name=xcomp2}
C {iopin.sym} 120 -310 0 1 {name=p1 lab=vss}
C {netlist_at_end.sym} 540 -430 0 0 {name=DFF only_toplevel=false value="
a21 D0 CLK NULL NULL %d(Q0 NQ0) dff1
a22 D1 CLK NULL NULL %d(Q1 NQ1) dff1
"
}
C {netlist_at_end.sym} 30 -210 0 0 {name=MODELS only_toplevel=false value="
.model adc_buf adc_bridge(in_low=0.7499 in_high=0.7501)
.model dac1 dac_bridge(out_low = 0 out_high = 1.5 out_undef = 0 input_load = 0.1e-15 t_rise = 0.01e-9 t_fall = 0.01e-9)
.model inv1 d_inverter(rise_delay = 0.01e-9 fall_delay = 0.01e-9 input_load = 0.1e-15)
.model and1 d_and(rise_delay = 0.01e-9 fall_delay = 0.01e-9 input_load = 0.01e-15)
.model dff1 d_dff(clk_delay = 0.01e-9 set_delay = 0.01e-9 reset_delay = 0.01e-9 ic = 0 rise_delay = 0.01e-9 fall_delay = 0.01e-9)"}
C {ipin.sym} 120 -690 0 0 {name=p2 lab=vip}
C {ipin.sym} 120 -670 0 0 {name=p3 lab=vin}
C {ipin.sym} 120 -460 0 0 {name=p5 lab=vref}
C {ipin.sym} 120 -440 0 0 {name=p6 lab=vcm}
C {lab_wire.sym} 440 -660 0 0 {name=p7 sig_type=std_logic lab=D1}
C {lab_wire.sym} 440 -470 0 0 {name=p4 sig_type=std_logic lab=D0}
C {devices/adc_bridge.sym} 190 -360 0 0 {name=A1 adc_bridge_model= adc_buf}
C {ipin.sym} 120 -360 0 0 {name=p8 lab=vclk}
C {lab_wire.sym} 330 -360 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/dac_bridge.sym} 1170 -640 0 0 {name=A3 dac_bridge_model= dac1}
C {devices/dac_bridge.sym} 1170 -700 0 0 {name=A4 dac_bridge_model= dac1}
C {opin.sym} 1410 -720 0 0 {name=p12 lab=do[2:0]}
C {netlist_at_end.sym} 940 -430 0 0 {name=THERMO2ONEHOT only_toplevel=false value="
a23 [NQ1 Q0] %d(H0) and1
a24 [NQ1 NQ0] %d(H1) and1
a25 [Q1 Q0] %d(H2) and1
"}
C {devices/dac_bridge.sym} 1170 -580 0 0 {name=A2 dac_bridge_model= dac1}
C {lab_wire.sym} 1120 -700 0 0 {name=p10 sig_type=std_logic lab=H2}
C {lab_wire.sym} 1120 -640 0 0 {name=p11 sig_type=std_logic lab=H1}
C {lab_wire.sym} 1120 -580 0 0 {name=p13 sig_type=std_logic lab=H0}
C {bus_connect_nolab.sym} 1380 -710 2 0 {name=r1}
C {bus_connect_nolab.sym} 1380 -650 2 0 {name=r2}
C {bus_connect_nolab.sym} 1380 -590 2 0 {name=r3}
C {lab_wire.sym} 1360 -700 0 0 {name=p14 sig_type=std_logic lab=do[2]}
C {lab_wire.sym} 1360 -640 0 0 {name=p15 sig_type=std_logic lab=do[1]}
C {lab_wire.sym} 1360 -580 0 0 {name=p16 sig_type=std_logic lab=do[0]}
C {vsource.sym} 1280 -700 3 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 1280 -640 3 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 1280 -580 3 0 {name=V3 value=0 savecurrent=false}
C {lab_wire.sym} 1240 -700 0 0 {name=p17 sig_type=std_logic lab=do2}
C {lab_wire.sym} 1240 -640 0 0 {name=p18 sig_type=std_logic lab=do1}
C {lab_wire.sym} 1240 -580 0 0 {name=p19 sig_type=std_logic lab=do0}
C {netlist_at_end.sym} 550 -330 0 0 {name=DFFBYPASS only_toplevel=false value="
a211 D0 NQ0 inv1
a212 NQ0 Q0 inv1
a221 D1 NQ1 inv1
a222 NQ1 Q1 inv1
"
spice_ignore=true}
