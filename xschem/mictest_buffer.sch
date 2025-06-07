v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 -70 -0 -70 {lab=#net1}
N 0 -70 -0 -40 {lab=#net1}
N -90 -70 -70 -70 {lab=#net2}
N -90 -70 -90 -40 {lab=#net2}
N -90 20 -0 20 {lab=GND}
N -0 -70 90 -70 {lab=#net1}
N 90 -70 90 -30 {lab=#net1}
N -0 20 90 20 {lab=GND}
N 90 10 90 20 {lab=GND}
N -400 -30 -350 -30 {lab=#net3}
N -560 -30 -460 -30 {lab=#net4}
N -560 -30 -560 20 {lab=#net4}
N -290 -30 -130 -30 {lab=#net5}
N -200 -190 -200 -30 {lab=#net5}
N -200 -190 -70 -190 {lab=#net5}
N 130 -190 130 -40 {lab=vout}
N -10 -190 130 -190 {lab=vout}
N -210 10 -210 70 {lab=#net6}
N -210 10 -130 10 {lab=#net6}
N -560 130 -210 130 {lab=GND}
N -560 80 -560 130 {lab=GND}
N -210 130 130 130 {lab=GND}
N 130 20 130 130 {lab=GND}
N -20 20 -20 130 {lab=GND}
N 130 -190 220 -190 {lab=vout}
C {vcvs.sym} -90 -10 0 0 {name=E1 value=1000}
C {vcvs.sym} 130 -10 0 0 {name=E2 value=1000}
C {capa.sym} 0 -10 0 0 {name=C1
m=1
value=160p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -40 -70 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -320 -30 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} -40 -190 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {capa.sym} -430 -30 3 0 {name=C2
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -560 50 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {vsource.sym} -210 100 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -210 130 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 220 -190 0 0 {name=p1 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} -590 -200 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.control
.op
AC DEC 100 1 10e6
plot v(vout)
.endc
"}
