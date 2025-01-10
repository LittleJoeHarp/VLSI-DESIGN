* ritama_2023112027
.include TSMC_180nm.txt
.param SUPPLY=1.8
.option scale=0.09u
.global gnd vdd
.option scale=0.09u
Vdd vdd gnd 'SUPPLY'
Vin in gnd pulse 0 1.8 0ns 1ns 1ns 10ns 20ns

M1000 op in vdd w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=60 ps=34
M1001 op in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=30 ps=22
C0 op vdd 0.15fF
C1 in op 0.04fF
C2 op gnd 0.10fF
C3 in vdd 0.02fF
C4 in gnd 0.05fF
C5 op w_0_6# 0.03fF
C6 vdd w_0_6# 0.06fF
C7 in w_0_6# 0.06fF
C8 gnd Gnd 0.09fF
C9 op Gnd 0.05fF
C10 vdd Gnd 0.03fF
C11 in Gnd 0.14fF
C12 w_0_6# Gnd 0.58fF

.tran 0.1n 200n

.control
run
plot v(op) v(in)
.endc

.end
