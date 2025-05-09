v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 270 -780 290 -780 {
lab=GND}
N 270 -580 290 -580 {
lab=GND}
N 250 -620 290 -620 {
lab=#net1}
N 250 -820 290 -820 {
lab=#net1}
N 210 -820 250 -820 {
lab=#net1}
N 210 -580 270 -580 {
lab=GND}
N 170 -650 210 -650 {
lab=GND}
N 110 -720 170 -720 {
lab=vid}
N 330 -700 410 -700 {
lab=vcmi}
N 330 -900 370 -900 {lab=vip}
N 330 -500 370 -500 {lab=vin}
N 430 -500 490 -500 {lab=vinn}
N 430 -900 490 -900 {lab=vipp}
N 490 -720 850 -720 {lab=vipp}
N 1010 -370 1100 -370 {lab=voutn}
N 1010 -410 1100 -410 {lab=voutp}
N 590 -620 850 -620 {lab=code[2:0]
bus=true}
N 490 -680 850 -680 {lab=vinn}
N 110 -300 110 -270 {lab=GND}
N 110 -400 110 -360 {lab=VDD}
N 190 -300 190 -270 {lab=GND}
N 190 -400 190 -360 {lab=di_pon}
N 270 -300 270 -270 {lab=GND}
N 270 -400 270 -360 {lab=vref_p}
N 340 -300 340 -270 {lab=GND}
N 340 -400 340 -360 {lab=vref_n}
N 1180 -720 1340 -720 {lab=voutp}
N 1180 -680 1270 -680 {lab=voutn}
N 780 -860 900 -860 {lab=phi2}
N 780 -890 930 -890 {lab=phi1}
N 590 -300 590 -270 {lab=GND}
N 700 -300 700 -270 {lab=GND}
N 810 -300 810 -270 {lab=GND}
N 900 -570 900 -530 {lab=GND}
N 1140 -360 1140 -330 {lab=GND}
N 1140 -440 1140 -420 {lab=vout}
N 900 -860 900 -790 {lab=phi2}
N 930 -890 930 -790 {lab=phi1}
N 960 -910 960 -790 {lab=di_pon}
N 1050 -910 1050 -790 {lab=vref_p}
N 1080 -910 1080 -790 {lab=vref_n}
N 1110 -910 1110 -790 {lab=vcmi}
N 1020 -910 1020 -880 {lab=VDD}
N 1020 -820 1020 -790 {lab=#net2}
N 710 -840 710 -810 {lab=GND}
N 330 -770 330 -700 {lab=vcmi}
N 410 -700 410 -680 {lab=vcmi}
N 410 -620 410 -600 {lab=GND}
N 330 -570 330 -500 {lab=vin}
N 330 -900 330 -830 {lab=vip}
N 270 -780 270 -580 {lab=GND}
N 250 -820 250 -620 {lab=#net1}
N 210 -820 210 -730 {lab=#net1}
N 210 -580 210 -550 {lab=GND}
N 170 -680 170 -650 {lab=GND}
N 110 -720 110 -680 {lab=vid}
N 110 -620 110 -550 {lab=GND}
N 330 -700 330 -630 {lab=vcmi}
N 210 -650 210 -580 {lab=GND}
N 210 -670 210 -650 {lab=GND}
N 490 -900 490 -720 {lab=vipp}
N 490 -680 490 -500 {lab=vinn}
N 1270 -680 1270 -630 {lab=voutn}
N 1340 -720 1340 -630 {lab=voutp}
N 1270 -570 1270 -530 {lab=GND}
N 1340 -570 1340 -530 {lab=GND}
N 990 -910 990 -790 {lab=VDD}
N 590 -610 590 -360 {lab=code[2]}
N 700 -610 700 -360 {lab=code[1]}
N 810 -610 810 -360 {lab=code[0]}
C {devices/launcher.sym} 680 -160 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} -690 -1130 0 0 {name=STIMULI
only_toplevel=false
value="
.include mdac-tri-lvl_tb-tran.save
.options savecurrents
.options method=gear reltol=.005 
.options sparse
.param fs=2Meg
.param ibias=300n
.param cap=100f
.param cap_load = 100f
.param ron=1
.param roff=1G

.control
save voutp voutn vinn vipp vid vcmi phi1 phi2 code[2:0] vout vref_p vref_n di_pon vdd
save xmdac.vdac_p xmdac.vdac_n xmdac.vgndp xmdac.vgndn xmdac.vfb xmdac.vbp
save xmdac.xc1.vc_p xmdac.xc2.vc_p xmdac.xc3.vc_p xmdac.xc4.vc_p
save xmdac.xota.tail xmdac.xota.ena xmdac.xota.ena_n xmdac.xota.gate_n

set wr_singlescale
set wr_vecnames
option numdgt=3

** Sim options
set startupSim = 1
set opSimOnly = 1

** System Specs
let err_max = 0.25
let fs = 2Meg

** Startup 
let n_per_startup = 100
let tsettle = 1/fs/2
let t_rf = 0.01/fs
let t_delay = n_per_startup/fs
let t_per = tsettle

** Default Input Config
alter @VIN[DC] = 0.0
alter @VCODE2[DC] = 0.0
alter @VCODE1[DC] = 0.0
alter @VCODE0[DC] = 1.5

** Transient Sim Options
let tstep = 0.1*t_rf
if $startupSim eq 1
	let tstart = 0
	let tstop = t_delay

else
	let tstart = t_delay
	let tstop = 20*t_per+t_delay
	let vi = 1
	let vref = 1.5
	*let vi = -1
	*let vref = -1.5
	alter @VIN[DC] = vi
	alter @VCODE0[DC] = 0
	alter @VCODE1[DC] = 1.5
	alter @VCODE2[DC] = 0
	*alter @VCODE1[DC] = 0
	*alter @VCODE2[DC] = 1.5
end

** Main Simulations
if $opSimOnly eq 0
	*optran 0 0 0 $&t_per $&t_delay 0
	tran $&tstep $&tstop $&tstart
	
	setplot tran1
	let vid = v(vid)
	let vcmo = (voutp+voutn)/2
	let vcmi = (xmdac.vgndp+xmdac.vgndn)/2
	let vod = v(vout)
	let vcap_in_n = v(xmdac.xc2.vc_p,xmdac.vgndn)
	let v_in_n = v(vin,vcmi)
	let v_dac_p = v(xmdac.vdac_p,vcmi)
	let vcap_in_p = v(xmdac.xc4.vc_p,xmdac.vgndp)
	let v_in_p = v(vip,vcmi)
	let v_dac_n = v(xmdac.vdac_n,vcmi)
	let settle_goal = 2*vi-vref
	let err = (settle_goal-vod)/settle_goal
	plot vid vod vcmo vcmi phi2
	plot vcap_in_n v_in_n v_dac_p vcap_in_p v_in_p v_dac_n
	plot err*100 err_max*100 phi2*100

end

alter @VIN[DC] = 0
alter @VCODE2[DC] = 0.0
alter @VCODE1[DC] = 0.0
alter @VCODE0[DC] = 1.5
optran 0 0 0 $&t_per $&t_delay 0
op
remzerovec
write mdac-tri-lvl_tb-tran.raw
.endc"
}
C {devices/title.sym} 160 -40 0 0 {name=l22 author="Michael Koefinger"}
C {devices/vsource.sym} 110 -330 0 0 {name=V1 value=1.5
}
C {devices/gnd.sym} 110 -270 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 110 -400 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 190 -330 0 0 {name=V3 value=1.5
}
C {devices/gnd.sym} 190 -270 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 190 -400 1 0 {name=p61 sig_type=std_logic lab=di_pon}
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
C {devices/vsource.sym} 410 -650 0 0 {name=V2 value=0.75
}
C {devices/vcvs.sym} 330 -600 0 0 {name=E3 value=0.5}
C {devices/vcvs.sym} 330 -800 0 0 {name=E2 value=0.5}
C {devices/vsource.sym} 110 -650 0 0 {name=VIN value="0 AC 1"
}
C {devices/gnd.sym} 110 -550 0 0 {name=l20 lab=GND}
C {devices/gnd.sym} 410 -600 0 0 {name=l21 lab=GND}
C {devices/vcvs.sym} 210 -700 0 0 {name=E1 value=1}
C {devices/gnd.sym} 210 -550 0 0 {name=l24 lab=GND}
C {devices/vsource.sym} 400 -900 3 0 {name=VIINP value=0
}
C {devices/vsource.sym} 400 -500 3 0 {name=VIINN value=0
}
C {lab_wire.sym} 150 -720 0 0 {name=p6 sig_type=std_logic lab=vid}
C {lab_wire.sym} 330 -900 0 0 {name=p12 sig_type=std_logic lab=vip}
C {lab_wire.sym} 330 -500 0 0 {name=p13 sig_type=std_logic lab=vin}
C {lab_wire.sym} 380 -700 0 0 {name=p14 sig_type=std_logic lab=vcmi}
C {lab_wire.sym} 490 -870 3 0 {name=p15 sig_type=std_logic lab=vipp}
C {lab_wire.sym} 490 -550 3 0 {name=p16 sig_type=std_logic lab=vinn}
C {vcvs.sym} 1140 -390 0 0 {name=E4 value=1}
C {devices/gnd.sym} 1140 -330 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 1080 -410 2 1 {name=p2 sig_type=std_logic lab=voutp}
C {lab_wire.sym} 1080 -370 0 0 {name=p3 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 1140 -440 0 0 {name=p4 sig_type=std_logic lab=vout}
C {clk_noverlap_ideal.sym} 640 -910 0 0 {name=xclkgen fs=\{fs\} tnover=2n tdelay=0 trf=0.1n
}
C {devices/vsource.sym} 590 -330 0 0 {name=VCODE2 value=0
}
C {devices/gnd.sym} 590 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 700 -330 0 0 {name=VCODE1 value=0
}
C {devices/gnd.sym} 700 -270 0 0 {name=l8 lab=GND}
C {devices/vsource.sym} 810 -330 0 0 {name=VCODE0 value=1.5
}
C {devices/gnd.sym} 810 -270 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 590 -510 3 0 {name=p5 sig_type=std_logic lab=code[2]}
C {lab_wire.sym} 700 -510 3 0 {name=p7 sig_type=std_logic lab=code[1]}
C {lab_wire.sym} 810 -510 3 0 {name=p8 sig_type=std_logic lab=code[0]}
C {lab_wire.sym} 800 -620 0 0 {name=p9 sig_type=std_logic lab=code[2:0]}
C {bus_connect_nolab.sym} 820 -620 2 0 {name=r1}
C {bus_connect_nolab.sym} 710 -620 2 0 {name=r2}
C {bus_connect_nolab.sym} 600 -620 2 0 {name=r3}
C {devices/gnd.sym} 900 -530 0 0 {name=l10 lab=GND}
C {capa.sym} 1270 -600 0 0 {name=C1
m=1
value=\{cap_load\}
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1340 -600 0 0 {name=C2
m=1
value=\{cap_load\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1270 -530 0 0 {name=l11 lab=GND}
C {devices/gnd.sym} 1340 -530 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1250 -680 0 0 {name=p10 sig_type=std_logic lab=voutn}
C {lab_wire.sym} 1250 -720 0 0 {name=p11 sig_type=std_logic lab=voutp}
C {devices/lab_pin.sym} 960 -910 1 0 {name=p17 sig_type=std_logic lab=di_pon}
C {devices/vsource.sym} 270 -330 0 0 {name=V7 value=1.5
}
C {devices/gnd.sym} 270 -270 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 270 -400 1 0 {name=p18 sig_type=std_logic lab=vref_p}
C {devices/vsource.sym} 340 -330 0 0 {name=V8 value=0
}
C {devices/gnd.sym} 340 -270 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 340 -400 1 0 {name=p19 sig_type=std_logic lab=vref_n}
C {devices/lab_pin.sym} 1050 -910 1 0 {name=p20 sig_type=std_logic lab=vref_p}
C {devices/lab_pin.sym} 1080 -910 1 0 {name=p21 sig_type=std_logic lab=vref_n}
C {devices/lab_pin.sym} 1110 -910 1 0 {name=p22 sig_type=std_logic lab=vcmi}
C {isource.sym} 1020 -850 0 0 {name=I0 value=\{ibias\}}
C {devices/vdd.sym} 1020 -910 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 710 -810 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 830 -890 0 0 {name=p1 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 830 -860 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {devices/vdd.sym} 990 -910 0 0 {name=l5 lab=VDD}
C {mdac-tri-lvl.sym} 850 -790 0 0 {name=xmdac cap=\{cap\}}
