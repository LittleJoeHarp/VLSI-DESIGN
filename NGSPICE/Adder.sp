*2023112027_ritama_sanyal
.include TSMC_180nm.txt
.param SUPPLY=1.8V
.param LAMBDA=0.09u
.param length={2*LAMBDA}
.param w={6*LAMBDA}
.global gnd vdd

Vdd vdd gnd 'SUPPLY'

vcin cin gnd pulse 1.8 0 0ns 10ps 10ps 1.5ns 3ns
vy1 y1 gnd pulse 1.8 0 0ns 10ps 10ps 3ns 6ns
vy2 y2 gnd pulse 1.8 0 0ns 10ps 10ps 6ns 12ns
vy3 y3 gnd pulse 1.8 0 0ns 10ps 10ps 80ns 160ns
vy4 y4 gnd pulse 1.8 0 0ns 10ps 10ps 160ns 320ns
vx1 x1 gnd pulse 1.8 0 0ns 10ps 10ps 320ns 740ns
vx2 x2 gnd pulse 1.8 0 0ns 10ps 10ps 1080ns 2160ns
vx3 x3 gnd pulse 1.8 0 0ns 10ps 10ps 2160ns 4320ns
vx4 x4 gnd pulse 1.8 0 0ns 10ps 10ps 4320ns 8640ns

.subckt nand y a b w vdd gnd
  M1 y a vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M2 y b vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M3 y a l gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M4 l b gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
.ends nand

.subckt nor y a b w vdd gnd
  M1 l a vdd vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M2 y b l vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M3 y a gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}

  M4 y b gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}
.ends nor

.subckt inv y x w vdd gnd
  M1 y x vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}

  M2 y x gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}
.ends inv

.subckt xor y a b w vdd gnd  
  x1 abar a w vdd gnd inv
  x2 bbar b w vdd gnd inv

  M1 l1 a vdd vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M2 y bbar l1 vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M3 l2 abar vdd vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M4 y b l2 vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}


  M5 y a l3 gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}

  M6 l3 b gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}

  M7 y abar l4 gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}

  M8 l4 bbar gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
.ends xor

.subckt prop_gen p g k x y w vdd gnd  
  x1 p x y w vdd gnd nor
  x2 g x y w vdd gnd nand
  x3 k x y w vdd gnd xor
.ends prop_gen

x1 p1 g1 k1 x1 y1 w vdd gnd prop_gen
x2 p2 g2 k2 x2 y2 w vdd gnd prop_gen
x3 p3 g3 k3 x3 y3 w vdd gnd prop_gen
x4 p4 g4 k4 x4 y4 w vdd gnd prop_gen

x5 cinnot cin w vdd gnd inv
x6 o1 cinnot p1 w vdd gnd nor
x7 o2 o1 w vdd gnd inv
x8 n1 o2 g1 w vdd gnd nand

x9 l2 p1 p2 w vdd gnd nor
x10 o3 p2 g1 w vdd gnd nor 
x11 o4 o3 w vdd gnd inv
x12 n2 o4 g2 w vdd gnd nand

x13 l3 p2 p3 w vdd gnd nor
x14 o5 p3 g2 w vdd gnd nor 
x15 o6 o5 w vdd gnd inv
x16 n3 o6 g3 w vdd gnd nand

x17 l4 p3 p4 w vdd gnd nor
x18 o7 p4 g3 w vdd gnd nor 
x55 o8 o7 w vdd gnd inv
x19 n4 o8 g4 w vdd gnd nand

x20 s1 cin k1 w vdd gnd xor
x21 s2 n1 k2 w vdd gnd xor

x22 o9 cin l2 w vdd gnd nand
x23 o10 o9 w vdd gnd inv
x24 c3not o10 n2 w vdd gnd nor
x25 c3 c3not w vdd gnd inv
x26 s3 c3 k3 w vdd gnd xor

x27 o11 n1 l3 w vdd gnd nand
x28 o12 o11 w vdd gnd inv
x29 c4not o12 n3 w vdd gnd nor
x30 c4 c4not w vdd gnd inv
x31 s4 c4 k4 w vdd gnd xor

x32 ponot l2 l4 w vdd gnd nand 
x33 o13 l4 n2 w vdd gnd nand
x34 o14 o13 w vdd gnd inv
x35 gonot o14 n4 w vdd gnd nor

x36 po ponot w vdd gnd inv
x37 go gonot w vdd gnd inv

x38 o15 cin po w vdd gnd nand
x39 o16 o15 w vdd gnd inv
x40 coutnot go o16 w vdd gnd nor
x41 cout coutnot w vdd gnd inv

C1 s1 gnd 10ff
C2 s2 gnd 10ff
C3 s3 gnd 10ff
C4 s4 gnd 10ff
C5 cout gnd 10ff

.tran 10p 100n

.measure tran tpdr1 TRIG v(y2) VAL='0.6*SUPPLY' RISE=1 TARG v(s4) VAL='0.6*SUPPLY' RISE=1
.measure tran tpdf1 TRIG v(y2) VAL='0.6*SUPPLY' FALL=1 TARG v(s4) VAL='0.6*SUPPLY' FALL=1
.measure tran tpd1 param='(tpdr1+tpdf1)/2'

.control
run

plot v(y1) v(y2)+2 v(y3)+4 v(y4)+6 v(x1)+8 v(x2)+10 v(x3)+12 v(x4)+14 v(cin)+16
plot v(s1) v(s2)+2 v(s3)+4 v(s4)+6 v(cout)+8
.endc
