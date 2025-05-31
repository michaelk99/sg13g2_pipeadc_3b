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
N 620 -360 660 -360 {
lab=vi_p}
N 620 -340 660 -340 {
lab=vi_n}
N 620 -320 660 -320 {
lab=vref}
N 620 -300 660 -300 {
lab=vcm}
N 130 -300 130 -260 {
lab=vref}
N 50 -290 50 -260 {
lab=vclk}
N 640 -280 660 -280 {lab=vclk}
N 750 -240 750 -190 {lab=GND}
N 850 -310 940 -310 {lab=do[2..0]
bus=true}
N 950 -300 1030 -300 {lab=do2}
N 950 -270 1030 -270 {lab=do1}
N 950 -240 1030 -240 {lab=do0}
N 130 -200 130 -170 {lab=GND}
N 940 -310 940 -220 {lab=do[2..0]
bus=true}
N 640 -280 640 -260 {lab=vclk}
N 620 -280 640 -280 {lab=vclk}
N 640 -260 660 -260 {lab=vclk}
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
let tfr_sig = tper_sig*5/10
let ton_sig = tper_sig*1/1000

** Set sources
alter @VCLK[PULSE]=[ 0 1.5 0 $&tfr_clk $&tfr_clk $&ton_clk $&tper_clk 0 ]
*alter @VIN[PULSE]=[ -1.5 1.5 0 $&tfr_sig $&tfr_sig $&ton_sig $&tper_sig 0 ]
alter @VIN[SIN] = [ 0 1.5 $&f_sig 0 0 0 ]
alter @VIN[DC] = 0.0


** Set transient simulation parameters
let tstep = 0.001/fclk
let tstop = 1/f_sig
let tstart = 0

** Main Simulations	
tran $&tstep $&tstop $&tstart $&tstep
setplot tran1
plot vid do2 do1 do0
op
remzerovec
write adc-tri-lvl-ideal_tb.raw
.endc"}
C {devices/vsource.sym} 130 -230 0 0 {name=V3 value=1.5
}
C {devices/lab_pin.sym} 620 -360 0 0 {name=l11 sig_type=std_logic lab=vi_p}
C {devices/lab_pin.sym} 620 -340 0 0 {name=l12 sig_type=std_logic lab=vi_n
}
C {devices/lab_pin.sym} 130 -300 1 0 {name=l26 sig_type=std_logic lab=vref
}
C {devices/lab_pin.sym} 620 -320 0 0 {name=l15 sig_type=std_logic lab=vref
}
C {devices/lab_pin.sym} 620 -300 0 0 {name=l9 sig_type=std_logic lab=vcm}
C {adc-tri-lvl-ideal.sym} 660 -380 0 0 {name=xadc}
C {devices/lab_pin.sym} 620 -280 2 1 {name=p1 sig_type=std_logic lab=vclk}
C {devices/gnd.sym} 750 -190 0 0 {name=l8 lab=GND}
C {title.sym} 160 -30 0 0 {name=l10 author="Michael Koefinger"}
C {lab_wire.sym} 920 -310 0 0 {name=p2 sig_type=std_logic lab=do[2..0]}
C {bus_connect_nolab.sym} 950 -300 2 0 {name=r1}
C {bus_connect_nolab.sym} 950 -270 2 0 {name=r2}
C {bus_connect_nolab.sym} 950 -240 2 0 {name=r3}
C {lab_wire.sym} 1020 -300 0 1 {name=p6 sig_type=std_logic lab=do2}
C {lab_wire.sym} 1020 -270 0 1 {name=p7 sig_type=std_logic lab=do1}
C {lab_wire.sym} 1020 -240 0 1 {name=p9 sig_type=std_logic lab=do0}
C {devices/gnd.sym} 130 -170 0 0 {name=l13 lab=GND}
