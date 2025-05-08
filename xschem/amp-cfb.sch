v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -480 250 -480 {
lab=vi_p}
N 230 -380 250 -380 {
lab=vi_n}
N 470 -610 470 -580 {
lab=vo_p}
N 470 -490 470 -480 {
lab=vgndn}
N 470 -370 470 -340 {
lab=vgndp}
N 470 -280 470 -250 {
lab=vo_n}
N 470 -490 480 -480 {
lab=vgndn}
N 480 -480 530 -480 {
lab=vgndn}
N 470 -370 480 -380 {
lab=vgndp}
N 480 -380 530 -380 {
lab=vgndp}
N 530 -480 530 -460 {
lab=vgndn}
N 670 -350 670 -330 {
lab=di_ena}
N 470 -520 470 -490 {
lab=vgndn}
N 470 -380 470 -370 {
lab=vgndp}
N 670 -530 670 -510 {lab=ibias_1u}
N 530 -460 550 -460 {lab=vgndn}
N 530 -400 530 -380 {lab=vgndp}
N 530 -400 550 -400 {lab=vgndp}
N 400 -380 470 -380 {lab=vgndp}
N 400 -480 470 -480 {lab=vgndn}
N 400 -380 400 -340 {lab=vgndp}
N 330 -380 400 -380 {lab=vgndp}
N 400 -280 400 -250 {lab=vo_n}
N 400 -250 470 -250 {lab=vo_n}
N 400 -520 400 -480 {lab=vgndn}
N 330 -480 400 -480 {lab=vgndn}
N 400 -610 400 -580 {lab=vo_p}
N 400 -610 470 -610 {lab=vo_p}
N 230 -560 250 -560 {lab=vi_p}
N 230 -560 230 -480 {lab=vi_p}
N 310 -560 330 -560 {lab=vgndn}
N 330 -560 330 -480 {lab=vgndn}
N 310 -480 330 -480 {lab=vgndn}
N 930 -410 980 -410 {lab=vo_n}
N 950 -450 980 -450 {lab=vo_p}
N 230 -300 250 -300 {lab=vi_n}
N 230 -380 230 -300 {lab=vi_n}
N 310 -300 330 -300 {lab=vgndp}
N 330 -380 330 -300 {lab=vgndp}
N 310 -380 330 -380 {lab=vgndp}
N 190 -480 230 -480 {lab=vi_p}
N 190 -380 230 -380 {lab=vi_n}
N 630 -540 630 -510 {lab=vdd_1v5}
N 730 -450 780 -450 {lab=vo_p}
N 780 -610 780 -450 {lab=vo_p}
N 470 -610 780 -610 {lab=vo_p}
N 470 -250 780 -250 {lab=vo_n}
N 780 -410 780 -250 {lab=vo_n}
N 730 -410 780 -410 {lab=vo_n}
N 1110 -250 1110 -180 {lab=vss}
N 820 -410 820 -380 {lab=vo_n}
N 820 -320 820 -180 {lab=vss}
N 780 -410 820 -410 {lab=vo_n}
N 880 -450 880 -380 {lab=vo_p}
N 880 -320 880 -180 {lab=vss}
N 780 -450 880 -450 {lab=vo_p}
N 930 -280 1050 -280 {lab=vo_n}
N 930 -410 930 -280 {lab=vo_n}
N 820 -410 930 -410 {lab=vo_n}
N 950 -340 1050 -340 {lab=vo_p}
N 880 -450 950 -450 {lab=vo_p}
N 760 -310 1050 -310 {lab=vfb}
N 760 -380 760 -310 {lab=vfb}
N 730 -380 760 -380 {lab=vfb}
N 730 -360 750 -360 {lab=#net1}
N 750 -360 750 -210 {lab=#net1}
N 750 -210 1210 -210 {lab=#net1}
N 1210 -280 1210 -210 {lab=#net1}
N 1180 -280 1210 -280 {lab=#net1}
N 1180 -340 1260 -340 {lab=vcm}
N 1260 -180 1370 -180 {lab=vss}
N 950 -450 950 -340 {lab=vo_p}
N 1260 -340 1260 -310 {lab=vcm}
N 1370 -380 1370 -180 {lab=vss}
N 1100 -430 1300 -430 {lab=vphi1}
N 1100 -430 1100 -370 {lab=vphi1}
N 1130 -400 1130 -370 {lab=vphi2}
N 1130 -400 1300 -400 {lab=vphi2}
N 630 -180 630 -160 {lab=vss}
N 1110 -180 1260 -180 {lab=vss}
N 630 -350 630 -180 {lab=vss}
N 1260 -250 1260 -180 {lab=vss}
N 630 -180 820 -180 {lab=vss}
N 820 -180 880 -180 {lab=vss}
N 880 -180 1110 -180 {lab=vss}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {devices/capa.sym} 280 -480 3 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 470 -550 0 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 400 -550 0 0 {name=R2
value=\{Rfb\}
footprint=1206
device=resistor
m=1
noisy=0
spice_ignore=true}
C {devices/capa.sym} 880 -350 0 0 {name=C3
m=1
value=100f
footprint=1206
device="ceramic capacitor"
}
C {devices/capa.sym} 280 -380 3 0 {name=C4
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 470 -310 0 0 {name=C5
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 820 -350 0 0 {name=C6
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 400 -310 0 0 {name=R4
value=\{Rfb\}
footprint=1206
device=resistor
m=1
noisy=0
ignore_ngspice=True
spice_ignore=true}
C {ota-5t-fd.sym} 550 -460 0 0 {name=xamp1
}
C {devices/res.sym} 280 -300 3 0 {name=R1
value=\{Rfb\}
footprint=1206
device=resistor
m=1
noisy=0
ignore_ngspice=True
spice_ignore=true}
C {devices/res.sym} 280 -560 3 0 {name=R3
value=\{Rfb\}
footprint=1206
device=resistor
m=1
noisy=0
ignore_ngspice=True
spice_ignore=true}
C {lab_wire.sym} 530 -480 0 0 {name=p1 sig_type=std_logic lab=vgndn}
C {lab_wire.sym} 530 -380 0 0 {name=p2 sig_type=std_logic lab=vgndp}
C {ipin.sym} 190 -480 0 0 {name=p3 lab=vi_p}
C {ipin.sym} 190 -380 0 0 {name=p4 lab=vi_n}
C {ipin.sym} 670 -330 3 0 {name=p5 lab=di_ena}
C {iopin.sym} 630 -160 1 0 {name=p6 lab=vss}
C {iopin.sym} 630 -540 3 0 {name=p7 lab=vdd_1v5}
C {ipin.sym} 670 -530 1 0 {name=p8 lab=ibias_1u}
C {opin.sym} 980 -410 0 0 {name=p9 lab=vo_n}
C {opin.sym} 980 -450 0 0 {name=p10 lab=vo_p}
C {cmfb_sc.sym} 1180 -370 0 1 {name=xcmfb1
}
C {clk_noverlap_ideal.sym} 1440 -450 0 1 {name=xclkgen1 fs=100Meg tnover=2n tdelay=0 trf=0.1n}
C {vsource.sym} 1260 -280 0 0 {name=V1 value=0.75 savecurrent=false}
C {lab_wire.sym} 1240 -430 0 0 {name=p11 sig_type=std_logic lab=vphi1}
C {lab_wire.sym} 1240 -400 0 0 {name=p12 sig_type=std_logic lab=vphi2}
C {lab_wire.sym} 1240 -340 0 0 {name=p13 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 990 -310 0 0 {name=p14 sig_type=std_logic lab=vfb}
