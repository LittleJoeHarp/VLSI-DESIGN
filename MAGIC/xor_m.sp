*2023112027_ritama_sanyal
.include TSMC_180nm.txt

.param SUPPLY=1.8V
.option scale=0.09u
.global gnd vdd
.option scale=0.09u

Vdd vdd gnd 'SUPPLY'

vd a gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 25ns 50ns
vd2 b gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 20ns 50ns

M1000 inv_0/op a vdd inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=360 ps=184
M1001 inv_0/op a gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=180 ps=112
M1002 inv_1/op b vdd inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1003 inv_1/op b gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1004 op inv_0/op a_10_10# w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1005 vdd b a_10_10# w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 gnd inv_1/op a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1007 a_10_10# inv_1/op op w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_10_n43# a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1009 a_38_n43# inv_0/op op Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1010 op b a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 a_10_10# a vdd w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
C0 b inv_1/op 0.22fF
C1 inv_1/w_0_6# b 0.23fF
C2 inv_0/op a 0.27fF
C3 inv_1/w_0_6# inv_1/op 0.03fF
C4 w_n3_4# a 0.06fF
C5 b inv_0/op 0.20fF
C6 b a_10_10# 0.12fF
C7 inv_0/op inv_1/op 0.08fF
C8 inv_0/w_0_6# a 0.06fF
C9 w_n3_4# b 0.06fF
C10 gnd op 0.14fF
C11 w_n3_4# inv_1/op 0.06fF
C12 gnd vdd 0.25fF
C13 w_n3_4# inv_0/op 0.06fF
C14 vdd a 0.11fF
C15 w_n3_4# a_10_10# 0.16fF
C16 inv_0/w_0_6# inv_0/op 0.03fF
C17 op inv_1/op 0.52fF
C18 b vdd 0.10fF
C19 vdd inv_1/op 0.15fF
C20 inv_1/w_0_6# vdd 0.06fF
C21 op inv_0/op 0.06fF
C22 gnd a 0.22fF
C23 op a_10_10# 0.45fF
C24 inv_0/op vdd 0.15fF
C25 w_n3_4# op 0.02fF
C26 a_10_10# vdd 0.93fF
C27 gnd b 0.11fF
C28 w_n3_4# vdd 0.12fF
C29 gnd inv_1/op 0.20fF
C30 inv_0/w_0_6# vdd 0.09fF
C31 b a 0.09fF
C32 inv_1/op a 0.06fF
C33 gnd inv_0/op 0.17fF
C34 vdd Gnd 0.59fF
C35 op Gnd 0.04fF
C36 a_10_10# Gnd 0.01fF
C37 w_n3_4# Gnd 1.14fF
C38 gnd Gnd 0.72fF
C39 inv_1/op Gnd 0.49fF
C40 b Gnd 1.37fF
C41 inv_1/w_0_6# Gnd 0.58fF
C42 inv_0/op Gnd 0.50fF
C43 a Gnd 1.28fF
C44 inv_0/w_0_6# Gnd 0.58fF

.tran 0.1n 200n

.control
run
plot v(op)+4 v(a)+2 v(b)+2
set hcopypscolor = 1
hardcopy xor_transient_resp.eps v(input) v(output)
.endc

.end