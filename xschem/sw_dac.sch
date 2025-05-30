v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 780 -290 820 -290 {lab=vo}
N 670 -420 720 -420 {lab=#net1}
N 670 -290 720 -290 {lab=vref_n}
N 670 -70 770 -70 {lab=vss}
N 780 -160 820 -160 {lab=vo}
N 820 -290 820 -160 {lab=vo}
N 780 -420 820 -420 {lab=vo}
N 820 -420 820 -290 {lab=vo}
N 820 -290 950 -290 {lab=vo}
N 670 -160 720 -160 {lab=vcm}
N 770 -460 770 -70 {lab=vss}
N 500 -510 530 -510 {lab=di_code[2..0]
bus=true}
N 530 -510 530 -250 {lab=di_code[2..0]
bus=true}
N 540 -500 750 -500 {lab=di_code2}
N 750 -500 750 -460 {lab=di_code2}
N 540 -370 750 -370 {lab=di_code1}
N 750 -370 750 -330 {lab=di_code1}
N 540 -250 750 -250 {lab=di_code0}
N 750 -250 750 -200 {lab=di_code0}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
C {switch_ngspice.sym} 750 -420 3 1 {name=S1 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=ron ROFF=roff )"}
C {switch_ngspice.sym} 750 -290 3 1 {name=S2 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=ron ROFF=roff )"}
C {ipin.sym} 500 -510 0 0 {name=p1 lab=di_code[2..0]}
C {iopin.sym} 670 -420 0 1 {name=p3 lab=vref_p}
C {iopin.sym} 670 -290 0 1 {name=p4 lab=vref_n}
C {iopin.sym} 950 -290 0 0 {name=p5 lab=vo}
C {iopin.sym} 670 -70 0 1 {name=p6 lab=vss}
C {iopin.sym} 670 -160 0 1 {name=p2 lab=vcm}
C {switch_ngspice.sym} 750 -160 3 1 {name=S3 model=SW1
device_model=".MODEL SW1 SW( VT=0.75 VH=0.01 RON=ron ROFF=roff )"}
C {bus_connect_nolab.sym} 530 -380 2 1 {name=r1}
C {bus_connect_nolab.sym} 530 -260 2 1 {name=r2}
C {bus_connect_nolab.sym} 530 -510 2 1 {name=r3}
C {lab_wire.sym} 640 -500 0 0 {name=p7 sig_type=std_logic lab=di_code2}
C {lab_wire.sym} 640 -370 0 0 {name=p8 sig_type=std_logic lab=di_code1}
C {lab_wire.sym} 660 -250 0 0 {name=p9 sig_type=std_logic lab=di_code0}
