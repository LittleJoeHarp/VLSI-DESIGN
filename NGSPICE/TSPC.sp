*2023112027_ritama_sanyal
.include TSMC_180nm.txt
.param SUPPLY=1.8V
.param LAMBDA=0.09u
.param length={2*LAMBDA}
.param w={6*LAMBDA}
.global gnd vdd

Vdd vdd gnd 'SUPPLY'

vclk clk gnd pulse 0 1.8 0ns 0ns 0ns 4ns 9ns
vd d2 gnd 1.8 pulse 0 1.8 0ns 0ns 0ns 25ns 50ns

.subckt NOT Out In Vdd Gnd
M2 Out In Vdd Vdd CMOSP W={2*W} L={2*LAMBDA} AS={5*2*W*LAMBDA} PS={10*LAMBDA+2*2*W} AD={5*2*W*LAMBDA} PD={10*LAMBDA+2*2*W}
M1 Out In Gnd Gnd CMOSN W={W} L={2*LAMBDA} AS={5*W*LAMBDA} PS={10*LAMBDA+2*W} AD={5*W*LAMBDA} PD={10*LAMBDA+2*W}
.ends NOT

.subckt tspc q d clk vdd gnd  
  M1 a d vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M2 q1 clk a vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M3 q1 d gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M4 q2 clk vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M5 q2 q1 b gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M6 b clk gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M7 qq q2 vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M8 qq clk c gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M9 c q2 gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  x5 q qq vdd gnd NOT
.ends tspc

x2 q2 d2 clk vdd gnd tspc
C2 q2 gnd 100f

.tran 100p 200n
.ic v(d2)=0 v(clk)=0 v(q2)=0


.measure tran delay
+ TRIG v(clk) VAL='0.5*SUPPLY' RISE=1
+ TARG v(q2) VAL='0.5*SUPPLY' RISE=1

.control
run
plot  v(clk)+4v(d2)+2v(q2)
.endc