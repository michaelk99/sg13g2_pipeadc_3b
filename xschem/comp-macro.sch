v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Ideal Fully Differential Comparator using XSPICE adc_bridge} 330 -540 0 0 0.4 0.4 {}
N 540 -410 580 -410 {
lab=vip_1}
N 540 -370 580 -370 {
lab=vin_1}
N 540 -270 580 -270 {
lab=vin_2}
N 540 -310 580 -310 {
lab=vip_2}
N 620 -440 680 -440 {
lab=#net1}
N 740 -440 810 -440 {lab=#net2}
N 620 -440 620 -420 {lab=#net1}
N 620 -360 620 -320 {lab=#net3}
N 620 -260 620 -210 {lab=vss}
N 870 -440 900 -440 {lab=do}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {devices/adc_bridge.sym} 710 -440 0 0 {name=A1 adc_bridge_model= comp0}
C {devices/vcvs.sym} 620 -390 0 0 {name=E1 value=1}
C {devices/vcvs.sym} 620 -290 0 0 {name=E2 value=1}
C {netlist_at_end.sym} 30 -100 0 0 {name=MODEL only_toplevel=false value="
.model comp0 adc_bridge(in_low=-0.0001 in_high=0.0001)
.model dac1 dac_bridge(out_low = 0 out_high = 1.5 out_undef = 0 input_load = 0.1e-15 t_rise = 0.01e-9 t_fall = 0.01e-9)
"}
C {iopin.sym} 620 -210 3 1 {name=p1 lab=vss}
C {ipin.sym} 540 -410 0 0 {name=p2 lab=vip_1}
C {ipin.sym} 540 -370 0 0 {name=p3 lab=vin_1}
C {ipin.sym} 540 -310 0 0 {name=p5 lab=vip_2}
C {ipin.sym} 540 -270 0 0 {name=p6 lab=vin_2}
C {opin.sym} 900 -440 0 0 {name=p7 lab=do}
C {devices/dac_bridge.sym} 840 -440 0 0 {name=A2 dac_bridge_model= dac1}
