v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -890 120 -860 {
lab=GND}
N 120 -990 120 -950 {
lab=VDD}
N 200 -890 200 -860 {
lab=GND}
N 200 -990 200 -950 {
lab=di_pon}
N 350 -630 350 -560 {
lab=vcmi}
N 430 -560 430 -540 {
lab=vcmi}
N 430 -480 430 -460 {
lab=GND}
N 350 -430 350 -360 {
lab=vin}
N 350 -760 350 -690 {
lab=vip}
N 290 -640 310 -640 {
lab=GND}
N 290 -640 290 -440 {
lab=GND}
N 290 -440 310 -440 {
lab=GND}
N 270 -480 310 -480 {
lab=#net1}
N 270 -680 270 -480 {
lab=#net1}
N 270 -680 310 -680 {
lab=#net1}
N 230 -680 230 -590 {
lab=#net1}
N 230 -680 270 -680 {
lab=#net1}
N 230 -440 230 -410 {
lab=GND}
N 230 -440 290 -440 {
lab=GND}
N 190 -540 190 -510 {
lab=GND}
N 190 -510 230 -510 {
lab=GND}
N 130 -580 130 -540 {
lab=vid}
N 130 -580 190 -580 {
lab=vid}
N 130 -480 130 -410 {
lab=GND}
N 350 -560 350 -490 {
lab=vcmi}
N 350 -560 430 -560 {
lab=vcmi}
N 230 -510 230 -440 {
lab=GND}
N 230 -530 230 -510 {
lab=GND}
N 350 -760 390 -760 {lab=vip}
N 350 -360 390 -360 {lab=vin}
N 450 -360 510 -360 {lab=vinn}
N 510 -760 510 -580 {lab=vipp}
N 450 -760 510 -760 {lab=vipp}
N 510 -520 560 -520 {lab=vinn}
N 510 -520 510 -360 {lab=vinn}
N 510 -580 560 -580 {lab=vipp}
N 630 -470 630 -390 {lab=GND}
N 660 -470 660 -440 {lab=di_pon}
N 630 -750 630 -630 {lab=VDD}
N 660 -750 660 -720 {lab=VDD}
N 660 -660 660 -630 {lab=#net2}
N 870 -520 870 -490 {lab=GND}
N 740 -520 780 -520 {lab=voutn}
N 780 -530 780 -520 {lab=voutn}
N 780 -530 830 -530 {lab=voutn}
N 740 -580 780 -580 {lab=voutp}
N 780 -580 780 -570 {lab=voutp}
N 780 -570 830 -570 {lab=voutp}
N 870 -600 870 -580 {lab=vout}
C {devices/launcher.sym} 680 -200 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} -830 -1200 0 0 {name=STIMULI
only_toplevel=false
value="
.include amp-cfb_tb-tran.save
*.include ../xschem/ota-5t-fd-dev-sav.spice
.options savecurrents
.options method=gear reltol=.005 
.options sparse
.param ibias=20u
.param gain_cl=1
.param ci=100f
.param cfb=ci
.param cl=2*ci
.param Rfb=100M
.param Ri=Rfb
.ic v(xamp1.vgndp)=0.75 v(xamp1.vgndn)=0.75
.control
save all

let f_min = 10
let f_max = 1G
let f_stop = 500k

let Adc = 1
let err_gain_spec = 0.25
let v_step_o = 1.5
let v_step_i = v_step_o/Adc

let n_per_startup = 10
let fs = 100Meg
let tsettle = 1/fs/2
let t_rf = 0.1p
let t_on = tsettle/2
let t_delay = n_per_startup*tsettle
let t_per = tsettle

let tstep = 0.1*t_rf
let tstop = 10*t_per+t_delay
let tstart = t_delay

alter @VIN[DC] = 0.0

set wr_singlescale
set wr_vecnames
option numdgt=3

set opSimOnly = 0

** Main Simulations
if $opSimOnly eq 0
	op
	alter @VIN[PULSE] = [ 0 $&v_step_i $&t_delay $&t_rf $&t_rf $&t_on $&t_per 0 ]
	optran 0 0 0 1u 10m 0
	tran $&tstep $&tstop $&tstart
	
	setplot tran1
	let vid = v(vid)
	let iop = viop#branch
	let ion = vion#branch
	let vcmo = (voutp+voutn)/2
	let phi1 = v(xamp1.vphi1)
	let phi2 = v(xamp1.vphi2)
	plot phi1 phi2

	*plot iop ion
	plot vid vout vcmo
	plot v(vip) v(vin) v(voutp) v(voutn) vcmo

end

alter @VIN[DC] = 0
op
remzerovec
write ota-5t-fd_tb-cl.raw
.endc"
}
C {devices/title.sym} 160 -40 0 0 {name=l22 author="Michael Koefinger"}
C {devices/vsource.sym} 120 -920 0 0 {name=V1 value=1.5
}
C {devices/gnd.sym} 120 -860 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 120 -990 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 200 -920 0 0 {name=V3 value=1.5
}
C {devices/gnd.sym} 200 -860 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 200 -990 1 0 {name=p61 sig_type=std_logic lab=di_pon}
C {devices/launcher.sym} 680 -110 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 50 -180 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"
spice_ignore=false
      }
C {devices/vsource.sym} 430 -510 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 350 -460 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 350 -660 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 130 -510 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 130 -410 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 430 -460 0 0 {name=l21 lab=GND}
C {devices/vcvs.sym} 230 -560 0 0 {name=E1 value=1}
C {devices/gnd.sym} 230 -410 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 420 -760 3 0 {name=VIINP value=0
}
C {devices/vsource.sym} 420 -360 3 0 {name=VIINN value=0
}
C {lab_wire.sym} 170 -580 0 0 {name=p6 sig_type=std_logic lab=vid}
C {lab_wire.sym} 350 -760 0 0 {name=p12 sig_type=std_logic lab=vip}
C {lab_wire.sym} 350 -360 0 0 {name=p13 sig_type=std_logic lab=vin}
C {lab_wire.sym} 400 -560 0 0 {name=p14 sig_type=std_logic lab=vcmi}
C {lab_wire.sym} 510 -730 3 0 {name=p15 sig_type=std_logic lab=vipp}
C {lab_wire.sym} 510 -410 3 0 {name=p16 sig_type=std_logic lab=vinn}
C {amp-cfb.sym} 560 -630 0 0 {name=xamp1}
C {devices/gnd.sym} 630 -390 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 660 -440 3 0 {name=p1 sig_type=std_logic lab=di_pon}
C {devices/vdd.sym} 630 -750 0 0 {name=l3 lab=VDD}
C {isource.sym} 660 -690 0 0 {name=I0 value=\{ibias\}}
C {devices/vdd.sym} 660 -750 0 0 {name=l5 lab=VDD}
C {vcvs.sym} 870 -550 0 0 {name=E4 value=1}
C {devices/gnd.sym} 870 -490 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 810 -570 2 1 {name=p2 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 810 -530 0 0 {name=p3 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 870 -600 0 0 {name=p4 sig_type=std_logic lab=vout}
