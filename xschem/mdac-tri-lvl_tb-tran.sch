v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -720 290 -720 {
lab=GND}
N 270 -520 290 -520 {
lab=GND}
N 250 -560 290 -560 {
lab=#net1}
N 250 -760 290 -760 {
lab=#net1}
N 210 -760 250 -760 {
lab=#net1}
N 210 -520 270 -520 {
lab=GND}
N 170 -590 210 -590 {
lab=GND}
N 110 -660 170 -660 {
lab=vid}
N 330 -640 410 -640 {
lab=vcmi}
N 330 -840 370 -840 {lab=vip}
N 330 -440 370 -440 {lab=vin}
N 430 -440 490 -440 {lab=vinn}
N 430 -840 490 -840 {lab=vipp}
N 490 -660 850 -660 {lab=vipp}
N 1010 -310 1100 -310 {lab=voutn}
N 1010 -350 1100 -350 {lab=voutp}
N 590 -560 850 -560 {lab=code[2:0]
bus=true}
N 840 -830 930 -830 {lab=phi1}
N 490 -620 850 -620 {lab=vinn}
N 120 -970 120 -940 {lab=GND}
N 120 -1070 120 -1030 {lab=VDD}
N 200 -970 200 -940 {lab=GND}
N 200 -1070 200 -1030 {lab=di_pon}
N 590 -280 590 -250 {lab=GND}
N 700 -280 700 -250 {lab=GND}
N 820 -280 820 -250 {lab=GND}
N 900 -510 900 -470 {lab=GND}
N 1140 -300 1140 -270 {lab=GND}
N 1140 -380 1140 -360 {lab=vout}
N 900 -800 900 -730 {lab=phi2}
N 930 -830 930 -730 {lab=phi1}
N 960 -850 960 -730 {lab=di_pon}
N 280 -970 280 -940 {lab=GND}
N 280 -1070 280 -1030 {lab=vref_p}
N 350 -970 350 -940 {lab=GND}
N 350 -1070 350 -1030 {lab=vref_n}
N 1050 -850 1050 -730 {lab=vref_p}
N 1080 -850 1080 -730 {lab=vref_n}
N 1110 -850 1110 -730 {lab=vcmi}
N 1020 -850 1020 -820 {lab=VDD}
N 1020 -760 1020 -730 {lab=#net2}
N 710 -780 710 -750 {lab=GND}
N 330 -710 330 -640 {lab=vcmi}
N 410 -640 410 -620 {lab=vcmi}
N 410 -560 410 -540 {lab=GND}
N 330 -510 330 -440 {lab=vin}
N 330 -840 330 -770 {lab=vip}
N 270 -720 270 -520 {lab=GND}
N 250 -760 250 -560 {lab=#net1}
N 210 -760 210 -670 {lab=#net1}
N 210 -520 210 -490 {lab=GND}
N 170 -620 170 -590 {lab=GND}
N 110 -660 110 -620 {lab=vid}
N 110 -560 110 -490 {lab=GND}
N 330 -640 330 -570 {lab=vcmi}
N 210 -590 210 -520 {lab=GND}
N 210 -610 210 -590 {lab=GND}
N 490 -840 490 -660 {lab=vipp}
N 490 -620 490 -440 {lab=vinn}
N 1180 -660 1340 -660 {lab=voutp}
N 1180 -620 1270 -620 {lab=voutn}
N 1270 -620 1270 -570 {lab=voutn}
N 1340 -660 1340 -570 {lab=voutp}
N 1270 -510 1270 -470 {lab=GND}
N 1340 -510 1340 -470 {lab=GND}
N 590 -550 590 -340 {lab=code[2]}
N 700 -550 700 -340 {lab=code[1]}
N 820 -550 820 -340 {lab=code[0]}
N 780 -800 900 -800 {lab=phi2}
N 990 -850 990 -730 {lab=VDD}
N 840 -910 840 -830 {lab=phi1}
N 780 -830 840 -830 {lab=phi1}
N 900 -910 900 -800 {lab=phi2}
N 840 -990 840 -970 {lab=GND}
N 900 -1000 900 -970 {lab=VDD}
C {devices/launcher.sym} 680 -160 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} -860 -1140 0 0 {name=STIMULI
only_toplevel=false
value="
.include mdac-tri-lvl_tb-tran.save
*.include ../xschem/ota-5t-fd-dev-sav.spice
.options savecurrents
.options method=gear reltol=.005 
.options sparse
.param fs=100Meg
.param ibias=20u
.param gain_cl=1
.param cap=100f
.param ron=1
.param roff=1G
*.ic v(voutp)=0.76 v(voutn)=0.76 v(xmdac.vgndp)=0.76 v(xmdac.vgndn)=0.76
.control
save voutp voutn vin vip vid vcmi phi1 phi2 code[2:0] vout vref_p vref_n
save xmdac.vdac_p xmdac.vdac_n xmdac.vgndp xmdac.vgndn xmdac.vfb xmdac.vbp

let n_per_startup = 100
let fs = 100Meg
let tsettle = 1/fs/2
let t_rf = 0.1n
let t_on = tsettle/2
let t_delay = n_per_startup/fs
let t_per = tsettle
let v_step_i = 1

let tstep = 0.01*t_rf
let tstop = 20*t_per+t_delay
let tstart = t_delay

alter @VIN[DC] = 0.0
alter @VCODE2[DC] = 0.0
alter @VCODE1[DC] = 0.0
alter @VCODE0[DC] = 1.5

set wr_singlescale
set wr_vecnames
option numdgt=3

set opSimOnly = 0

** Main Simulations
if $opSimOnly eq 0
	*optran 0 0 0 0.1n 1u 0
	*alter @VIN[PULSE] = [ 0 $&v_step_i $&t_delay $&t_rf $&t_rf $&t_on $&t_per 0 ]

	alter @VCODE2[DC] = 0.0
	alter @VCODE1[DC] = 0.0
	alter @VCODE0[DC] = 1.5
	alter @VIN[DC] = 0.0
	tran $&tstep $&tstop $&tstart

	alter @VCODE2[DC] = 1.5
	alter @VCODE1[DC] = 0
	alter @VCODE0[DC] = 0
	alter @VIN[DC] = 1.0
	tran $&tstep $&tstop $&tstart

	alter @VCODE2[DC] = 0.0
	alter @VCODE1[DC] = 1.5
	alter @VCODE0[DC] = 0
	alter @VIN[DC] = 0.5
	tran $&tstep $&tstop $&tstart
	
	setplot tran1
	let vid = v(vid)
	let vcmo = (voutp+voutn)/2
	let vod = v(vout)
	let phi1 = v(phi1)
	let phi2 = v(phi2)
	plot vid vod vcmo
	*plot iop ion
	*plot phi1 phi2
	*plot v(vip) v(vin) v(voutp) v(voutn) vcmo
	
	setplot tran2
	let vid = v(vid)
	let vcmo = (voutp+voutn)/2
	let vod = v(vout)
	plot vid vod vcmo

	setplot tran3
	let vid = v(vid)
	let vcmo = (voutp+voutn)/2
	let vod = v(vout)
	plot vid vod vcmo

end

alter @VIN[DC] = 0
optran 0 0 0 0.1n 1u 0
op
remzerovec
write mdac-tri-lvl_tb-tran.raw
.endc"
}
C {devices/title.sym} 160 -40 0 0 {name=l22 author="Michael Koefinger"}
C {devices/vsource.sym} 120 -1000 0 0 {name=V1 value=1.5
}
C {devices/gnd.sym} 120 -940 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 120 -1070 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 200 -1000 0 0 {name=V3 value=1.5
}
C {devices/gnd.sym} 200 -940 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 200 -1070 1 0 {name=p61 sig_type=std_logic lab=di_pon}
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
C {devices/vsource.sym} 410 -590 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 330 -540 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 330 -740 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 110 -590 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 110 -490 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 410 -540 0 0 {name=l21 lab=GND}
C {devices/vcvs.sym} 210 -640 0 0 {name=E1 value=1}
C {devices/gnd.sym} 210 -490 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 400 -840 3 0 {name=VIINP value=0
}
C {devices/vsource.sym} 400 -440 3 0 {name=VIINN value=0
}
C {lab_wire.sym} 150 -660 0 0 {name=p6 sig_type=std_logic lab=vid}
C {lab_wire.sym} 330 -840 0 0 {name=p12 sig_type=std_logic lab=vip}
C {lab_wire.sym} 330 -440 0 0 {name=p13 sig_type=std_logic lab=vin}
C {lab_wire.sym} 380 -640 0 0 {name=p14 sig_type=std_logic lab=vcmi}
C {lab_wire.sym} 490 -810 3 0 {name=p15 sig_type=std_logic lab=vipp}
C {lab_wire.sym} 490 -490 3 0 {name=p16 sig_type=std_logic lab=vinn}
C {vcvs.sym} 1140 -330 0 0 {name=E4 value=1}
C {devices/gnd.sym} 1140 -270 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 1080 -350 2 1 {name=p2 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 1080 -310 0 0 {name=p3 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 1140 -380 0 0 {name=p4 sig_type=std_logic lab=vout}
C {clk_noverlap_ideal.sym} 640 -850 0 0 {name=xclkgen fs=\{fs\} tnover=2n tdelay=0 trf=0.1n
}
C {devices/vsource.sym} 590 -310 0 0 {name=VCODE2 value=0
}
C {devices/gnd.sym} 590 -250 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 700 -310 0 0 {name=VCODE1 value=0
}
C {devices/gnd.sym} 700 -250 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 820 -310 0 0 {name=VCODE0 value=1.5
}
C {devices/gnd.sym} 820 -250 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 590 -450 3 0 {name=p5 sig_type=std_logic lab=code[2]}
C {lab_wire.sym} 700 -450 3 0 {name=p7 sig_type=std_logic lab=code[1]}
C {lab_wire.sym} 820 -450 3 0 {name=p8 sig_type=std_logic lab=code[0]}
C {lab_wire.sym} 800 -560 0 0 {name=p9 sig_type=std_logic lab=code[2:0]}
C {bus_connect_nolab.sym} 830 -560 2 0 {name=r1}
C {bus_connect_nolab.sym} 710 -560 2 0 {name=r2}
C {bus_connect_nolab.sym} 600 -560 2 0 {name=r3}
C {devices/gnd.sym} 900 -470 0 0 {name=l10 lab=GND}
C {capa.sym} 1270 -540 0 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1340 -540 0 0 {name=C2
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1270 -470 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1340 -470 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1250 -620 0 0 {name=p10 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 1250 -660 0 0 {name=p11 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 960 -850 1 0 {name=p17 sig_type=std_logic lab=di_pon}
C {devices/vsource.sym} 280 -1000 0 0 {name=V7 value=1.5
}
C {devices/gnd.sym} 280 -940 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 280 -1070 1 0 {name=p18 sig_type=std_logic lab=vref_p}
C {devices/vsource.sym} 350 -1000 0 0 {name=V8 value=0
}
C {devices/gnd.sym} 350 -940 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 350 -1070 1 0 {name=p19 sig_type=std_logic lab=vref_n}
C {devices/lab_pin.sym} 1050 -850 1 0 {name=p20 sig_type=std_logic lab=vref_p}
C {devices/lab_pin.sym} 1080 -850 1 0 {name=p21 sig_type=std_logic lab=vref_n}
C {devices/lab_pin.sym} 1110 -850 1 0 {name=p22 sig_type=std_logic lab=vcmi}
C {isource.sym} 1020 -790 0 0 {name=I0 value=\{ibias\}}
C {devices/vdd.sym} 1020 -850 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 710 -750 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 830 -830 0 0 {name=p1 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 830 -800 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {devices/vdd.sym} 990 -850 0 0 {name=l5 lab=VDD}
C {mdac-tri-lvl.sym} 850 -730 0 0 {name=xmdac cap=\{cap\}}
C {devices/vsource.sym} 900 -940 0 0 {name=V9 value=0
spice_ignore=true}
C {devices/vsource.sym} 840 -940 0 0 {name=V10 value=0
spice_ignore=true}
C {devices/vdd.sym} 900 -1000 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 840 -990 2 0 {name=l16 lab=GND}
