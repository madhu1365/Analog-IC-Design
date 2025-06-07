v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 -40 -120 -40 {lab=vip}
N -160 -0 -120 -0 {lab=vim}
N -80 -80 10 -80 {lab=vop}
N -80 -80 -80 -50 {lab=vop}
N -80 30 20 30 {lab=vom}
N -80 10 -80 30 {lab=vom}
C {vcvs.sym} -80 -20 0 0 {name=E1 value=1000}
C {iopin.sym} 10 -80 0 0 {name=p1 lab=vop}
C {iopin.sym} 20 30 0 0 {name=p2 lab=vom}
C {iopin.sym} -160 -40 2 0 {name=p3 lab=vip}
C {iopin.sym} -160 0 2 0 {name=p4 lab=vim}
