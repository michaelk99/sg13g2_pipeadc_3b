v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 570 -230 610 -230 {lab=vc_p}
N 610 -200 610 -170 {lab=vc_p}
N 570 -170 610 -170 {lab=vc_p}
N 610 -200 680 -200 {lab=vc_p}
N 610 -230 610 -200 {lab=vc_p}
N 460 -230 510 -230 {lab=vi1}
N 460 -170 510 -170 {lab=vi2}
N 540 -130 540 -100 {lab=di_2}
N 460 -100 540 -100 {lab=di_2}
N 540 -300 540 -270 {lab=di_1}
N 460 -300 540 -300 {lab=di_1}
N 740 -200 780 -200 {lab=vo}
N 460 -60 560 -60 {lab=vss}
N 560 -270 560 -60 {lab=vss}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {devices/capa.sym} 710 -200 3 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {switch_ngspice.sym} 540 -230 3 1 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=ron ROFF=roff )"}
C {switch_ngspice.sym} 540 -170 3 0 {name=S2 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=ron ROFF=roff )"}
C {ipin.sym} 460 -300 0 0 {name=p1 lab=di_1}
C {ipin.sym} 460 -100 0 0 {name=p2 lab=di_2}
C {iopin.sym} 460 -230 0 1 {name=p3 lab=vi1}
C {iopin.sym} 460 -170 0 1 {name=p4 lab=vi2}
C {iopin.sym} 780 -200 0 0 {name=p5 lab=vo}
C {iopin.sym} 460 -60 0 1 {name=p6 lab=vss}
C {lab_wire.sym} 650 -200 0 0 {name=p7 sig_type=std_logic lab=vc_p}
