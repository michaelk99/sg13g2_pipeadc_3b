v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -140 600 -140 {lab=vss}
N 600 -170 600 -140 {lab=vss}
N 550 -140 550 -120 {lab=vss}
N 470 -140 550 -140 {lab=vss}
N 600 -330 600 -230 {lab=vphi2}
N 470 -330 470 -310 {lab=vphi1}
N 470 -250 470 -140 {lab=vss}
C {vsource.sym} 470 -280 0 0 {name=V1 value="0 PULSE 0 1.5 \{tdelay\} \{trf\} \{trf\} \{0.5/\{fs\}-\{tnover\}\} \{1/\{fs\}\} 0 " savecurrent=false}
C {iopin.sym} 550 -120 1 0 {name=p1 lab=vss}
C {opin.sym} 470 -330 3 0 {name=p2 lab=vphi1}
C {vsource.sym} 600 -200 0 0 {name=V2 value="0 PULSE 0 1.5 \{\{tdelay\}+\{0.5/\{fs\}\}\} \{trf\} \{trf\} \{0.5/\{fs\}-\{tnover\}\} \{1/\{fs\}\} 0 " savecurrent=false}
C {opin.sym} 600 -330 3 0 {name=p3 lab=vphi2}
C {title.sym} 160 0 0 0 {name=l1 author="Michael Koefinger"}
