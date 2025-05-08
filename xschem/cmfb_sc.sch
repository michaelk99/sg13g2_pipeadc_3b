v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 490 -480 590 -480 {lab=vo_p}
N 710 -480 790 -480 {lab=vsw_cm_p}
N 710 -480 710 -450 {lab=vsw_cm_p}
N 650 -480 710 -480 {lab=vsw_cm_p}
N 710 -340 710 -290 {lab=vsw_vbias}
N 710 -180 790 -180 {lab=vsw_cm_n}
N 490 -180 590 -180 {lab=vo_n}
N 490 -230 490 -180 {lab=vo_n}
N 420 -180 490 -180 {lab=vo_n}
N 490 -340 490 -290 {lab=vfb}
N 490 -480 490 -450 {lab=vo_p}
N 420 -480 490 -480 {lab=vo_p}
N 420 -340 490 -340 {lab=vfb}
N 490 -390 490 -340 {lab=vfb}
N 490 -340 590 -340 {lab=vfb}
N 650 -340 710 -340 {lab=vsw_vbias}
N 710 -390 710 -340 {lab=vsw_vbias}
N 710 -340 790 -340 {lab=vsw_vbias}
N 710 -230 710 -180 {lab=vsw_cm_n}
N 650 -180 710 -180 {lab=vsw_cm_n}
N 880 -480 920 -480 {lab=vcm}
N 820 -620 820 -220 {lab=vphi2}
N 420 -620 820 -620 {lab=vphi2}
N 620 -600 620 -220 {lab=vphi1}
N 420 -600 620 -600 {lab=vphi1}
N 880 -480 880 -180 {lab=vcm}
N 850 -480 880 -480 {lab=vcm}
N 850 -180 880 -180 {lab=vcm}
N 420 -570 600 -570 {lab=vss}
N 600 -570 600 -220 {lab=vss}
N 600 -570 800 -570 {lab=vss}
N 800 -570 800 -220 {lab=vss}
N 850 -340 920 -340 {lab=vbias}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {capa.sym} 490 -420 0 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 710 -420 0 0 {name=C2
m=1
value=\{\{cap\}/\{div\}\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 490 -260 0 0 {name=C3
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 710 -260 0 0 {name=C4
m=1
value=\{\{cap\}/\{div\}\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 620 -480 1 0 {name=S3 model=SW1
device_model=".MODEL SW1 SW( VT=0.9 VH=0.01 RON=0.01 ROFF=10G )"}
C {switch_ngspice.sym} 820 -480 1 0 {name=S4 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=1 ROFF=1G )"}
C {switch_ngspice.sym} 620 -340 1 0 {name=S6 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=1 ROFF=1G )"}
C {switch_ngspice.sym} 820 -340 1 0 {name=S7 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=1 ROFF=1G )"}
C {switch_ngspice.sym} 620 -180 1 0 {name=S9 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=1 ROFF=1G )"}
C {switch_ngspice.sym} 820 -180 1 0 {name=S10 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=1 ROFF=1G )"}
C {ipin.sym} 920 -480 0 1 {name=p1 lab=vcm}
C {ipin.sym} 420 -620 0 0 {name=p3 lab=vphi2}
C {ipin.sym} 420 -600 0 0 {name=p4 lab=vphi1}
C {iopin.sym} 420 -570 0 1 {name=p5 lab=vss}
C {ipin.sym} 920 -340 0 1 {name=p2 lab=vbias}
C {iopin.sym} 420 -480 0 1 {name=p6 lab=vo_p}
C {iopin.sym} 420 -180 0 1 {name=p7 lab=vo_n}
C {opin.sym} 420 -340 0 1 {name=p8 lab=vfb}
C {lab_wire.sym} 750 -180 0 0 {name=p9 sig_type=std_logic lab=vsw_cm_n}
C {lab_wire.sym} 750 -340 0 0 {name=p10 sig_type=std_logic lab=vsw_vbias}
C {lab_wire.sym} 750 -480 0 0 {name=p11 sig_type=std_logic lab=vsw_cm_p}
