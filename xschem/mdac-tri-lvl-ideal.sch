v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 0 990 -420 1040 -200 {}
P 4 1 200 -540 {}
T {Single-ended analysis: vo[n+1] = - 2 * vi[n] - vdac[n+1]
Differential: invert input vi to get non-inverting output, do not invert vdac to get subtraction} 20 -820 0 0 0.4 0.4 {}
N 970 -450 990 -450 {lab=vgndn}
N 970 -390 990 -390 {lab=vgndp}
N 910 -470 970 -470 {lab=vgndn}
N 890 -370 970 -370 {lab=vgndp}
N 1440 -440 1530 -440 {lab=vo_p}
N 1490 -400 1530 -400 {lab=vo_n}
N 1170 -570 1240 -570 {lab=vgndn}
N 890 -590 1340 -590 {lab=vgndp}
N 730 -540 770 -540 {lab=vss}
N 730 -160 770 -160 {lab=vss}
N 730 -280 770 -280 {lab=vss}
N 730 -410 770 -410 {lab=vss}
N 730 -190 890 -190 {lab=vgndp}
N 730 -310 890 -310 {lab=vgndp}
N 790 -440 910 -440 {lab=vgndn}
N 730 -570 790 -570 {lab=vgndn}
N 730 -440 790 -440 {lab=vgndn}
N 540 -560 620 -560 {lab=vi_p}
N 540 -300 620 -300 {lab=vi_n}
N 540 -430 620 -430 {lab=vi_p}
N 510 -560 540 -560 {lab=vi_p}
N 540 -180 620 -180 {lab=vi_n}
N 510 -300 540 -300 {lab=vi_n}
N 540 -580 620 -580 {lab=vo_p}
N 540 -700 1440 -700 {lab=vo_p}
N 1240 -440 1440 -440 {lab=vo_p}
N 560 -320 620 -320 {lab=vo_n}
N 1340 -400 1400 -400 {lab=vo_n}
N 430 -200 620 -200 {lab=vdac_p}
N 430 -450 620 -450 {lab=vdac_n}
N 430 -170 450 -170 {lab=vss}
N 430 -420 450 -420 {lab=vss}
N 200 -480 230 -480 {lab=vref_p}
N 270 -420 310 -420 {lab=vcm}
N 200 -420 270 -420 {lab=vcm}
N 270 -170 310 -170 {lab=vcm}
N 230 -480 310 -480 {lab=vref_p}
N 250 -450 310 -450 {lab=vref_n}
N 200 -450 250 -450 {lab=vref_n}
N 970 -470 970 -450 {lab=vgndn}
N 970 -390 970 -370 {lab=vgndp}
N 1240 -480 1240 -440 {lab=vo_p}
N 1340 -480 1340 -400 {lab=vo_n}
N 1240 -570 1240 -540 {lab=vgndn}
N 1340 -590 1340 -540 {lab=vgndp}
N 890 -590 890 -370 {lab=vgndp}
N 770 -160 770 -100 {lab=vss}
N 770 -410 770 -280 {lab=vss}
N 770 -540 770 -410 {lab=vss}
N 890 -310 890 -190 {lab=vgndp}
N 890 -370 890 -310 {lab=vgndp}
N 910 -470 910 -440 {lab=vgndn}
N 910 -570 910 -470 {lab=vgndn}
N 790 -570 790 -440 {lab=vgndn}
N 540 -560 540 -430 {lab=vi_p}
N 540 -300 540 -180 {lab=vi_n}
N 450 -170 450 -100 {lab=vss}
N 230 -480 230 -200 {lab=vref_p}
N 270 -420 270 -170 {lab=vcm}
N 290 -510 310 -510 {lab=di_code[2..0]
bus=true}
N 290 -260 310 -260 {lab=di_code[2..0]
bus=true}
N 290 -510 290 -260 {lab=di_code[2..0]
bus=true}
N 200 -510 290 -510 {lab=di_code[2..0]
bus=true}
N 580 -540 620 -540 {lab=vtrack}
N 440 -580 440 -540 {lab=vtrack}
N 200 -580 440 -580 {lab=vtrack}
N 580 -410 620 -410 {lab=vtrack}
N 580 -540 580 -410 {lab=vtrack}
N 440 -540 580 -540 {lab=vtrack}
N 580 -280 620 -280 {lab=vtrack}
N 580 -410 580 -280 {lab=vtrack}
N 580 -160 620 -160 {lab=vtrack}
N 580 -280 580 -160 {lab=vtrack}
N 600 -600 620 -600 {lab=vhold}
N 600 -470 620 -470 {lab=vhold}
N 600 -600 600 -470 {lab=vhold}
N 600 -340 620 -340 {lab=vhold}
N 600 -470 600 -340 {lab=vhold}
N 600 -220 620 -220 {lab=vhold}
N 600 -340 600 -220 {lab=vhold}
N 200 -720 1110 -720 {lab=ibias_1u5}
N 560 -680 1400 -680 {lab=vo_n}
N 560 -680 560 -320 {lab=vo_n}
N 540 -700 540 -580 {lab=vo_p}
N 440 -630 440 -580 {lab=vtrack}
N 440 -630 1280 -630 {lab=vtrack}
N 1280 -630 1280 -510 {lab=vtrack}
N 1380 -630 1380 -510 {lab=vtrack}
N 1280 -630 1380 -630 {lab=vtrack}
N 1400 -680 1400 -400 {lab=vo_n}
N 1440 -700 1440 -440 {lab=vo_p}
N 200 -600 600 -600 {lab=vhold}
N 200 -120 1110 -120 {lab=di_ena}
N 450 -100 770 -100 {lab=vss}
N 200 -100 450 -100 {lab=vss}
N 770 -280 770 -160 {lab=vss}
N 450 -420 450 -170 {lab=vss}
N 1280 -490 1380 -490 {lab=vss}
N 1280 -490 1280 -100 {lab=vss}
N 250 -230 310 -230 {lab=vref_n}
N 250 -450 250 -230 {lab=vref_n}
N 230 -200 310 -200 {lab=vref_p}
N 990 -460 1020 -460 {lab=vgndn}
N 990 -460 990 -450 {lab=vgndn}
N 990 -380 1020 -380 {lab=vgndp}
N 990 -390 990 -380 {lab=vgndp}
N 1140 -400 1340 -400 {lab=vo_n}
N 1170 -440 1240 -440 {lab=vo_p}
N 980 -420 1020 -420 {lab=vcm}
N 770 -100 1280 -100 {lab=vss}
N 200 -740 860 -740 {lab=vdd_1v5}
N 270 -170 270 -140 {lab=vcm}
N 270 -140 980 -140 {lab=vcm}
N 1170 -570 1170 -540 {lab=vgndn}
N 910 -570 1170 -570 {lab=vgndn}
N 1170 -480 1170 -440 {lab=vo_p}
N 1140 -440 1170 -440 {lab=vo_p}
N 1340 -590 1490 -590 {lab=vgndp}
N 1490 -590 1490 -550 {lab=vgndp}
N 1490 -490 1490 -400 {lab=vo_n}
N 1400 -400 1490 -400 {lab=vo_n}
N 980 -420 980 -140 {lab=vcm}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {switch_ngspice.sym} 1240 -510 0 1 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=10 ROFF=10Meg )"}
C {lab_wire.sym} 970 -470 0 0 {name=p1 sig_type=std_logic lab=vgndn}
C {lab_wire.sym} 970 -370 0 0 {name=p2 sig_type=std_logic lab=vgndp}
C {ipin.sym} 510 -560 0 0 {name=p3 lab=vi_p}
C {ipin.sym} 510 -300 0 0 {name=p4 lab=vi_n}
C {ipin.sym} 200 -120 0 0 {name=p5 lab=di_ena}
C {iopin.sym} 200 -100 2 0 {name=p6 lab=vss}
C {iopin.sym} 200 -740 2 0 {name=p7 lab=vdd_1v5}
C {ipin.sym} 200 -720 0 0 {name=p8 lab=ibias_1u5}
C {opin.sym} 1530 -400 0 0 {name=p9 lab=vo_n}
C {opin.sym} 1530 -440 0 0 {name=p10 lab=vo_p}
C {switch_ngspice.sym} 1340 -510 0 1 {name=S2 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=10 ROFF=100Meg )"}
C {sw_cap.sym} 620 -610 0 0 {name=xc1 cap=\{cap\} ron=1 roff=1G
}
C {sw_cap.sym} 620 -480 0 0 {name=xc2 cap=\{cap\} ron=1 roff=1G
}
C {sw_cap.sym} 620 -350 0 0 {name=xc3 cap=\{cap\} ron=1 roff=1G
}
C {sw_cap.sym} 620 -230 0 0 {name=xc4 cap=\{cap\} ron=1 roff=1G
}
C {ipin.sym} 200 -480 0 0 {name=p12 lab=vref_p}
C {ipin.sym} 200 -450 0 0 {name=p13 lab=vref_n}
C {sw_dac.sym} 310 -520 0 0 {name=xsw1 ron=1 roff=1G
}
C {sw_dac.sym} 310 -270 0 0 {name=xsw2 ron=1 roff=1G
}
C {ipin.sym} 200 -420 0 0 {name=p14 lab=vcm}
C {ipin.sym} 200 -510 0 0 {name=p15 lab=di_code[2..0]}
C {ipin.sym} 200 -580 0 0 {name=p16 lab=vtrack}
C {ipin.sym} 200 -600 0 0 {name=p17 lab=vhold}
C {lab_wire.sym} 290 -510 0 0 {name=p24 sig_type=std_logic lab=di_code[2..0]}
C {lab_wire.sym} 1280 -580 3 0 {name=p21 sig_type=std_logic lab=vtrack}
C {lab_wire.sym} 1380 -580 3 0 {name=p22 sig_type=std_logic lab=vtrack}
C {lab_wire.sym} 520 -200 0 0 {name=p18 sig_type=std_logic lab=vdac_p}
C {lab_wire.sym} 520 -450 0 0 {name=p19 sig_type=std_logic lab=vdac_n}
C {ota_fd_2pole.sym} 1040 -520 0 0 {name=xota GM=10u RO=2Meg CO=10f RP=1 CP=10f VCMO=0.75 I0=1.5u}
C {noconn.sym} 1110 -120 0 1 {name=l2}
C {noconn.sym} 860 -740 0 1 {name=l3}
C {noconn.sym} 1110 -720 0 1 {name=l4}
C {capa.sym} 1170 -510 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
C {capa.sym} 1490 -520 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"
spice_ignore=true}
