v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -210 350 -160 {lab=vss}
N 480 -290 590 -290 {lab=do3}
N 670 -210 670 -160 {lab=vss}
N 670 -440 670 -380 {lab=vdd_1v5}
N 480 -270 590 -270 {lab=do2[2..0]
bus=true}
N 210 -460 370 -460 {lab=di_ena}
N 370 -460 370 -330 {lab=di_ena}
N 520 -480 520 -320 {lab=di_rst}
N 520 -320 590 -320 {lab=di_rst}
N 390 -500 540 -500 {lab=vphi1}
N 540 -500 540 -340 {lab=vphi1}
N 540 -340 590 -340 {lab=vphi1}
N 390 -500 390 -330 {lab=vphi1}
N 410 -520 410 -330 {lab=vphi2}
N 430 -540 430 -330 {lab=vref}
N 450 -560 450 -330 {lab=vcm}
N 210 -440 350 -440 {lab=vdd_1v5}
N 350 -440 350 -330 {lab=vdd_1v5}
N 350 -440 670 -440 {lab=vdd_1v5}
N 210 -480 520 -480 {lab=di_rst}
N 210 -500 390 -500 {lab=vphi1}
N 210 -520 410 -520 {lab=vphi2}
N 210 -540 430 -540 {lab=vref}
N 210 -560 450 -560 {lab=vcm}
N 210 -310 260 -310 {lab=vinp}
N 210 -230 260 -230 {lab=vinn}
N 350 -160 670 -160 {lab=vss}
N 210 -160 350 -160 {lab=vss}
N 760 -250 890 -250 {lab=do_b[2..0]
bus=true}
N 480 -250 590 -250 {lab=do1[2..0]
bus=true}
N 410 -520 940 -520 {lab=vphi2}
N 940 -520 940 -320 {lab=vphi2}
N 760 -320 940 -320 {lab=vphi2}
C {title.sym} 160 -30 0 0 {name=l1 author="D. Brandstetter, M. Koefinger"}
C {adc-pipe-3b-core-ideal.sym} 260 -330 0 0 {name=xpipe}
C {lab_wire.sym} 560 -250 0 0 {name=p11 sig_type=std_logic lab=do1[2..0]}
C {lab_wire.sym} 560 -270 0 0 {name=p19 sig_type=std_logic lab=do2[2..0]}
C {lab_wire.sym} 520 -290 0 0 {name=p21 sig_type=std_logic lab=do3}
C {ipin.sym} 210 -310 0 0 {name=p1 lab=vinp}
C {ipin.sym} 210 -230 0 0 {name=p2 lab=vinn}
C {ipin.sym} 210 -480 0 0 {name=p3 lab=di_rst}
C {ipin.sym} 210 -460 0 0 {name=p4 lab=di_ena}
C {ipin.sym} 210 -500 0 0 {name=p6 lab=vphi1}
C {ipin.sym} 210 -520 0 0 {name=p5 lab=vphi2}
C {ipin.sym} 210 -540 0 0 {name=p7 lab=vref}
C {ipin.sym} 210 -560 0 0 {name=p8 lab=vcm}
C {iopin.sym} 210 -440 0 1 {name=p9 lab=vdd_1v5}
C {iopin.sym} 210 -160 0 1 {name=p10 lab=vss}
C {opin.sym} 890 -250 0 0 {name=p12 lab=do_b[2..0]}
C {lab_wire.sym} 560 -250 0 0 {name=p13 sig_type=std_logic lab=do1[2..0]}
C {adc-pipe-encoder-top.sym} 670 -300 0 0 {name=ADUT model=encoder

***Verilator***
device_model=".model encoder d_cosim simulation=\\"/foss/designs/verilog/rtl/adc_pipe_encoder_TOP.so\\""

*tclcommand="edit_file [abs_sym_path adc.v]"}
