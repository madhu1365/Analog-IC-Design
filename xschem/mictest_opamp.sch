v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -80 70 -80 {lab=vin}
N 130 -80 160 -80 {lab=vin}
N 220 -80 250 -80 {lab=vn1}
N 320 -170 350 -170 {lab=virt}
N 410 -170 450 -170 {lab=vout}
N 320 -170 320 -80 {lab=virt}
N -0 -80 0 -0 {lab=vin}
N 450 -170 590 -170 {lab=vout}
N 310 -80 360 -80 {lab=virt}
N 350 50 350 60 {lab=GND}
N 70 -80 130 -80 {lab=vin}
N 490 -50 540 -50 {lab=vout}
N 540 -170 540 -50 {lab=vout}
N 410 -10 410 60 {lab=GND}
N 0 60 410 60 {lab=GND}
N 350 -30 360 -30 {lab=vcm}
N 350 -30 350 -10 {lab=vcm}
C {vsource.sym} 0 30 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} 190 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 0 60 0 0 {name=l1 lab=GND}
C {res.sym} 380 -170 3 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 350 20 0 0 {name=V2 value=1.5 savecurrent=false}
C {lab_wire.sym} 150 -80 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_wire.sym} 240 -80 0 0 {name=p3 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 320 -100 0 0 {name=p4 sig_type=std_logic lab=virt}
C {simulator_commands_shown.sym} -490 -430 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
.op

AC DEC 100 1 10e6
plot v(vout)


 .endc
"}
C {res.sym} 280 -80 3 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 590 -170 0 0 {name=p5 sig_type=std_logic lab=vout}
C {lab_wire.sym} 350 -30 0 0 {name=p1 sig_type=std_logic lab=vcm}
C {betopamp.sym} 160 20 0 0 {name=x1}
