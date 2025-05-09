v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -860 60 -830 {
lab=GND}
N 60 -960 60 -920 {
lab=VDD}
N 290 -670 290 -600 {
lab=vcmi}
N 370 -600 370 -580 {
lab=vcmi}
N 370 -520 370 -500 {
lab=GND}
N 290 -470 290 -400 {
lab=vin_n}
N 290 -800 290 -730 {
lab=vin_p}
N 230 -680 250 -680 {
lab=GND}
N 230 -680 230 -480 {
lab=GND}
N 230 -480 250 -480 {
lab=GND}
N 210 -520 250 -520 {
lab=#net1}
N 210 -720 210 -520 {
lab=#net1}
N 210 -720 250 -720 {
lab=#net1}
N 170 -720 170 -630 {
lab=#net1}
N 170 -720 210 -720 {
lab=#net1}
N 170 -480 170 -450 {
lab=GND}
N 170 -480 230 -480 {
lab=GND}
N 130 -580 130 -550 {
lab=GND}
N 130 -550 170 -550 {
lab=GND}
N 70 -620 70 -580 {
lab=vids}
N 70 -620 130 -620 {
lab=vids}
N 70 -520 70 -450 {
lab=GND}
N 290 -600 290 -530 {
lab=vcmi}
N 290 -600 370 -600 {
lab=vcmi}
N 140 -860 140 -830 {
lab=GND}
N 580 -510 580 -480 {
lab=GND}
N 1110 -210 1110 -180 {
lab=GND}
N 140 -960 140 -920 {
lab=di_pon}
N 620 -510 620 -480 {
lab=di_pon}
N 770 -470 770 -450 {
lab=GND}
N 770 -730 770 -710 {
lab=GND}
N 770 -570 770 -530 {
lab=voutn}
N 770 -650 770 -610 {
lab=voutp}
N 1040 -220 1070 -220 {
lab=voutn}
N 1040 -260 1070 -260 {
lab=voutp}
N 1110 -310 1110 -270 {
lab=vout}
N 1110 -310 1160 -310 {
lab=vout}
N 170 -550 170 -480 {
lab=GND}
N 170 -570 170 -550 {
lab=GND}
N 420 -560 420 -400 {lab=vi_n}
N 580 -770 580 -670 {lab=VDD}
N 620 -770 620 -750 {lab=VDD}
N 620 -690 620 -670 {lab=#net2}
N 1010 -580 1010 -560 {lab=vfb}
N 1010 -600 1010 -580 {lab=vfb}
N 1100 -580 1100 -560 {lab=vfb}
N 420 -620 440 -620 {lab=vi_p}
N 480 -620 500 -620 {lab=vi_n}
N 420 -560 440 -560 {lab=vi_n}
N 480 -560 500 -560 {lab=vi_p}
N 440 -620 480 -560 {lab=vi_p}
N 440 -560 480 -620 {lab=vi_n}
N 680 -540 730 -540 {lab=vfb}
N 680 -520 700 -520 {lab=vbp}
N 290 -800 330 -800 {lab=vin_p}
N 290 -400 330 -400 {lab=vin_n}
N 390 -800 420 -800 {lab=vi_p}
N 420 -800 420 -620 {lab=vi_p}
N 390 -400 420 -400 {lab=vi_n}
N 700 -520 700 -460 {lab=vbp}
N 680 -570 770 -570 {lab=voutn}
N 680 -610 770 -610 {lab=voutp}
N 1010 -500 1010 -480 {lab=voutn}
N 1010 -480 1100 -480 {lab=voutn}
N 1100 -500 1100 -480 {lab=voutn}
N 1010 -680 1100 -680 {lab=voutp}
N 1010 -580 1100 -580 {lab=vfb}
N 1100 -600 1100 -580 {lab=vfb}
N 880 -480 1010 -480 {lab=voutn}
N 1010 -680 1010 -660 {lab=voutp}
N 880 -680 1010 -680 {lab=voutp}
N 1100 -680 1100 -660 {lab=voutp}
N 880 -580 1010 -580 {lab=vfb}
N 730 -540 730 -460 {lab=vfb}
C {devices/vsource.sym} 60 -890 0 0 {name=V3 value=1.5
}
C {devices/gnd.sym} 60 -830 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -890 -1440 0 0 {name=STIMULI
only_toplevel=false
value="
*.include /foss/designs/xschem/ota-5t-fd-dev-sav.spice
.include ota-5t-fd_tb-ol.save
.options savecurrents
.param ibias=300n
.param ci=100f
.param cload=2*ci
.param cf=ci
.param beta=0.5
.param cloadtot=cload+(1-beta)*cf

.save all
.control
set doAmpSim = 1

if $doAmpSim eq 1
	setplot const
	let f_min = 10
	let f_max = 1G
	let f_stop = 500k

	let Adc = 16
	let v_step_o = 1
	let v_step_i = -v_step_o/Adc

	let t_rf = 0.01u
	let t_step = 100u
	let t_delay = 0
	let t_per = 2*t_step

	let tstep = 0.001*t_step
	let tstop = 2*t_per
	let tstart = t_delay

	alter @VIN[DC] = 0.0
	alter @VIN[PULSE] = [ 0 $&v_step_i $&t_delay $&t_rf $&t_rf $&t_step $&t_per 0 ]

	ac dec 100 $&const.f_min $&const.f_max
	noise v(vout) vin dec 100 $&const.f_min $&const.f_max
	tran $&tstep $&tstop $&tstart

	setplot ac1
	let Atot = v(vout)/v(vids)		
	let Amag_ol_dB = vdb(Atot)
	let Aarg_ol = 180/PI*cphase(Atot)
	meas ac Adc_ol_dB max Amag_ol_dB
	let Amag_fc = Adc_ol_dB-3
	meas ac fc find frequency when Amag_ol_dB = Amag_fc
	meas ac fug_ol find frequency when Amag_ol_dB=0
	meas ac pm find Aarg_ol when frequency=fug_ol
	let pm = 180 + pm
	print pm
	let Adc_ol_lin = 10^(Adc_ol_dB/20)
	let err_gain = 1-Adc_ol_lin/(1+Adc_ol_lin)
	print err_gain*100
	plot Amag_ol_dB Aarg_ol ylabel 'Open Loop Magnitude, Phase'

	setplot noise1
	let acgain = onoise_spectrum/inoise_spectrum
	plot onoise_spectrum ylog xlog ylabel 'Output Noise'
	*plot acgain

	setplot noise2
	print onoise_total

	setplot tran2
	let vcmo = (v(voutp)+v(voutn))/2
	plot v(vin_p) v(vin_n) v(voutp) v(voutn) vcmo
end

reset
op
let gmId_load = @n.xamp1.xmp1.nsg13_lv_pmos[gm]/@n.xamp1.xmp1.nsg13_lv_pmos[ids]
let gmId_active = @n.xamp1.xmn1.nsg13_lv_nmos[gm]/@n.xamp1.xmn1.nsg13_lv_nmos[ids]
print gmId_load
print gmId_active
remzerovec
write ota-5t-fd_tb-ol.raw
.endc"}
C {devices/vdd.sym} 60 -960 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 370 -550 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 290 -500 0 0 {name=E1 value=0.5}
C {devices/vcvs.sym} 290 -700 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 70 -550 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 70 -450 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 370 -500 0 0 {name=l18 lab=GND}
C {devices/vcvs.sym} 170 -600 0 0 {name=E3 value=1}
C {devices/gnd.sym} 170 -450 0 0 {name=l19 lab=GND}
C {devices/vsource.sym} 360 -800 3 0 {name=VIINP value=0
}
C {devices/vsource.sym} 360 -400 3 0 {name=VIINN value=0
}
C {devices/vsource.sym} 140 -890 0 0 {name=V4 value=1.5
}
C {devices/gnd.sym} 140 -830 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 140 -960 1 0 {name=p61 sig_type=std_logic lab=di_pon}
C {devices/title.sym} 200 -80 0 0 {name=l3 author="Michael Koefinger"}
C {devices/gnd.sym} 580 -480 0 0 {name=l5 lab=GND}
C {devices/launcher.sym} 480 -240 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidsden_texts 1; xschem annotate_op"}
C {devices/vcvs.sym} 1110 -240 0 0 {name=E7 value=1}
C {devices/gnd.sym} 1110 -180 0 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} 1040 -260 0 0 {name=l53 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} 1040 -220 2 1 {name=l54 sig_type=std_logic lab=voutn
}
C {devices/capa.sym} 770 -500 0 0 {name=CL2
m=1
value=\{cloadtot\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 620 -480 3 0 {name=p1 sig_type=std_logic lab=di_pon}
C {devices/capa.sym} 770 -680 2 1 {name=CL1
m=1
value=\{cloadtot\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 770 -730 2 0 {name=l1 lab=GND}
C {devices/gnd.sym} 770 -450 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 1160 -310 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/launcher.sym} 480 -190 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {isource.sym} 620 -720 0 0 {name=I0 value=\{ibias\}}
C {devices/vdd.sym} 580 -770 0 0 {name=l10 lab=VDD}
C {devices/vdd.sym} 620 -770 0 0 {name=l11 lab=VDD}
C {res.sym} 1010 -630 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1
noisy=0}
C {res.sym} 1010 -530 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1
noisy=0}
C {devices/capa.sym} 1100 -630 2 0 {name=CL3
m=1
value=0.1f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1100 -530 2 0 {name=CL4
m=1
value=0.1f
footprint=1206
device="ceramic capacitor"}
C {ota-5t-fd.sym} 500 -620 0 0 {name=xamp1}
C {code_shown.sym} 30 -240 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"
spice_ignore=false
      }
C {lab_wire.sym} 110 -620 0 0 {name=p5 sig_type=std_logic lab=vids}
C {lab_wire.sym} 290 -800 0 0 {name=p8 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 290 -400 0 0 {name=p9 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 340 -600 0 0 {name=p10 sig_type=std_logic lab=vcmi}
C {lab_wire.sym} 420 -770 3 0 {name=p11 sig_type=std_logic lab=vi_p}
C {lab_wire.sym} 420 -450 3 0 {name=p12 sig_type=std_logic lab=vi_n}
C {lab_wire.sym} 750 -610 0 0 {name=p6 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 750 -570 0 0 {name=p7 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 940 -580 0 0 {name=p13 sig_type=std_logic lab=vfb}
C {lab_wire.sym} 700 -470 3 0 {name=p3 sig_type=std_logic lab=vbp}
C {lab_wire.sym} 940 -680 0 0 {name=p4 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 940 -480 0 0 {name=p14 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 730 -470 3 0 {name=p15 sig_type=std_logic lab=vfb}
