v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {ADC only works for f_sig < fs/10!} 20 -490 0 0 0.5 0.5 {}
N 290 -310 290 -260 {
lab=vcm}
N 290 -260 360 -260 {
lab=vcm}
N 360 -260 360 -230 {
lab=vcm}
N 360 -260 430 -260 {
lab=vcm}
N 430 -310 430 -260 {
lab=vcm}
N 360 -170 360 -140 {
lab=GND}
N 290 -390 290 -370 {
lab=vi_p}
N 270 -390 290 -390 {
lab=vi_p}
N 430 -390 430 -370 {
lab=vi_n}
N 430 -390 450 -390 {
lab=vi_n}
N 330 -360 390 -360 {
lab=vid}
N 330 -320 330 -300 {
lab=GND}
N 330 -300 360 -300 {
lab=GND}
N 360 -300 390 -300 {
lab=GND}
N 390 -320 390 -300 {
lab=GND}
N 360 -300 360 -290 {
lab=GND}
N 50 -200 50 -170 {
lab=GND}
N 620 -350 660 -350 {
lab=vi_p}
N 620 -290 660 -290 {
lab=vi_n}
N 750 -420 750 -380 {
lab=vcm}
N 130 -300 130 -260 {
lab=vref}
N 50 -290 50 -260 {
lab=vclk}
N 770 -420 770 -380 {lab=vclk}
N 730 -260 730 -210 {lab=GND}
N 810 -340 840 -340 {lab=do}
N 130 -200 130 -170 {lab=GND}
N 810 -300 840 -300 {lab=do_b}
N 730 -420 730 -380 {lab=vdd}
N 210 -200 210 -170 {
lab=GND}
N 210 -290 210 -260 {
lab=vdd}
C {devices/vsource.sym} 360 -200 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 430 -340 0 0 {name=E1 value=-0.5}
C {devices/vcvs.sym} 290 -340 0 1 {name=E2 value=0.5}
C {devices/vsource.sym} 360 -330 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 360 -140 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 270 -390 0 0 {name=l3 sig_type=std_logic lab=vi_p}
C {devices/lab_pin.sym} 450 -390 0 1 {name=l4 sig_type=std_logic lab=vi_n
}
C {devices/lab_pin.sym} 430 -260 0 1 {name=l2 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 360 -360 1 0 {name=l5 sig_type=std_logic lab=vid}
C {devices/gnd.sym} 360 -290 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 50 -230 0 0 {name=VCLK value="0"
}
C {devices/lab_pin.sym} 50 -290 1 0 {name=p8 sig_type=std_logic lab=vclk}
C {devices/gnd.sym} 50 -170 0 0 {name=l7 lab=GND}
C {devices/launcher.sym} 110 -100 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} -720 -710 0 0 {name=STIMULI
only_toplevel=false
value="
.options savecurrents
.control
save all

** Set clock signal
let fs = 2Meg
let fclk = fs
let tper_clk = 1/fclk
let tfr_clk = tper_clk/100
let ton_clk = tper_clk/2-2*tfr_clk

** Set input signal
let f_sig = 200k
let tper_sig = 1/f_sig
let tfr_sig = tper_sig/100
*let ton_sig = tper_sig*1/1000
let ton_sig = tper_sig/10-2*tfr_sig

** Set sources
alter @VCLK[PULSE]=[ 0 1.5 0 $&tfr_clk $&tfr_clk $&ton_clk $&tper_clk 0 ]
alter @VIN[PULSE]=[ -0.2 0.2 0 $&tfr_sig $&tfr_sig $&ton_sig $&tper_sig 0 ]
*alter @VIN[SIN] = [ 0 1.5 $&f_sig 0 0 0 ]
alter @VIN[DC] = 0.0


** Set transient simulation parameters
let tstep = 0.0001/fclk
let tstop = 5/f_sig
let tstart = 0

** Main Simulations	
tran $&tstep $&tstop $&tstart $&tstep
setplot tran1
let vp = xadc.xcomp.vp
let vq = xadc.xcomp.vq
plot vid do vclk
plot vp vq
op
remzerovec
write adc-tri-lvl-ideal_tb.raw
.endc"}
C {devices/vsource.sym} 130 -230 0 0 {name=V3 value=1.5
}
C {devices/lab_pin.sym} 620 -350 0 0 {name=l11 sig_type=std_logic lab=vi_p}
C {devices/lab_pin.sym} 620 -290 0 0 {name=l12 sig_type=std_logic lab=vi_n
}
C {devices/lab_pin.sym} 130 -300 1 0 {name=l26 sig_type=std_logic lab=vref
}
C {devices/lab_pin.sym} 750 -420 3 1 {name=l9 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} 770 -420 1 0 {name=p1 sig_type=std_logic lab=vclk}
C {devices/gnd.sym} 730 -210 0 0 {name=l8 lab=GND}
C {title.sym} 160 -30 0 0 {name=l10 author="Michael Koefinger"}
C {lab_wire.sym} 830 -340 0 1 {name=p9 sig_type=std_logic lab=do}
C {devices/gnd.sym} 130 -170 0 0 {name=l13 lab=GND}
C {adc-1b-ideal.sym} 630 -380 0 0 {name=xadc}
C {lab_wire.sym} 830 -300 0 1 {name=p2 sig_type=std_logic lab=do_b}
C {devices/vsource.sym} 210 -230 0 0 {name=V1 value=1.5
}
C {devices/gnd.sym} 210 -170 0 0 {name=V5 lab=GND
value=1.5}
C {devices/lab_pin.sym} 210 -290 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 730 -420 1 0 {name=p4 sig_type=std_logic lab=vdd}
