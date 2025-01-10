*2023112027_ritama_sanyal
.include TSMC_180nm.txt

.param SUPPLY=1.8V
.option scale=0.09u
.global gnd vdd
.option scale=0.09u
.option scale=0.09u

Vdd vdd gnd 'SUPPLY'

vd a gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 25ns 50ns
vd2 b gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 20ns 50ns

M1000 a_13_6# a vdd w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=120 ps=58
M1001 gnd b out Gnd cmosn w=6 l=2
+  ad=60 pd=44 as=48 ps=28
M1002 out b a_13_6# w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1003 out a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
C0 out vdd 0.03fF
C1 out b 0.16fF
C2 gnd out 0.18fF
C3 out a 0.02fF
C4 b a 0.24fF
C5 gnd a 0.05fF
C6 out w_0_0# 0.05fF
C7 vdd w_0_0# 0.08fF
C8 b w_0_0# 0.06fF
C9 a w_0_0# 0.06fF
C10 gnd Gnd 0.13fF
C11 out Gnd 0.09fF
C12 vdd Gnd 0.05fF
C13 b Gnd 0.20fF
C14 a Gnd 0.18fF
C15 w_0_0# Gnd 1.23fF


.tran 0.1n 200n

.control
run
plot v(out)+4 v(a)+2 v(b)+2
.endc

.end