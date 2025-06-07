v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 7 -150 -30 -130 -30 {}
L 7 -150 10 -130 10 {}
L 7 70 -30 90 -30 {}
L 7 70 10 90 10 {}
B 5 -132.5 -32.5 -127.5 -27.5 {name=vip dir=inout}
B 5 -132.5 -32.5 -127.5 -27.5 {name=vip dir=inout}
B 5 -132.5 7.5 -127.5 12.5 {name=vim dir=inout}
B 5 87.5 -32.5 92.5 -27.5 {name=vop dir=inout}
B 5 87.5 7.5 92.5 12.5 {name=vom dir=inout}
T {vip} -175 -26 2 1 0.2 0.2 {}
T {vip} -175 -26 2 1 0.2 0.2 {}
T {vim} -175 14 2 1 0.2 0.2 {}
T {vop} 65 -34 0 1 0.2 0.2 {}
T {vom} 65 6 0 1 0.2 0.2 {}
N 0 -40 60 -40 {lab=#net1}
N -10 -70 -0 -70 {lab=#net1}
N 0 -70 -0 -40 {lab=#net1}
N -90 -70 -70 -70 {lab=#net2}
N -90 -70 -90 -40 {lab=#net2}
N -90 20 -0 20 {lab=#net3}
N 60 -40 130 -40 {lab=#net1}
N 0 20 130 20 {lab=#net3}
C {vcvs.sym} -90 -10 0 0 {name=E1 value=1000}
C {vcvs.sym} 130 -10 0 0 {name=E2 value=1000}
C {capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -40 -70 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
