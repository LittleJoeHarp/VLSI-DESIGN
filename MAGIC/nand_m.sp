*2023112027_ritama_sanyal
.include TSMC_180nm.txt

.param SUPPLY=1.8V
.option scale=0.09u
.global gnd vdd


Vdd vdd gnd 'SUPPLY'

vd a gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 25ns 50ns
vd2 b gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 20ns 50ns

M1000 a_13_n26# a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=60 ps=34
M1001 out a vdd w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1002 vdd b out w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1003 out b a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
C0 out vdd 0.28fF
C1 out gnd 0.03fF
C2 a w_0_0# 0.06fF
C3 b gnd 0.05fF
C4 b out 0.13fF
C5 a vdd 0.02fF
C6 vdd w_0_0# 0.10fF
C7 out w_0_0# 0.04fF
C8 a b 0.24fF
C9 b w_0_0# 0.06fF


.tran 0.1n 200n

.control
run
plot v(out)+4 v(a)+2 v(b)+2
.endc

.end