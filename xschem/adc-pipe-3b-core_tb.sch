v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1410 -500 2210 -100 {flags=graph
ypos1=0.00011
ypos2=1.5
divy=5
unity=1
x2=7.1000006e-05
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="vin; \\"vin -1 * 2 +\\"
clock;phi2
reset
do_b2
do_b1
do_b0
BITS;do_b2,do_b1,do_b0"
color="7 11 11 12 12 12 21"
unitx=1
logx=0
logy=0
hilight_wave=1
digital=1
legend=1
x1=5.1000006e-05
linewidth_mult=2
dataset=-1
divx=5
subdivy=1
y1=-0.1
y2=1.5}
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
N 490 -740 590 -740 {lab=vipp}
N 110 -300 110 -270 {lab=GND}
N 110 -400 110 -360 {lab=VDD}
N 190 -300 190 -270 {lab=GND}
N 190 -400 190 -360 {lab=di_pon}
N 270 -300 270 -270 {lab=GND}
N 270 -400 270 -360 {lab=vref}
N 680 -640 680 -600 {lab=GND}
N 750 -300 750 -270 {lab=GND}
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
N 490 -660 490 -500 {lab=vinn}
N 490 -900 490 -740 {lab=vipp}
N 490 -660 590 -660 {lab=vinn}
N 820 -350 870 -350 {lab=phi1}
N 820 -320 870 -320 {lab=phi2}
N 760 -820 760 -760 {lab=vref}
N 720 -820 720 -760 {lab=phi1}
N 740 -820 740 -760 {lab=phi2}
N 780 -820 780 -760 {lab=vcmi}
N 700 -820 700 -760 {lab=di_pon}
N 680 -820 680 -760 {lab=VDD}
N 810 -720 1410 -720 {lab=do3}
N 810 -680 880 -680 {lab=do1[2..0]
bus=true}
N 880 -680 880 -560 {lab=do1[2..0]
bus=true}
N 1030 -630 1090 -630 {lab=do12}
N 1030 -600 1090 -600 {lab=do11}
N 1030 -570 1090 -570 {lab=do10}
N 890 -630 970 -630 {lab=do1[2]}
N 890 -600 970 -600 {lab=do1[1]}
N 890 -570 970 -570 {lab=do1[0]}
N 1280 -630 1340 -630 {lab=do22}
N 1280 -600 1340 -600 {lab=do21}
N 1280 -570 1340 -570 {lab=do20}
N 1140 -630 1220 -630 {lab=do2[2]}
N 1140 -600 1220 -600 {lab=do2[1]}
N 1140 -570 1220 -570 {lab=do2[0]}
N 1130 -700 1130 -560 {lab=do2[2..0]
bus=true}
N 810 -700 1130 -700 {lab=do2[2..0]
bus=true}
N 1130 -700 1410 -700 {lab=do2[2..0]
bus=true}
N 880 -680 1410 -680 {lab=do1[2..0]
bus=true}
N 1490 -640 1490 -600 {lab=GND}
N 1490 -870 1490 -810 {lab=VDD}
N 1380 -770 1410 -770 {lab=phi1}
N 360 -400 360 -360 {lab=reset}
N 360 -300 360 -270 {lab=GND}
N 1380 -750 1410 -750 {lab=reset}
N 1580 -680 1710 -680 {lab=do_b[2..0]
bus=true}
C {devices/launcher.sym} 680 -160 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"}
C {devices/code_shown.sym} -1120 -1270 0 0 {name=STIMULI
only_toplevel=false
value="
.include /foss/designs/sg13g2_pipeadc_3b/xspice/adc_pipe_encoder_TOP/adc_pipe_encoder_TOP.xspice
.options savecurrents
.options method=gear reltol=1e-4
.options sparse
.param fs=2Meg
.param ibias=1.5u
.param cap=100f
.param cap_load = 100f
.param ron=1
.param roff=1G

.control
save vin vip vid vcmi phi1 phi2 vref do10 do11 do12 do20 do21 do22 do3
save xadc.vres1p xadc.vres1n xadc.vres2p xadc.vres2n
save xadc.xmdac1.vdac_p xadc.mdac1.vdac_n xadc.xmdac1.vgndp xadc.xmdac1.vgndn xadc.xmdac1.vfb xadc.xmdac1.vbp
save xadc.xmdac1.xc1.vc_p xadc.xmdac1.xc2.vc_p xadc.xmdac1.xc3.vc_p xadc.xmdac1.xc4.vc_p
save xadc.xmdac2.vdac_p xadc.mdac2.vdac_n xadc.xmdac2.vgndp xadc.xmdac2.vgndn xadc.xmdac2.vfb xadc.xmdac2.vbp
save xadc.xmdac2.xc1.vc_p xadc.xmdac2.xc2.vc_p xadc.xmdac2.xc3.vc_p xadc.xmdac2.xc4.vc_p
save clock reset do_b2 do_b1 do_b0

set wr_singlescale
set wr_vecnames
option numdgt=3

** Sim Options
set opSimOnly = 0

** Set sampling frequency
let fs = 2Meg

** Set Startup time
let n_per_startup = 100
let t_delay = n_per_startup/fs

** Set input signal
let f_sig = 100k
let tper_sig = 1/f_sig
let tfr_sig = tper_sig*5/10
let ton_sig = tper_sig*1/1000

** Set transient simulation parameters
let tstep = 0.001/fs
let tstop = 2/f_sig+t_delay
let tstart = t_delay

alter @VIN[DC] = 0.0

** Main Simulations
if $opSimOnly eq 0
	** Set sources
	*alter @VIN[PULSE]=[ -1.5 1.5 0 $&tfr_sig $&tfr_sig $&ton_sig $&tper_sig 0 ]
	alter @VIN[SIN] = [ 0 1 $&f_sig t_delay 0 0 ]
	tran $&tstep $&tstop $&tstart
	write adc-pipe-3b-core_tb.raw	

	setplot tran1
	let vid = v(vid)
	let vres1 = xadc.vres1p - xadc.vres1n
	let vres2 = xadc.vres2p - xadc.vres2n

	let vcmo1 = (xadc.vres1p+xadc.vres1n)/2
	let vcmo2 = (xadc.vres2p+xadc.vres2n)/2
	let vcmi1 = (xadc.xmdac1.vgndp+xadc.xmdac1.vgndn)/2
	let vcmi2 = (xadc.xmdac2.vgndp+xadc.xmdac2.vgndn)/2

	let vcap_in_n = v(xadc.xmdac1.xc2.vc_p,xadc.xmdac1.vgndn)
	let v_in_n = v(vin,vcmi1)
	let v_dac_p = v(xadc.xmdac1.vdac_p,vcmi1)
	let vcap_in_p = v(xadc.xmdac1.xc4.vc_p,xadc.xmdac1.vgndp)
	let v_in_p = v(vip,vcmi)
	let v_dac_n = v(xadc.xmdac1.vdac_n,vcmi1)

	let err1 = 2*vid-vres1
	let err2 = 2*vres1-vres2

	let clock = phi1
	let reset = reset
	let do_b2 = do_b2
	let do_b1 = do_b1
	let do_b0 = do_b0

	plot vid vres1 vcmo1 vcmi1 phi2
	plot vcap_in_n v_in_n v_dac_p vcap_in_p v_in_p
	plot err1
	plot err2
	plot vid vres1 vres2
	plot do12 do11 do10 vid
	plot do22 do21 do20 vres1
	plot do3 vres2
	plot do_b2 do_b1 do_b0



end

set appendwrite

alter @VIN[DC] = 0
optran 0 0 0 0.1u $&t_delay 0
op
remzerovec
write adc-pipe-3b-core_tb.raw

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
C {clk_noverlap_ideal.sym} 680 -370 0 0 {name=xclkgen fs=\{fs\} tnover=50n tdelay=0 trf=5n
}
C {devices/gnd.sym} 680 -600 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 700 -820 1 0 {name=p17 sig_type=std_logic lab=di_pon}
C {devices/vsource.sym} 270 -330 0 0 {name=V7 value=1.5}
C {devices/gnd.sym} 270 -270 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 270 -400 1 0 {name=p18 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 760 -820 1 0 {name=p20 sig_type=std_logic lab=vref}
C {devices/lab_pin.sym} 780 -820 1 0 {name=p22 sig_type=std_logic lab=vcmi}
C {devices/gnd.sym} 750 -270 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 870 -350 0 0 {name=p1 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 870 -320 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {devices/vdd.sym} 680 -820 0 0 {name=l5 lab=VDD}
C {adc-pipe-3b-core.sym} 590 -760 0 0 {name=xadc}
C {devices/lab_pin.sym} 720 -820 1 0 {name=p5 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 740 -820 1 0 {name=p7 sig_type=std_logic lab=phi2}
C {bus_connect_nolab.sym} 880 -620 0 0 {name=r1}
C {bus_connect_nolab.sym} 880 -590 0 0 {name=r2}
C {bus_connect_nolab.sym} 880 -560 0 0 {name=r3}
C {devices/vsource.sym} 1000 -630 3 0 {name=V4 value=0
}
C {devices/vsource.sym} 1000 -600 3 0 {name=V5 value=0
}
C {devices/vsource.sym} 1000 -570 3 0 {name=V6 value=0
}
C {lab_wire.sym} 1090 -630 0 0 {name=p2 sig_type=std_logic lab=do12}
C {lab_wire.sym} 1090 -600 0 0 {name=p3 sig_type=std_logic lab=do11}
C {lab_wire.sym} 1090 -570 0 0 {name=p4 sig_type=std_logic lab=do10}
C {lab_wire.sym} 940 -630 0 0 {name=p8 sig_type=std_logic lab=do1[2]}
C {lab_wire.sym} 940 -600 0 0 {name=p9 sig_type=std_logic lab=do1[1]}
C {lab_wire.sym} 940 -570 0 0 {name=p10 sig_type=std_logic lab=do1[0]}
C {lab_wire.sym} 890 -680 0 0 {name=p11 sig_type=std_logic lab=do1[2..0]}
C {lab_wire.sym} 890 -700 0 0 {name=p19 sig_type=std_logic lab=do2[2..0]}
C {lab_wire.sym} 850 -720 0 0 {name=p21 sig_type=std_logic lab=do3}
C {bus_connect_nolab.sym} 1130 -620 0 0 {name=r4}
C {bus_connect_nolab.sym} 1130 -590 0 0 {name=r5}
C {bus_connect_nolab.sym} 1130 -560 0 0 {name=r6}
C {devices/vsource.sym} 1250 -630 3 0 {name=V8 value=0
}
C {devices/vsource.sym} 1250 -600 3 0 {name=V9 value=0
}
C {devices/vsource.sym} 1250 -570 3 0 {name=V10 value=0
}
C {lab_wire.sym} 1190 -630 0 0 {name=p27 sig_type=std_logic lab=do2[2]}
C {lab_wire.sym} 1190 -600 0 0 {name=p28 sig_type=std_logic lab=do2[1]}
C {lab_wire.sym} 1190 -570 0 0 {name=p29 sig_type=std_logic lab=do2[0]}
C {lab_wire.sym} 1340 -630 0 0 {name=p24 sig_type=std_logic lab=do22}
C {lab_wire.sym} 1340 -600 0 0 {name=p25 sig_type=std_logic lab=do21}
C {lab_wire.sym} 1340 -570 0 0 {name=p26 sig_type=std_logic lab=do20}
C {adc_pipe_encoder_TOP.sym} 1490 -730 0 0 {name=x1}
C {devices/gnd.sym} 1490 -600 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 1490 -870 0 0 {name=l6 lab=VDD}
C {devices/gnd.sym} 360 -270 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} 360 -330 0 0 {name=vrst value="pulse(1.5 0 \{1/fs\} 10p 10p \{0.5/fs*100\} \{1/fs*100\})"
}
C {devices/lab_pin.sym} 360 -400 1 0 {name=p32 sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 1380 -750 0 0 {name=p31 sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 1380 -770 0 0 {name=p33 sig_type=std_logic lab=phi1}
C {lab_wire.sym} 1700 -680 0 0 {name=p30 sig_type=std_logic lab=do_b[2..0]}
C {devices/launcher.sym} 980 -110 0 0 {name=h3
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/adc-pipe-3b-core_tb.raw tran"
}
