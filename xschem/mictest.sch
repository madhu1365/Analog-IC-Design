v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -80 70 -80 {lab=vnmic}
N 130 -80 160 -80 {lab=vin1}
N 220 -80 250 -80 {lab=vin2}
N 410 -70 410 -10 {lab=GND}
N 320 -250 350 -250 {lab=virt}
N 320 -170 350 -170 {lab=virt}
N 320 -250 320 -170 {lab=virt}
N 410 -250 450 -250 {lab=vout}
N 450 -250 450 -170 {lab=vout}
N 410 -170 450 -170 {lab=vout}
N 320 -170 320 -80 {lab=virt}
N 450 -170 450 -130 {lab=vout}
N 450 -140 550 -140 {lab=vout}
N 550 -80 550 -40 {lab=GND}
N 310 -80 370 -80 {lab=virt}
N 360 -120 370 -120 {lab=#net1}
N 350 -120 350 -10 {lab=#net1}
N 350 -120 360 -120 {lab=#net1}
N 410 -130 450 -130 {lab=vout}
N -0 -80 0 -0 {lab=vnmic}
C {vsource.sym} 0 30 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {res.sym} 100 -80 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 190 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 0 60 0 0 {name=l1 lab=GND}
C {vcvs.sym} 410 -100 0 0 {name=E1 value=1000}
C {gnd.sym} 410 -10 0 0 {name=l2 lab=GND}
C {res.sym} 380 -170 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 380 -250 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 350 20 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 350 50 0 0 {name=l3 lab=GND}
C {capa.sym} 550 -110 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 550 -40 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 40 -80 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 150 -80 0 0 {name=p2 sig_type=std_logic lab=vin1}
C {lab_wire.sym} 240 -80 0 0 {name=p3 sig_type=std_logic lab=vin2}
C {lab_wire.sym} 320 -100 0 0 {name=p4 sig_type=std_logic lab=virt}
C {simulator_commands_shown.sym} -490 -430 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
op
save all
set appendwrite
AC DEC 100 1 10e6
write mictest.raw

MEAS AC gain_db MAX vdb(vout) FROM=1 TO=10e6
LET vm3db = gain_db-3.0
print vm3db
MEAS AC fzero WHEN vdb(vout)=vm3db RISE=1
MEAS AC fpole WHEN vdb(vout)=vm3db FALL=1
MEAS AC fmid WHEN vdb(vout)=gain_db
**Phase Measurement
LET phase_deg = cph(vout)*180/PI
MEAS AC phase_zero FIND phase_deg AT=fzero
MEAS AC phase_pole FIND phase_deg AT=fpole
MEAS AC phase_mid FIND phase_deg AT=fmid
**MEAS fzero and fpole using phase
LET phase_zero_ph = phase_mid - 45
MEAS AC fzero_ph WHEN phase_deg=phase_zero_ph


 .endc
"}
C {res.sym} 280 -80 3 0 {name=R4
value=4.7k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 510 -140 0 0 {name=p5 sig_type=std_logic lab=vout}
