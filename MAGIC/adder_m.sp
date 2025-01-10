*2023112027-ritama_sanyal
.include TSMC_180nm.txt
.param SUPPLY=1.8V
.param LAMBDA=0.09u
.param length={2*LAMBDA}
.param w={6*LAMBDA}
.global gnd vdd
.option scale=0.09u

Vdd vdd gnd 'SUPPLY'

vcin cin gnd pulse 1.8 0 0ns 10ps 10ps 1.5ns 3ns
vy1 y1in gnd pulse 1.8 0 0ns 10ps 10ps 3ns 6ns
vy2 y2in gnd pulse 1.8 0 0ns 10ps 10ps 6ns 12ns
vy3 y3in gnd pulse 1.8 0 0ns 10ps 10ps 80ns 160ns
vy4 y4in gnd pulse 1.8 0 0ns 10ps 10ps 160ns 320ns
vx1 x1in gnd pulse 1.8 0 0ns 10ps 10ps 320ns 740ns
vx2 x2in gnd pulse 1.8 0 0ns 10ps 10ps 1080ns 2160ns
vx3 x3in gnd pulse 1.8 0 0ns 10ps 10ps 2160ns 4320ns
vx4 x4in gnd pulse 1.8 0 0ns 10ps 10ps 4320ns 8640ns

.subckt nand_ckt y a b w vdd gnd
  M1 y a vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M2 y b vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M3 y a l gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
  M4 l b gnd gnd CMOSN W={2*w} L={length} AS={5*2*w*LAMBDA} PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}
.ends nand_ckt

.subckt nor_ckt y a b w vdd gnd
  M1 l a vdd vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M2 y b l vdd CMOSP W={4*w} L={length} AS={5*4*w*LAMBDA} 
  + PS={10*LAMBDA+2*4*w} AD={5*4*w*LAMBDA} PD={10*LAMBDA+2*4*w}

  M3 y a gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}

  M4 y b gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}
.ends nor_ckt

.subckt inv y x w vdd gnd
  M1 y x vdd vdd CMOSP W={2*w} L={length} AS={5*2*w*LAMBDA} 
  + PS={10*LAMBDA+2*2*w} AD={5*2*w*LAMBDA} PD={10*LAMBDA+2*2*w}

  M2 y x gnd gnd CMOSN W={w} L={length} AS={5*w*LAMBDA} 
  + PS={10*LAMBDA+2*w} AD={5*w*LAMBDA} PD={10*LAMBDA+2*w}
.ends inv

.subckt xor_ckt y a b w vdd gnd  
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
.ends xor_ckt

.subckt pggen p g k x y w vdd gnd  
  x1 p x y w vdd gnd nor_ckt
  x2 g x y w vdd gnd nand_ckt
  x3 k x y w vdd gnd xor_ckt
.ends pggen

M1000 nand_3/a_13_n26# nand_4/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=3510 ps=2284
M1001 inv_5/in nand_4/a vdd inv_5/w_0_6# cmosp w=12 l=2
+  ad=96 pd=40 as=7020 ps=3668
M1002 vdd nor_1/a inv_5/in inv_5/w_0_6# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1003 inv_5/in nor_1/a nand_3/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1004 nand_4/a_13_n26# nand_4/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1005 inv_7/in nand_4/a vdd inv_7/w_0_6# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1006 vdd nand_4/b inv_7/in inv_7/w_0_6# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 inv_7/in nand_4/b nand_4/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1008 nand_5/a_13_n26# nand_5/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1009 inv_8/in nand_5/a vdd inv_8/w_0_6# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1010 vdd cin inv_8/in inv_8/w_0_6# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 inv_8/in cin nand_5/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1012 cla_0/nand_0/a cla_0/inv_0/in vdd cla_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1013 cla_0/nand_0/a cla_0/inv_0/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1014 cla_0/nor_0/a_13_6# cla_1/p0 vdd cla_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1015 gnd nor_0/a nand_4/b Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1016 nand_4/b nor_0/a cla_0/nor_0/a_13_6# cla_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1017 nand_4/b cla_1/p0 gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 cla_0/nor_1/a_13_6# cla_1/p0 vdd cla_0/nor_1/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1019 gnd nand_0/b cla_0/inv_0/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1020 cla_0/inv_0/in nand_0/b cla_0/nor_1/a_13_6# cla_0/nor_1/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1021 cla_0/inv_0/in cla_1/p0 gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1022 cla_0/nand_0/a_13_n26# cla_0/nand_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1023 nor_1/a cla_0/nand_0/a vdd cla_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1024 vdd cla_1/nor_1/b nor_1/a cla_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1025 nor_1/a cla_1/nor_1/b cla_0/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1026 cla_1/nand_0/a cla_1/inv_0/in vdd cla_1/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1027 cla_1/nand_0/a cla_1/inv_0/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1028 cla_1/nor_0/a_13_6# cla_2/p0 vdd cla_1/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1029 gnd cla_1/p0 nand_2/a Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1030 nand_2/a cla_1/p0 cla_1/nor_0/a_13_6# cla_1/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1031 nand_2/a cla_2/p0 gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 cla_1/nor_1/a_13_6# cla_2/p0 vdd cla_1/nor_1/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1033 gnd cla_1/nor_1/b cla_1/inv_0/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1034 cla_1/inv_0/in cla_1/nor_1/b cla_1/nor_1/a_13_6# cla_1/nor_1/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1035 cla_1/inv_0/in cla_2/p0 gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1036 cla_1/nand_0/a_13_n26# cla_1/nand_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1037 nor_2/a cla_1/nand_0/a vdd cla_1/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1038 vdd cla_2/nor_1/b nor_2/a cla_1/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1039 nor_2/a cla_2/nor_1/b cla_1/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1040 cla_2/nand_0/a cla_2/inv_0/in vdd cla_2/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1041 cla_2/nand_0/a cla_2/inv_0/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1042 cla_2/nor_0/a_13_6# cla_2/nor_1/a vdd cla_2/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1043 gnd cla_2/p0 nand_4/a Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1044 nand_4/a cla_2/p0 cla_2/nor_0/a_13_6# cla_2/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1045 nand_4/a cla_2/nor_1/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 cla_2/nor_1/a_13_6# cla_2/nor_1/a vdd cla_2/nor_1/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1047 gnd cla_2/nor_1/b cla_2/inv_0/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1048 cla_2/inv_0/in cla_2/nor_1/b cla_2/nor_1/a_13_6# cla_2/nor_1/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1049 cla_2/inv_0/in cla_2/nor_1/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 cla_2/nand_0/a_13_n26# cla_2/nand_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1051 nor_3/a cla_2/nand_0/a vdd cla_2/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1052 vdd cla_2/nand_0/b nor_3/a cla_2/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 nor_3/a cla_2/nand_0/b cla_2/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1054 sumffo_0/xor_0/inv_0/op sumffo_0/xor_0/a vdd sumffo_0/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1055 sumffo_0/xor_0/inv_0/op sumffo_0/xor_0/a gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1056 sumffo_0/xor_0/inv_1/op cin vdd sumffo_0/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1057 sumffo_0/xor_0/inv_1/op cin gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1058 s1 sumffo_0/xor_0/inv_0/op sumffo_0/xor_0/a_10_10# sumffo_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1059 vdd cin sumffo_0/xor_0/a_10_10# sumffo_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 gnd sumffo_0/xor_0/inv_1/op sumffo_0/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1061 sumffo_0/xor_0/a_10_10# sumffo_0/xor_0/inv_1/op s1 sumffo_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 sumffo_0/xor_0/a_10_n43# sumffo_0/xor_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1063 sumffo_0/xor_0/a_38_n43# sumffo_0/xor_0/inv_0/op s1 Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1064 s1 cin sumffo_0/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 sumffo_0/xor_0/a_10_10# sumffo_0/xor_0/a vdd sumffo_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1066 ffipg_0/pggen_0/xor_0/inv_0/op x1in vdd ffipg_0/pggen_0/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1067 ffipg_0/pggen_0/xor_0/inv_0/op x1in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1068 ffipg_0/pggen_0/xor_0/inv_1/op y1in vdd ffipg_0/pggen_0/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1069 ffipg_0/pggen_0/xor_0/inv_1/op y1in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1070 sumffo_0/xor_0/a ffipg_0/pggen_0/xor_0/inv_0/op ffipg_0/pggen_0/xor_0/a_10_10# ffipg_0/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1071 vdd y1in ffipg_0/pggen_0/xor_0/a_10_10# ffipg_0/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1072 gnd ffipg_0/pggen_0/xor_0/inv_1/op ffipg_0/pggen_0/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1073 ffipg_0/pggen_0/xor_0/a_10_10# ffipg_0/pggen_0/xor_0/inv_1/op sumffo_0/xor_0/a ffipg_0/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1074 ffipg_0/pggen_0/xor_0/a_10_n43# x1in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1075 ffipg_0/pggen_0/xor_0/a_38_n43# ffipg_0/pggen_0/xor_0/inv_0/op sumffo_0/xor_0/a Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1076 sumffo_0/xor_0/a y1in ffipg_0/pggen_0/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1077 ffipg_0/pggen_0/xor_0/a_10_10# x1in vdd ffipg_0/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1078 ffipg_0/pggen_0/nor_0/a_13_6# y1in vdd ffipg_0/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1079 gnd x1in nor_0/a Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1080 nor_0/a x1in ffipg_0/pggen_0/nor_0/a_13_6# ffipg_0/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1081 nor_0/a y1in gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1082 ffipg_0/pggen_0/nand_0/a_13_n26# x1in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1083 nand_0/b x1in vdd ffipg_0/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1084 vdd y1in nand_0/b ffipg_0/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1085 nand_0/b y1in ffipg_0/pggen_0/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1086 sumffo_2/xor_0/inv_0/op inv_1/op vdd sumffo_2/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1087 sumffo_2/xor_0/inv_0/op inv_1/op gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1088 sumffo_2/xor_0/inv_1/op sumffo_2/xor_0/b vdd sumffo_2/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1089 sumffo_2/xor_0/inv_1/op sumffo_2/xor_0/b gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1090 s3 sumffo_2/xor_0/inv_0/op sumffo_2/xor_0/a_10_10# sumffo_2/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1091 vdd sumffo_2/xor_0/b sumffo_2/xor_0/a_10_10# sumffo_2/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1092 gnd sumffo_2/xor_0/inv_1/op sumffo_2/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1093 sumffo_2/xor_0/a_10_10# sumffo_2/xor_0/inv_1/op s3 sumffo_2/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 sumffo_2/xor_0/a_10_n43# inv_1/op gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1095 sumffo_2/xor_0/a_38_n43# sumffo_2/xor_0/inv_0/op s3 Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1096 s3 sumffo_2/xor_0/b sumffo_2/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 sumffo_2/xor_0/a_10_10# inv_1/op vdd sumffo_2/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1098 sumffo_1/xor_0/inv_0/op sumffo_1/xor_0/a vdd sumffo_1/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1099 sumffo_1/xor_0/inv_0/op sumffo_1/xor_0/a gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1100 sumffo_1/xor_0/inv_1/op nand_2/b vdd sumffo_1/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1101 sumffo_1/xor_0/inv_1/op nand_2/b gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1102 s2 sumffo_1/xor_0/inv_0/op sumffo_1/xor_0/a_10_10# sumffo_1/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1103 vdd nand_2/b sumffo_1/xor_0/a_10_10# sumffo_1/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1104 gnd sumffo_1/xor_0/inv_1/op sumffo_1/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1105 sumffo_1/xor_0/a_10_10# sumffo_1/xor_0/inv_1/op s2 sumffo_1/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1106 sumffo_1/xor_0/a_10_n43# sumffo_1/xor_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1107 sumffo_1/xor_0/a_38_n43# sumffo_1/xor_0/inv_0/op s2 Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1108 s2 nand_2/b sumffo_1/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 sumffo_1/xor_0/a_10_10# sumffo_1/xor_0/a vdd sumffo_1/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1110 ffipg_1/pggen_0/xor_0/inv_0/op x2in vdd ffipg_1/pggen_0/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1111 ffipg_1/pggen_0/xor_0/inv_0/op x2in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1112 ffipg_1/pggen_0/xor_0/inv_1/op y2in vdd ffipg_1/pggen_0/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1113 ffipg_1/pggen_0/xor_0/inv_1/op y2in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1114 sumffo_1/xor_0/a ffipg_1/pggen_0/xor_0/inv_0/op ffipg_1/pggen_0/xor_0/a_10_10# ffipg_1/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1115 vdd y2in ffipg_1/pggen_0/xor_0/a_10_10# ffipg_1/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 gnd ffipg_1/pggen_0/xor_0/inv_1/op ffipg_1/pggen_0/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1117 ffipg_1/pggen_0/xor_0/a_10_10# ffipg_1/pggen_0/xor_0/inv_1/op sumffo_1/xor_0/a ffipg_1/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1118 ffipg_1/pggen_0/xor_0/a_10_n43# x2in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1119 ffipg_1/pggen_0/xor_0/a_38_n43# ffipg_1/pggen_0/xor_0/inv_0/op sumffo_1/xor_0/a Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1120 sumffo_1/xor_0/a y2in ffipg_1/pggen_0/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 ffipg_1/pggen_0/xor_0/a_10_10# x2in vdd ffipg_1/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 ffipg_1/pggen_0/nor_0/a_13_6# y2in vdd ffipg_1/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1123 gnd x2in cla_1/p0 Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1124 cla_1/p0 x2in ffipg_1/pggen_0/nor_0/a_13_6# ffipg_1/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1125 cla_1/p0 y2in gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 ffipg_1/pggen_0/nand_0/a_13_n26# x2in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1127 cla_1/nor_1/b x2in vdd ffipg_1/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1128 vdd y2in cla_1/nor_1/b ffipg_1/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 cla_1/nor_1/b y2in ffipg_1/pggen_0/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1130 sumffo_3/xor_0/inv_0/op inv_4/op vdd sumffo_3/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1131 sumffo_3/xor_0/inv_0/op inv_4/op gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1132 sumffo_3/xor_0/inv_1/op sumffo_3/xor_0/b vdd sumffo_3/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1133 sumffo_3/xor_0/inv_1/op sumffo_3/xor_0/b gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1134 s4 sumffo_3/xor_0/inv_0/op sumffo_3/xor_0/a_10_10# sumffo_3/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1135 vdd sumffo_3/xor_0/b sumffo_3/xor_0/a_10_10# sumffo_3/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 gnd sumffo_3/xor_0/inv_1/op sumffo_3/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1137 sumffo_3/xor_0/a_10_10# sumffo_3/xor_0/inv_1/op s4 sumffo_3/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 sumffo_3/xor_0/a_10_n43# inv_4/op gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1139 sumffo_3/xor_0/a_38_n43# sumffo_3/xor_0/inv_0/op s4 Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1140 s4 sumffo_3/xor_0/b sumffo_3/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1141 sumffo_3/xor_0/a_10_10# inv_4/op vdd sumffo_3/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1142 ffipg_2/pggen_0/xor_0/inv_0/op x3in vdd ffipg_2/pggen_0/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1143 ffipg_2/pggen_0/xor_0/inv_0/op x3in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1144 ffipg_2/pggen_0/xor_0/inv_1/op y3in vdd ffipg_2/pggen_0/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1145 ffipg_2/pggen_0/xor_0/inv_1/op y3in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1146 sumffo_2/xor_0/b ffipg_2/pggen_0/xor_0/inv_0/op ffipg_2/pggen_0/xor_0/a_10_10# ffipg_2/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1147 vdd y3in ffipg_2/pggen_0/xor_0/a_10_10# ffipg_2/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1148 gnd ffipg_2/pggen_0/xor_0/inv_1/op ffipg_2/pggen_0/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1149 ffipg_2/pggen_0/xor_0/a_10_10# ffipg_2/pggen_0/xor_0/inv_1/op sumffo_2/xor_0/b ffipg_2/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1150 ffipg_2/pggen_0/xor_0/a_10_n43# x3in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1151 ffipg_2/pggen_0/xor_0/a_38_n43# ffipg_2/pggen_0/xor_0/inv_0/op sumffo_2/xor_0/b Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1152 sumffo_2/xor_0/b y3in ffipg_2/pggen_0/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1153 ffipg_2/pggen_0/xor_0/a_10_10# x3in vdd ffipg_2/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 ffipg_2/pggen_0/nor_0/a_13_6# y3in vdd ffipg_2/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1155 gnd x3in cla_2/p0 Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1156 cla_2/p0 x3in ffipg_2/pggen_0/nor_0/a_13_6# ffipg_2/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1157 cla_2/p0 y3in gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1158 ffipg_2/pggen_0/nand_0/a_13_n26# x3in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1159 cla_2/nor_1/b x3in vdd ffipg_2/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1160 vdd y3in cla_2/nor_1/b ffipg_2/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1161 cla_2/nor_1/b y3in ffipg_2/pggen_0/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1162 ffipg_3/pggen_0/xor_0/inv_0/op x4in vdd ffipg_3/pggen_0/xor_0/inv_0/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1163 ffipg_3/pggen_0/xor_0/inv_0/op x4in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1164 ffipg_3/pggen_0/xor_0/inv_1/op y4in vdd ffipg_3/pggen_0/xor_0/inv_1/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1165 ffipg_3/pggen_0/xor_0/inv_1/op y4in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1166 sumffo_3/xor_0/b ffipg_3/pggen_0/xor_0/inv_0/op ffipg_3/pggen_0/xor_0/a_10_10# ffipg_3/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1167 vdd y4in ffipg_3/pggen_0/xor_0/a_10_10# ffipg_3/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 gnd ffipg_3/pggen_0/xor_0/inv_1/op ffipg_3/pggen_0/xor_0/a_38_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1169 ffipg_3/pggen_0/xor_0/a_10_10# ffipg_3/pggen_0/xor_0/inv_1/op sumffo_3/xor_0/b ffipg_3/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 ffipg_3/pggen_0/xor_0/a_10_n43# x4in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1171 ffipg_3/pggen_0/xor_0/a_38_n43# ffipg_3/pggen_0/xor_0/inv_0/op sumffo_3/xor_0/b Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1172 sumffo_3/xor_0/b y4in ffipg_3/pggen_0/xor_0/a_10_n43# Gnd cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1173 ffipg_3/pggen_0/xor_0/a_10_10# x4in vdd ffipg_3/pggen_0/xor_0/w_n3_4# cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1174 ffipg_3/pggen_0/nor_0/a_13_6# y4in vdd ffipg_3/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1175 gnd x4in cla_2/nor_1/a Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1176 cla_2/nor_1/a x4in ffipg_3/pggen_0/nor_0/a_13_6# ffipg_3/pggen_0/nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1177 cla_2/nor_1/a y4in gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 ffipg_3/pggen_0/nand_0/a_13_n26# x4in gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1179 cla_2/nand_0/b x4in vdd ffipg_3/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1180 vdd y4in cla_2/nand_0/b ffipg_3/pggen_0/nand_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1181 cla_2/nand_0/b y4in ffipg_3/pggen_0/nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1182 nor_0/a_13_6# nor_0/a vdd nor_0/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1183 gnd cinbar inv_0/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1184 inv_0/in cinbar nor_0/a_13_6# nor_0/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1185 inv_0/in nor_0/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1186 nand_0/a inv_0/in vdd nor_0/w_0_0# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1187 nand_0/a inv_0/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1188 nor_1/a_13_6# nor_1/a vdd nor_1/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1189 gnd nor_1/b inv_1/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1190 inv_1/in nor_1/b nor_1/a_13_6# nor_1/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1191 inv_1/in nor_1/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 inv_1/op inv_1/in vdd nor_1/w_0_0# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1193 inv_1/op inv_1/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1194 nor_2/a_13_6# nor_2/a vdd nor_2/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1195 gnd nor_2/b inv_4/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1196 inv_4/in nor_2/b nor_2/a_13_6# nor_2/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1197 inv_4/in nor_2/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1198 nor_1/b inv_2/in vdd inv_2/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1199 nor_1/b inv_2/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1200 nor_3/a_13_6# nor_3/a vdd nor_3/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1201 gnd nor_3/b inv_6/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1202 inv_6/in nor_3/b nor_3/a_13_6# nor_3/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1203 inv_6/in nor_3/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1204 nor_2/b inv_3/in vdd inv_3/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1205 nor_2/b inv_3/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1206 nor_4/a_13_6# nor_4/a vdd nor_4/w_0_0# cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1207 gnd nor_4/b inv_9/in Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1208 inv_9/in nor_4/b nor_4/a_13_6# nor_4/w_0_0# cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1209 inv_9/in nor_4/a gnd Gnd cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1210 inv_4/op inv_4/in vdd nor_2/w_0_0# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1211 inv_4/op inv_4/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1212 nor_3/b inv_5/in vdd inv_5/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1213 nor_3/b inv_5/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1214 nand_5/a inv_7/in vdd inv_7/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1215 nand_5/a inv_7/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1216 nor_4/b inv_6/in vdd nor_3/w_0_0# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1217 nor_4/b inv_6/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1218 nor_4/a inv_8/in vdd inv_8/w_0_6# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1219 nor_4/a inv_8/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1220 cout inv_9/in vdd nor_4/w_0_0# cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1221 cout inv_9/in gnd Gnd cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1222 nand_0/a_13_n26# nand_0/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1223 nand_2/b nand_0/a vdd nor_0/w_0_0# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1224 vdd nand_0/b nand_2/b nor_0/w_0_0# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1225 nand_2/b nand_0/b nand_0/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1226 nand_1/a_13_n26# nand_4/b gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1227 inv_2/in nand_4/b vdd inv_2/w_0_6# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1228 vdd cin inv_2/in inv_2/w_0_6# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1229 inv_2/in cin nand_1/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1230 nand_2/a_13_n26# nand_2/a gnd Gnd cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1231 inv_3/in nand_2/a vdd inv_3/w_0_6# cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1232 vdd nand_2/b inv_3/in inv_3/w_0_6# cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 inv_3/in nand_2/b nand_2/a_13_n26# Gnd cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
C0 sumffo_0/xor_0/inv_0/w_0_6# vdd 0.09fF
C1 vdd inv_2/in 0.30fF
C2 cla_0/nand_0/w_0_0# nand_2/b 0.05fF
C3 cla_2/nor_1/b cla_1/nor_1/w_0_0# 0.02fF
C4 gnd ffipg_2/pggen_0/xor_0/inv_0/op 0.21fF
C5 ffipg_1/pggen_0/xor_0/inv_0/op y2in 0.20fF
C6 cla_2/nor_1/b cla_2/nor_1/a 0.30fF
C7 nand_4/b cin 0.33fF
C8 ffipg_2/pggen_0/xor_0/inv_0/op ffipg_2/pggen_0/xor_0/inv_0/w_0_6# 0.03fF
C9 nand_2/a nand_2/b 0.31fF
C10 vdd sumffo_1/xor_0/w_n3_4# 0.12fF
C11 cla_2/nand_0/a cla_2/inv_0/w_0_6# 0.03fF
C12 inv_1/in inv_1/op 0.04fF
C13 ffipg_1/pggen_0/xor_0/inv_0/w_0_6# x2in 0.06fF
C14 sumffo_0/xor_0/w_n3_4# sumffo_0/xor_0/inv_1/op 0.06fF
C15 sumffo_0/xor_0/w_n3_4# s1 0.02fF
C16 nand_0/a vdd 0.17fF
C17 cla_0/inv_0/in cla_0/inv_0/w_0_6# 0.06fF
C18 vdd sumffo_0/xor_0/inv_1/op 0.15fF
C19 nor_1/a sumffo_3/xor_0/b 0.06fF
C20 vdd cla_1/nor_1/w_0_0# 0.31fF
C21 gnd ffipg_0/pggen_0/xor_0/inv_1/op 0.20fF
C22 ffipg_3/pggen_0/xor_0/inv_0/w_0_6# x4in 0.06fF
C23 vdd cla_2/nor_1/a 0.31fF
C24 cla_0/nor_0/w_0_0# nor_0/a 0.06fF
C25 vdd sumffo_0/xor_0/inv_1/w_0_6# 0.07fF
C26 ffipg_0/pggen_0/xor_0/w_n3_4# sumffo_0/xor_0/a 0.02fF
C27 sumffo_1/xor_0/a sumffo_1/xor_0/inv_0/op 0.27fF
C28 cla_2/inv_0/in cla_2/inv_0/w_0_6# 0.06fF
C29 ffipg_2/pggen_0/nand_0/w_0_0# cla_2/p0 0.24fF
C30 ffipg_0/pggen_0/xor_0/inv_1/op ffipg_0/pggen_0/xor_0/inv_1/w_0_6# 0.03fF
C31 ffipg_0/pggen_0/xor_0/inv_0/op gnd 0.17fF
C32 cla_2/nor_1/a cla_2/nor_1/w_0_0# 0.06fF
C33 nor_2/a nor_2/b 0.39fF
C34 x3in cla_2/p0 0.22fF
C35 sumffo_3/xor_0/w_n3_4# sumffo_3/xor_0/inv_1/op 0.06fF
C36 cin sumffo_1/xor_0/a_10_10# 0.06fF
C37 inv_7/in nand_4/b 0.13fF
C38 cla_2/nand_0/w_0_0# gnd 0.08fF
C39 vdd inv_3/w_0_6# 0.15fF
C40 cin sumffo_0/xor_0/a 0.19fF
C41 vdd sumffo_3/xor_0/w_n3_4# 0.12fF
C42 vdd sumffo_2/xor_0/inv_1/w_0_6# 0.06fF
C43 cla_1/nor_1/b cla_2/p0 0.36fF
C44 inv_0/in gnd 0.24fF
C45 sumffo_1/xor_0/a sumffo_1/xor_0/inv_0/w_0_6# 0.06fF
C46 ffipg_0/pggen_0/nor_0/w_0_0# nor_0/a 0.05fF
C47 cla_2/nor_1/a sumffo_3/xor_0/b 0.05fF
C48 x1in ffipg_0/pggen_0/xor_0/inv_1/op 0.06fF
C49 nand_4/b cla_0/nand_0/w_0_0# 0.00fF
C50 sumffo_1/xor_0/w_n3_4# sumffo_1/xor_0/inv_0/op 0.06fF
C51 gnd inv_1/op 0.32fF
C52 nor_2/w_0_0# inv_4/in 0.11fF
C53 cla_1/inv_0/in cla_1/nor_1/w_0_0# 0.05fF
C54 cout vdd 0.15fF
C55 s2 sumffo_1/xor_0/inv_0/op 0.06fF
C56 cla_2/nor_1/a ffipg_3/pggen_0/nand_0/w_0_0# 0.24fF
C57 inv_9/in nor_4/a 0.02fF
C58 cla_0/nand_0/w_0_0# cla_1/nor_1/b 0.06fF
C59 ffipg_0/pggen_0/xor_0/inv_0/op x1in 0.27fF
C60 cla_2/nand_0/w_0_0# nor_3/a 0.04fF
C61 cla_2/nor_1/a x4in 0.22fF
C62 vdd cla_2/inv_0/w_0_6# 0.06fF
C63 sumffo_3/xor_0/b sumffo_3/xor_0/w_n3_4# 0.06fF
C64 sumffo_2/xor_0/inv_0/op sumffo_2/xor_0/inv_1/op 0.08fF
C65 cin nor_0/w_0_0# 0.16fF
C66 nor_1/a inv_1/in 0.02fF
C67 vdd nor_1/w_0_0# 0.17fF
C68 cla_0/nor_1/w_0_0# cla_1/nor_1/b 0.02fF
C69 ffipg_0/pggen_0/nor_0/w_0_0# y1in 0.06fF
C70 sumffo_2/xor_0/w_n3_4# s3 0.02fF
C71 ffipg_3/pggen_0/xor_0/inv_1/op ffipg_3/pggen_0/xor_0/inv_0/op 0.08fF
C72 cla_1/p0 sumffo_1/xor_0/a 0.05fF
C73 cla_2/nand_0/a cla_2/nand_0/b 0.35fF
C74 inv_3/w_0_6# inv_3/in 0.10fF
C75 ffipg_3/pggen_0/xor_0/inv_1/op vdd 0.15fF
C76 inv_5/in nand_4/a 0.05fF
C77 vdd ffipg_1/pggen_0/xor_0/inv_1/op 0.15fF
C78 x3in ffipg_2/pggen_0/xor_0/inv_0/op 0.27fF
C79 cla_1/p0 ffipg_1/pggen_0/nand_0/w_0_0# 0.24fF
C80 inv_4/in gnd 0.24fF
C81 cla_1/p0 x2in 0.22fF
C82 ffipg_2/pggen_0/xor_0/inv_1/op ffipg_2/pggen_0/xor_0/w_n3_4# 0.06fF
C83 ffipg_3/pggen_0/xor_0/inv_1/w_0_6# vdd 0.06fF
C84 ffipg_2/pggen_0/xor_0/inv_1/op sumffo_2/xor_0/b 0.52fF
C85 sumffo_3/xor_0/inv_0/w_0_6# inv_4/op 0.06fF
C86 sumffo_0/xor_0/a_10_10# sumffo_0/xor_0/w_n3_4# 0.16fF
C87 ffipg_3/pggen_0/xor_0/inv_0/w_0_6# gnd 0.02fF
C88 sumffo_2/xor_0/inv_0/op sumffo_2/xor_0/b 0.20fF
C89 inv_5/in gnd 0.19fF
C90 ffipg_1/pggen_0/xor_0/w_n3_4# gnd 0.02fF
C91 nand_4/a nor_1/a 0.32fF
C92 sumffo_0/xor_0/a_10_10# vdd 0.93fF
C93 nor_1/a nor_1/b 0.36fF
C94 s3 sumffo_2/xor_0/a_10_10# 0.45fF
C95 sumffo_1/xor_0/a gnd 0.39fF
C96 cla_2/inv_0/in cla_2/nand_0/b 0.04fF
C97 sumffo_3/xor_0/inv_1/op s4 0.52fF
C98 cla_1/nand_0/w_0_0# gnd 0.01fF
C99 ffipg_3/pggen_0/xor_0/inv_1/op sumffo_3/xor_0/b 0.52fF
C100 gnd x2in 0.31fF
C101 vdd cla_0/nor_0/w_0_0# 0.31fF
C102 nor_1/a gnd 0.61fF
C103 nor_1/b inv_2/in 0.04fF
C104 vdd sumffo_1/xor_0/inv_1/op 0.15fF
C105 sumffo_0/xor_0/inv_0/op gnd 0.21fF
C106 ffipg_3/pggen_0/nor_0/a_13_6# sumffo_3/xor_0/b 0.01fF
C107 inv_2/w_0_6# inv_2/in 0.10fF
C108 sumffo_0/xor_0/inv_0/w_0_6# gnd 0.02fF
C109 nor_3/b inv_5/w_0_6# 0.17fF
C110 nor_3/w_0_0# vdd 0.14fF
C111 inv_2/in gnd 0.17fF
C112 nand_2/a cla_2/p0 0.02fF
C113 vdd cla_0/inv_0/w_0_6# 0.06fF
C114 ffipg_3/pggen_0/xor_0/inv_1/op x4in 0.06fF
C115 vdd sumffo_2/xor_0/inv_1/op 0.15fF
C116 cla_2/nor_1/b cla_2/nand_0/b 0.26fF
C117 nand_4/a cla_2/nor_1/a 0.02fF
C118 ffipg_0/pggen_0/xor_0/inv_1/op ffipg_0/pggen_0/xor_0/w_n3_4# 0.06fF
C119 gnd s2 0.14fF
C120 nand_0/a gnd 0.10fF
C121 cla_2/nor_0/w_0_0# cla_2/nor_1/a 0.06fF
C122 ffipg_0/pggen_0/xor_0/inv_1/op sumffo_0/xor_0/a 0.52fF
C123 ffipg_0/pggen_0/nor_0/w_0_0# vdd 0.11fF
C124 gnd s1 0.14fF
C125 sumffo_0/xor_0/inv_1/op gnd 0.20fF
C126 sumffo_1/xor_0/a nand_2/b 0.15fF
C127 cla_2/nor_1/a gnd 0.68fF
C128 y3in ffipg_2/pggen_0/xor_0/w_n3_4# 0.06fF
C129 ffipg_0/pggen_0/xor_0/inv_0/op ffipg_0/pggen_0/xor_0/w_n3_4# 0.06fF
C130 ffipg_3/pggen_0/xor_0/inv_0/op y4in 0.20fF
C131 cla_0/inv_0/in nand_0/b 0.16fF
C132 nor_3/w_0_0# nor_4/b 0.03fF
C133 vdd cla_2/nand_0/b 0.35fF
C134 nand_5/a inv_8/w_0_6# 0.06fF
C135 vdd ffipg_0/pggen_0/nand_0/a_13_n26# 0.01fF
C136 y3in ffipg_2/pggen_0/nor_0/w_0_0# 0.06fF
C137 nor_1/a nand_2/b 0.06fF
C138 y3in sumffo_2/xor_0/b 0.07fF
C139 ffipg_0/pggen_0/xor_0/inv_0/op sumffo_0/xor_0/a 0.06fF
C140 vdd y4in 0.10fF
C141 cla_0/inv_0/w_0_6# cla_0/nand_0/a 0.03fF
C142 nor_1/w_0_0# inv_1/in 0.11fF
C143 sumffo_2/xor_0/w_n3_4# sumffo_2/xor_0/inv_1/op 0.06fF
C144 vdd ffipg_2/pggen_0/xor_0/w_n3_4# 0.12fF
C145 cla_2/nand_0/b cla_2/nor_1/w_0_0# 0.02fF
C146 inv_2/in nand_2/b 0.34fF
C147 vdd ffipg_2/pggen_0/nor_0/w_0_0# 0.11fF
C148 sumffo_1/xor_0/inv_1/op sumffo_1/xor_0/inv_0/op 0.08fF
C149 vdd sumffo_2/xor_0/b 0.35fF
C150 inv_9/in vdd 0.09fF
C151 inv_3/w_0_6# gnd 0.02fF
C152 nand_0/b nor_0/a 0.57fF
C153 sumffo_1/xor_0/w_n3_4# nand_2/b 0.06fF
C154 cinbar sumffo_0/xor_0/a 0.06fF
C155 y1in nor_0/a 0.03fF
C156 cin inv_0/in 0.07fF
C157 cla_2/nor_1/b cla_1/nand_0/a 0.35fF
C158 cout gnd 0.10fF
C159 sumffo_3/xor_0/b y4in 0.07fF
C160 s3 gnd 0.14fF
C161 nor_4/b inv_9/in 0.16fF
C162 ffipg_3/pggen_0/nand_0/w_0_0# cla_2/nand_0/b 0.04fF
C163 sumffo_2/xor_0/w_n3_4# sumffo_2/xor_0/b 0.06fF
C164 nor_2/a inv_4/in 0.02fF
C165 nor_1/b nor_1/w_0_0# 0.06fF
C166 vdd nor_3/b 0.23fF
C167 ffipg_3/pggen_0/nand_0/w_0_0# y4in 0.06fF
C168 ffipg_1/pggen_0/xor_0/w_n3_4# ffipg_1/pggen_0/xor_0/a_10_10# 0.16fF
C169 vdd cla_1/nand_0/a 0.17fF
C170 nand_0/b y1in 0.13fF
C171 nand_4/b cla_1/nand_0/w_0_0# 0.01fF
C172 inv_0/in nor_0/w_0_0# 0.11fF
C173 x4in y4in 0.73fF
C174 ffipg_1/pggen_0/xor_0/a_10_10# sumffo_1/xor_0/a 0.45fF
C175 nand_4/b nor_1/a 0.05fF
C176 inv_3/w_0_6# nand_2/b 0.06fF
C177 cinbar nor_0/w_0_0# 0.06fF
C178 ffipg_2/pggen_0/nand_0/a_13_n26# vdd 0.01fF
C179 ffipg_1/pggen_0/xor_0/w_n3_4# y2in 0.06fF
C180 sumffo_1/xor_0/inv_1/w_0_6# sumffo_1/xor_0/inv_1/op 0.03fF
C181 sumffo_1/xor_0/a y2in 0.07fF
C182 ffipg_1/pggen_0/nand_0/w_0_0# cla_1/nor_1/b 0.04fF
C183 cla_1/nand_0/w_0_0# nor_2/a 0.04fF
C184 inv_8/in nor_4/a 0.04fF
C185 sumffo_3/xor_0/inv_1/op inv_4/op 0.06fF
C186 nor_1/a cla_1/nor_1/b 0.13fF
C187 sumffo_3/xor_0/w_n3_4# sumffo_3/xor_0/a_10_10# 0.16fF
C188 ffipg_3/pggen_0/xor_0/inv_1/op gnd 0.20fF
C189 sumffo_2/xor_0/a_10_10# sumffo_2/xor_0/b 0.12fF
C190 vdd sumffo_3/xor_0/inv_0/w_0_6# 0.09fF
C191 ffipg_1/pggen_0/nand_0/w_0_0# y2in 0.06fF
C192 ffipg_1/pggen_0/xor_0/w_n3_4# ffipg_1/pggen_0/xor_0/inv_0/op 0.06fF
C193 ffipg_1/pggen_0/xor_0/inv_1/op gnd 0.24fF
C194 ffipg_2/pggen_0/nor_0/a_13_6# sumffo_2/xor_0/b 0.01fF
C195 x2in y2in 0.73fF
C196 cla_0/nor_0/w_0_0# cla_1/p0 0.06fF
C197 vdd inv_4/op 0.26fF
C198 vdd cla_0/inv_0/in 0.05fF
C199 sumffo_1/xor_0/a ffipg_1/pggen_0/xor_0/inv_0/op 0.06fF
C200 ffipg_1/pggen_0/xor_0/inv_1/op ffipg_1/pggen_0/xor_0/inv_1/w_0_6# 0.03fF
C201 cla_1/inv_0/in cla_1/nand_0/a 0.04fF
C202 ffipg_1/pggen_0/xor_0/inv_0/op x2in 0.27fF
C203 vdd nor_4/a 0.19fF
C204 inv_8/w_0_6# cin 0.06fF
C205 nor_1/a cla_1/inv_0/w_0_6# 0.26fF
C206 cla_2/inv_0/in cla_2/nand_0/a 0.04fF
C207 vdd ffipg_1/pggen_0/nor_0/w_0_0# 0.11fF
C208 cin sumffo_1/xor_0/a 0.06fF
C209 nor_2/b inv_4/in 0.16fF
C210 sumffo_0/xor_0/inv_0/op sumffo_0/xor_0/a 0.27fF
C211 vdd nor_0/a 0.35fF
C212 cla_1/nor_1/b cla_1/nor_1/w_0_0# 0.06fF
C213 sumffo_1/xor_0/inv_1/op gnd 0.20fF
C214 gnd s4 0.14fF
C215 sumffo_0/xor_0/inv_0/op cin 0.20fF
C216 sumffo_0/xor_0/inv_0/w_0_6# sumffo_0/xor_0/a 0.06fF
C217 cla_0/inv_0/in cla_0/nand_0/a 0.04fF
C218 sumffo_3/xor_0/b inv_4/op 0.09fF
C219 sumffo_1/xor_0/w_n3_4# sumffo_1/xor_0/a_10_10# 0.16fF
C220 nand_4/b inv_3/w_0_6# 0.00fF
C221 nor_4/b nor_4/a 0.42fF
C222 ffipg_3/pggen_0/xor_0/a_10_10# y4in 0.12fF
C223 sumffo_1/xor_0/a_10_10# s2 0.45fF
C224 cin inv_2/in 0.13fF
C225 ffipg_0/pggen_0/nor_0/a_13_6# sumffo_0/xor_0/a 0.01fF
C226 gnd sumffo_2/xor_0/inv_1/op 0.20fF
C227 ffipg_0/pggen_0/xor_0/inv_0/op ffipg_0/pggen_0/xor_0/inv_1/op 0.08fF
C228 y3in ffipg_2/pggen_0/xor_0/inv_1/op 0.22fF
C229 cin sumffo_1/xor_0/w_n3_4# 0.00fF
C230 nor_3/w_0_0# inv_6/in 0.11fF
C231 vdd nand_0/b 0.53fF
C232 sumffo_0/xor_0/inv_1/op sumffo_0/xor_0/a 0.06fF
C233 cin s2 0.27fF
C234 cla_1/p0 sumffo_2/xor_0/b 0.06fF
C235 vdd y1in 0.15fF
C236 vdd inv_5/w_0_6# 0.15fF
C237 vdd ffipg_2/pggen_0/xor_0/inv_1/op 0.15fF
C238 vdd cla_2/nand_0/a 0.17fF
C239 vdd sumffo_2/xor_0/inv_0/op 0.15fF
C240 sumffo_0/xor_0/inv_1/op cin 0.22fF
C241 cla_2/nand_0/b gnd 0.30fF
C242 sumffo_3/xor_0/w_n3_4# sumffo_3/xor_0/inv_0/op 0.06fF
C243 nor_3/w_0_0# nor_3/a 0.06fF
C244 cin sumffo_0/xor_0/inv_1/w_0_6# 0.23fF
C245 cla_2/nor_1/b cla_2/inv_0/in 0.16fF
C246 inv_7/w_0_6# vdd 0.15fF
C247 y4in gnd 1.66fF
C248 sumffo_1/xor_0/inv_1/op nand_2/b 0.22fF
C249 gnd ffipg_2/pggen_0/xor_0/w_n3_4# 0.02fF
C250 y1in ffipg_0/pggen_0/xor_0/a_10_10# 0.12fF
C251 gnd sumffo_2/xor_0/b 0.29fF
C252 inv_9/in gnd 0.24fF
C253 sumffo_3/xor_0/a_10_10# s4 0.45fF
C254 cla_0/nand_0/w_0_0# nor_1/a 0.04fF
C255 nand_0/a nor_0/w_0_0# 0.10fF
C256 cla_2/inv_0/in vdd 0.05fF
C257 nand_2/a nor_1/a 0.07fF
C258 cin sumffo_3/xor_0/w_n3_4# 0.01fF
C259 sumffo_2/xor_0/w_n3_4# sumffo_2/xor_0/inv_0/op 0.06fF
C260 nor_3/a cla_2/nand_0/b 0.13fF
C261 ffipg_0/pggen_0/nor_0/w_0_0# x1in 0.06fF
C262 cla_2/p0 cla_1/nor_1/w_0_0# 0.06fF
C263 cla_2/nor_1/a cla_2/p0 0.24fF
C264 nand_4/a nor_3/b 0.10fF
C265 inv_0/in cinbar 0.16fF
C266 nor_2/w_0_0# inv_4/op 0.03fF
C267 cla_2/inv_0/in cla_2/nor_1/w_0_0# 0.05fF
C268 cla_2/nor_1/b y3in 0.13fF
C269 sumffo_2/xor_0/inv_0/w_0_6# inv_1/op 0.06fF
C270 cin s3 0.28fF
C271 nor_2/b inv_3/w_0_6# 0.03fF
C272 inv_8/in vdd 0.30fF
C273 nor_3/b gnd 0.10fF
C274 ffipg_1/pggen_0/xor_0/inv_1/op y2in 0.22fF
C275 cla_2/nor_1/b vdd 0.56fF
C276 cla_1/nand_0/a gnd 0.10fF
C277 y3in vdd 0.15fF
C278 cla_0/inv_0/in cla_1/p0 0.02fF
C279 nand_2/b sumffo_2/xor_0/b 0.06fF
C280 inv_6/in nor_3/b 0.16fF
C281 vdd sumffo_3/xor_0/inv_1/op 0.15fF
C282 nand_4/b cla_0/nor_0/w_0_0# 0.05fF
C283 ffipg_3/pggen_0/xor_0/inv_0/op vdd 0.15fF
C284 ffipg_1/pggen_0/xor_0/inv_1/op ffipg_1/pggen_0/xor_0/inv_0/op 0.08fF
C285 sumffo_0/xor_0/w_n3_4# vdd 0.12fF
C286 cla_2/nor_1/b cla_2/nor_1/w_0_0# 0.06fF
C287 sumffo_3/xor_0/inv_1/op sumffo_3/xor_0/inv_1/w_0_6# 0.03fF
C288 vdd sumffo_3/xor_0/inv_1/w_0_6# 0.06fF
C289 nor_4/w_0_0# cout 0.03fF
C290 cla_1/p0 ffipg_1/pggen_0/nor_0/w_0_0# 0.05fF
C291 nor_3/a nor_3/b 0.41fF
C292 nand_4/b cla_0/inv_0/w_0_6# 0.00fF
C293 cla_1/p0 nor_0/a 0.24fF
C294 vdd cla_2/nor_1/w_0_0# 0.31fF
C295 cla_2/nor_1/b sumffo_3/xor_0/b 0.06fF
C296 nand_2/a inv_3/w_0_6# 0.06fF
C297 gnd inv_4/op 0.32fF
C298 cla_0/inv_0/in gnd 0.30fF
C299 vdd ffipg_0/pggen_0/xor_0/a_10_10# 0.93fF
C300 sumffo_3/xor_0/inv_0/op s4 0.06fF
C301 cla_2/nor_1/b cla_1/inv_0/in 0.04fF
C302 vdd ffipg_1/pggen_0/xor_0/inv_0/w_0_6# 0.09fF
C303 sumffo_3/xor_0/b sumffo_3/xor_0/inv_1/op 0.22fF
C304 nor_4/b vdd 0.15fF
C305 nor_4/a gnd 0.21fF
C306 ffipg_3/pggen_0/xor_0/inv_0/op sumffo_3/xor_0/b 0.06fF
C307 vdd ffipg_0/pggen_0/xor_0/inv_0/w_0_6# 0.09fF
C308 vdd sumffo_2/xor_0/w_n3_4# 0.12fF
C309 vdd cla_0/nand_0/a 0.17fF
C310 sumffo_0/xor_0/a_10_10# cin 0.12fF
C311 vdd sumffo_3/xor_0/b 0.35fF
C312 cla_1/p0 nand_0/b 0.38fF
C313 sumffo_3/xor_0/b sumffo_3/xor_0/inv_1/w_0_6# 0.23fF
C314 gnd nor_0/a 0.23fF
C315 cla_2/nand_0/a_13_n26# gnd 0.01fF
C316 cla_1/inv_0/in vdd 0.05fF
C317 x3in ffipg_2/pggen_0/xor_0/w_n3_4# 0.06fF
C318 ffipg_3/pggen_0/xor_0/inv_0/op x4in 0.27fF
C319 cin sumffo_1/xor_0/inv_1/op 0.04fF
C320 vdd ffipg_3/pggen_0/nand_0/w_0_0# 0.10fF
C321 cin s4 0.16fF
C322 nand_4/b sumffo_2/xor_0/b 0.04fF
C323 x3in ffipg_2/pggen_0/nor_0/w_0_0# 0.06fF
C324 x3in sumffo_2/xor_0/b 0.46fF
C325 vdd x4in 0.93fF
C326 vdd sumffo_1/xor_0/inv_0/op 0.15fF
C327 vdd inv_3/in 0.30fF
C328 nand_4/a inv_5/w_0_6# 0.08fF
C329 vdd sumffo_2/xor_0/a_10_10# 0.93fF
C330 cla_1/nor_1/b sumffo_2/xor_0/b 0.06fF
C331 cin sumffo_2/xor_0/inv_1/op 0.04fF
C332 gnd nand_0/b 0.70fF
C333 ffipg_0/pggen_0/nor_0/w_0_0# sumffo_0/xor_0/a 0.21fF
C334 vdd cla_1/nor_0/w_0_0# 0.31fF
C335 inv_7/w_0_6# nand_4/a 0.06fF
C336 gnd y1in 1.62fF
C337 inv_5/w_0_6# gnd 0.26fF
C338 nand_0/a inv_0/in 0.04fF
C339 gnd ffipg_2/pggen_0/xor_0/inv_1/op 0.24fF
C340 x1in nor_0/a 0.22fF
C341 gnd sumffo_2/xor_0/inv_0/op 0.17fF
C342 cla_2/nand_0/a gnd 0.10fF
C343 vdd sumffo_1/xor_0/inv_0/w_0_6# 0.09fF
C344 y1in ffipg_0/pggen_0/xor_0/inv_1/w_0_6# 0.23fF
C345 nand_4/b cla_1/nand_0/a 0.05fF
C346 sumffo_3/xor_0/b x4in 0.46fF
C347 sumffo_2/xor_0/w_n3_4# sumffo_2/xor_0/a_10_10# 0.16fF
C348 cla_2/nor_1/a ffipg_3/pggen_0/nor_0/w_0_0# 0.05fF
C349 ffipg_3/pggen_0/xor_0/inv_1/op ffipg_3/pggen_0/xor_0/w_n3_4# 0.06fF
C350 vdd inv_1/in 0.09fF
C351 ffipg_3/pggen_0/nand_0/w_0_0# x4in 0.06fF
C352 vdd nor_2/w_0_0# 0.17fF
C353 cla_2/inv_0/in gnd 0.30fF
C354 vdd sumffo_1/xor_0/inv_1/w_0_6# 0.06fF
C355 ffipg_1/pggen_0/xor_0/w_n3_4# sumffo_1/xor_0/a 0.02fF
C356 cla_0/nand_0/a_13_n26# gnd 0.00fF
C357 nand_0/b nand_2/b 0.13fF
C358 x1in y1in 0.73fF
C359 inv_5/in nor_1/a 0.13fF
C360 ffipg_1/pggen_0/xor_0/w_n3_4# x2in 0.06fF
C361 nand_4/b cla_0/inv_0/in 0.14fF
C362 ffipg_3/pggen_0/xor_0/a_10_10# vdd 0.93fF
C363 sumffo_1/xor_0/a x2in 0.46fF
C364 cla_1/inv_0/w_0_6# cla_1/nand_0/a 0.03fF
C365 vdd cla_1/p0 0.43fF
C366 ffipg_1/pggen_0/nand_0/w_0_0# x2in 0.06fF
C367 cla_0/inv_0/in cla_1/nor_1/b 0.04fF
C368 inv_8/in gnd 0.13fF
C369 vdd ffipg_1/pggen_0/nand_0/a_13_n26# 0.01fF
C370 sumffo_1/xor_0/inv_0/w_0_6# sumffo_1/xor_0/inv_0/op 0.03fF
C371 cla_2/nor_1/b gnd 0.27fF
C372 cla_2/p0 sumffo_2/xor_0/b 0.05fF
C373 ffipg_2/pggen_0/nor_0/w_0_0# cla_2/p0 0.05fF
C374 sumffo_3/xor_0/inv_0/w_0_6# sumffo_3/xor_0/inv_0/op 0.03fF
C375 nand_4/a vdd 0.38fF
C376 y3in gnd 1.68fF
C377 nor_4/w_0_0# inv_9/in 0.11fF
C378 vdd nor_1/b 0.25fF
C379 sumffo_1/xor_0/a sumffo_1/xor_0/w_n3_4# 0.06fF
C380 nand_4/b nor_0/a 0.16fF
C381 inv_7/w_0_6# nand_5/a 0.03fF
C382 gnd sumffo_3/xor_0/inv_1/op 0.20fF
C383 inv_4/op sumffo_3/xor_0/inv_0/op 0.27fF
C384 sumffo_0/xor_0/inv_0/w_0_6# sumffo_0/xor_0/inv_0/op 0.03fF
C385 cla_2/nor_0/w_0_0# vdd 0.31fF
C386 ffipg_3/pggen_0/xor_0/inv_0/op gnd 0.21fF
C387 vdd inv_2/w_0_6# 0.15fF
C388 vdd gnd 3.73fF
C389 nor_1/w_0_0# inv_1/op 0.03fF
C390 vdd ffipg_2/pggen_0/xor_0/inv_0/w_0_6# 0.09fF
C391 ffipg_3/pggen_0/xor_0/a_10_10# sumffo_3/xor_0/b 0.45fF
C392 ffipg_1/pggen_0/nor_0/w_0_0# y2in 0.06fF
C393 vdd ffipg_1/pggen_0/xor_0/inv_1/w_0_6# 0.06fF
C394 inv_6/in vdd 0.09fF
C395 vdd ffipg_0/pggen_0/xor_0/inv_1/w_0_6# 0.06fF
C396 sumffo_0/xor_0/inv_0/op sumffo_0/xor_0/inv_1/op 0.08fF
C397 sumffo_0/xor_0/inv_0/op s1 0.06fF
C398 ffipg_3/pggen_0/xor_0/w_n3_4# y4in 0.06fF
C399 sumffo_1/xor_0/w_n3_4# s2 0.02fF
C400 nor_4/b gnd 0.10fF
C401 x3in ffipg_2/pggen_0/xor_0/inv_1/op 0.06fF
C402 nor_3/a vdd 0.28fF
C403 nand_0/b cla_1/nor_1/b 0.14fF
C404 gnd cla_0/nand_0/a 0.10fF
C405 nor_0/a sumffo_0/xor_0/a 0.05fF
C406 sumffo_3/xor_0/b gnd 0.31fF
C407 inv_7/w_0_6# nand_4/b 0.06fF
C408 inv_6/in nor_4/b 0.04fF
C409 nor_1/a inv_3/w_0_6# 0.16fF
C410 vdd x1in 0.97fF
C411 nor_0/a ffipg_0/pggen_0/nand_0/w_0_0# 0.24fF
C412 cla_1/nor_0/w_0_0# cla_1/p0 0.06fF
C413 cla_1/inv_0/in gnd 0.30fF
C414 cin sumffo_1/xor_0/a_38_n43# 0.01fF
C415 vdd nand_2/b 0.92fF
C416 sumffo_0/xor_0/inv_1/op s1 0.52fF
C417 ffipg_2/pggen_0/xor_0/inv_0/op ffipg_2/pggen_0/xor_0/w_n3_4# 0.06fF
C418 sumffo_0/xor_0/inv_1/op sumffo_0/xor_0/inv_1/w_0_6# 0.03fF
C419 ffipg_2/pggen_0/xor_0/inv_0/op sumffo_2/xor_0/b 0.06fF
C420 x4in gnd 0.31fF
C421 vdd sumffo_3/xor_0/a_10_10# 0.93fF
C422 gnd sumffo_1/xor_0/inv_0/op 0.17fF
C423 inv_3/in gnd 0.17fF
C424 nand_5/a vdd 0.17fF
C425 y1in ffipg_0/pggen_0/xor_0/w_n3_4# 0.06fF
C426 ffipg_2/pggen_0/xor_0/inv_1/w_0_6# ffipg_2/pggen_0/xor_0/inv_1/op 0.03fF
C427 nor_4/w_0_0# nor_4/a 0.07fF
C428 y1in sumffo_0/xor_0/a 0.07fF
C429 nand_0/b ffipg_0/pggen_0/nand_0/w_0_0# 0.04fF
C430 cin nand_0/b 0.08fF
C431 x1in ffipg_0/pggen_0/xor_0/inv_0/w_0_6# 0.06fF
C432 nor_0/w_0_0# nor_0/a 0.06fF
C433 inv_1/op sumffo_2/xor_0/inv_1/op 0.06fF
C434 y1in ffipg_0/pggen_0/nand_0/w_0_0# 0.06fF
C435 nand_2/b cla_0/nand_0/a 0.09fF
C436 cla_2/nand_0/w_0_0# cla_2/nand_0/b 0.06fF
C437 ffipg_2/pggen_0/nand_0/w_0_0# cla_2/nor_1/b 0.04fF
C438 nor_1/a nor_1/w_0_0# 0.06fF
C439 cin sumffo_2/xor_0/inv_0/op 0.06fF
C440 nand_4/b cla_2/nor_1/b 0.05fF
C441 ffipg_1/pggen_0/xor_0/inv_1/op ffipg_1/pggen_0/xor_0/w_n3_4# 0.06fF
C442 ffipg_2/pggen_0/nand_0/w_0_0# y3in 0.06fF
C443 nor_1/b inv_1/in 0.16fF
C444 sumffo_3/xor_0/b sumffo_3/xor_0/a_10_10# 0.12fF
C445 cla_0/inv_0/in cla_0/nor_1/w_0_0# 0.05fF
C446 ffipg_1/pggen_0/xor_0/inv_1/op sumffo_1/xor_0/a 0.52fF
C447 x3in y3in 0.73fF
C448 cla_2/nor_1/b cla_1/nor_1/b 0.35fF
C449 cin sumffo_2/xor_0/a_38_n43# 0.01fF
C450 nor_0/w_0_0# nand_0/b 0.06fF
C451 ffipg_2/pggen_0/nand_0/w_0_0# vdd 0.10fF
C452 ffipg_1/pggen_0/xor_0/inv_1/op x2in 0.06fF
C453 sumffo_1/xor_0/inv_0/op nand_2/b 0.20fF
C454 cla_2/nor_1/b nor_2/a 0.13fF
C455 inv_1/in gnd 0.24fF
C456 inv_3/in nand_2/b 0.13fF
C457 y4in ffipg_3/pggen_0/nor_0/w_0_0# 0.06fF
C458 nand_4/b vdd 0.53fF
C459 x3in vdd 0.93fF
C460 vdd ffipg_1/pggen_0/xor_0/a_10_10# 0.93fF
C461 inv_1/op sumffo_2/xor_0/b 0.09fF
C462 ffipg_2/pggen_0/xor_0/w_n3_4# ffipg_2/pggen_0/xor_0/a_10_10# 0.16fF
C463 vdd cla_1/nor_1/b 0.55fF
C464 nor_2/a vdd 0.28fF
C465 ffipg_2/pggen_0/xor_0/a_10_10# sumffo_2/xor_0/b 0.45fF
C466 sumffo_3/xor_0/inv_1/op sumffo_3/xor_0/inv_0/op 0.08fF
C467 vdd y2in 0.15fF
C468 y3in ffipg_2/pggen_0/xor_0/inv_1/w_0_6# 0.23fF
C469 sumffo_1/xor_0/a sumffo_1/xor_0/inv_1/op 0.06fF
C470 cla_1/p0 gnd 0.68fF
C471 inv_7/w_0_6# inv_7/in 0.10fF
C472 vdd sumffo_3/xor_0/inv_0/op 0.15fF
C473 nand_4/a cla_2/nor_0/w_0_0# 0.05fF
C474 nand_4/b cla_0/nand_0/a 0.21fF
C475 nor_1/b inv_2/w_0_6# 0.03fF
C476 inv_8/in cin 0.13fF
C477 cla_1/nand_0/a_13_n26# gnd 0.01fF
C478 vdd ffipg_1/pggen_0/xor_0/inv_0/op 0.15fF
C479 nand_4/b sumffo_3/xor_0/b 0.04fF
C480 vdd ffipg_2/pggen_0/xor_0/inv_1/w_0_6# 0.06fF
C481 nand_4/a gnd 0.24fF
C482 vdd cla_1/inv_0/w_0_6# 0.06fF
C483 nor_1/b gnd 0.10fF
C484 vdd ffipg_0/pggen_0/xor_0/w_n3_4# 0.12fF
C485 sumffo_0/xor_0/w_n3_4# sumffo_0/xor_0/a 0.06fF
C486 cla_0/nor_1/w_0_0# nand_0/b 0.06fF
C487 vdd sumffo_1/xor_0/a_10_10# 0.93fF
C488 inv_2/w_0_6# gnd 0.02fF
C489 cin sumffo_3/xor_0/inv_1/op 0.04fF
C490 vdd sumffo_0/xor_0/a 0.33fF
C491 cla_1/nor_1/b cla_0/nand_0/a 0.35fF
C492 sumffo_1/xor_0/inv_1/w_0_6# nand_2/b 0.23fF
C493 sumffo_0/xor_0/w_n3_4# cin 0.06fF
C494 sumffo_0/xor_0/a_10_10# s1 0.45fF
C495 sumffo_1/xor_0/inv_1/op sumffo_1/xor_0/w_n3_4# 0.06fF
C496 vdd ffipg_0/pggen_0/nand_0/w_0_0# 0.10fF
C497 vdd cin 0.78fF
C498 cla_1/inv_0/in cla_1/nor_1/b 0.16fF
C499 ffipg_1/pggen_0/xor_0/inv_0/op ffipg_1/pggen_0/xor_0/inv_0/w_0_6# 0.03fF
C500 sumffo_1/xor_0/inv_1/op s2 0.52fF
C501 nand_4/b inv_3/in 0.22fF
C502 ffipg_0/pggen_0/xor_0/w_n3_4# ffipg_0/pggen_0/xor_0/a_10_10# 0.16fF
C503 inv_6/in gnd 0.24fF
C504 sumffo_3/xor_0/b sumffo_3/xor_0/inv_0/op 0.20fF
C505 ffipg_0/pggen_0/xor_0/a_10_10# sumffo_0/xor_0/a 0.45fF
C506 cla_2/nor_1/b cla_2/p0 0.08fF
C507 cin sumffo_3/xor_0/a_38_n43# 0.01fF
C508 vdd nor_2/b 0.21fF
C509 y3in cla_2/p0 0.03fF
C510 cla_1/inv_0/in cla_1/inv_0/w_0_6# 0.06fF
C511 ffipg_2/pggen_0/xor_0/inv_0/op ffipg_2/pggen_0/xor_0/inv_1/op 0.08fF
C512 nor_3/a gnd 0.32fF
C513 vdd nor_0/w_0_0# 0.46fF
C514 sumffo_2/xor_0/w_n3_4# cin 0.00fF
C515 nor_1/a sumffo_2/xor_0/b 0.06fF
C516 inv_2/w_0_6# nand_2/b 0.03fF
C517 gnd x1in 0.22fF
C518 vdd cla_2/p0 0.43fF
C519 inv_6/in nor_3/a 0.02fF
C520 nor_4/w_0_0# vdd 0.15fF
C521 inv_0/in nor_0/a 0.02fF
C522 inv_7/in vdd 0.30fF
C523 y1in ffipg_0/pggen_0/xor_0/inv_1/op 0.22fF
C524 gnd nand_2/b 0.94fF
C525 sumffo_3/xor_0/w_n3_4# s4 0.02fF
C526 cinbar nor_0/a 0.32fF
C527 inv_5/in nor_3/b 0.04fF
C528 cla_2/nor_1/a cla_2/nand_0/b 0.00fF
C529 cin sumffo_1/xor_0/inv_0/op 0.06fF
C530 nand_5/a gnd 0.10fF
C531 ffipg_0/pggen_0/xor_0/inv_0/op y1in 0.20fF
C532 vdd cla_0/nand_0/w_0_0# 0.10fF
C533 cla_2/nor_1/a y4in 0.03fF
C534 sumffo_2/xor_0/inv_1/w_0_6# sumffo_2/xor_0/inv_1/op 0.03fF
C535 cin sumffo_2/xor_0/a_10_10# 0.04fF
C536 vdd nand_2/a 0.22fF
C537 nor_4/b nor_4/w_0_0# 0.06fF
C538 cla_1/nand_0/w_0_0# cla_1/nand_0/a 0.06fF
C539 nor_2/a nor_2/w_0_0# 0.06fF
C540 sumffo_3/xor_0/b cla_2/p0 0.06fF
C541 nor_1/a cla_1/nand_0/a 0.06fF
C542 cla_2/nand_0/w_0_0# cla_2/nand_0/a 0.06fF
C543 inv_4/in inv_4/op 0.04fF
C544 ffipg_3/pggen_0/xor_0/inv_1/op ffipg_3/pggen_0/xor_0/inv_1/w_0_6# 0.03fF
C545 vdd cla_0/nor_1/w_0_0# 0.31fF
C546 nand_4/b cla_1/p0 0.02fF
C547 s3 sumffo_2/xor_0/inv_1/op 0.52fF
C548 cla_1/inv_0/in cla_2/p0 0.02fF
C549 ffipg_1/pggen_0/nor_0/a_13_6# sumffo_1/xor_0/a 0.01fF
C550 ffipg_3/pggen_0/xor_0/inv_0/op ffipg_3/pggen_0/xor_0/w_n3_4# 0.06fF
C551 nor_2/b inv_3/in 0.04fF
C552 sumffo_2/xor_0/inv_0/w_0_6# sumffo_2/xor_0/inv_0/op 0.03fF
C553 ffipg_3/pggen_0/xor_0/w_n3_4# vdd 0.12fF
C554 inv_1/op sumffo_2/xor_0/inv_0/op 0.27fF
C555 cla_1/p0 cla_1/nor_1/b 0.07fF
C556 nand_4/b nand_4/a 0.37fF
C557 cla_0/nand_0/w_0_0# cla_0/nand_0/a 0.06fF
C558 y3in ffipg_2/pggen_0/xor_0/inv_0/op 0.20fF
C559 cla_1/p0 y2in 0.03fF
C560 nand_4/b inv_2/w_0_6# 0.06fF
C561 inv_8/w_0_6# nor_4/a 0.03fF
C562 sumffo_2/xor_0/inv_1/w_0_6# sumffo_2/xor_0/b 0.23fF
C563 nand_4/b gnd 0.98fF
C564 cla_1/nor_0/w_0_0# cla_2/p0 0.06fF
C565 x3in gnd 0.31fF
C566 vdd ffipg_2/pggen_0/xor_0/inv_0/op 0.15fF
C567 x3in ffipg_2/pggen_0/xor_0/inv_0/w_0_6# 0.06fF
C568 inv_9/in cout 0.04fF
C569 sumffo_1/xor_0/a ffipg_1/pggen_0/nor_0/w_0_0# 0.21fF
C570 gnd cla_1/nor_1/b 0.28fF
C571 sumffo_1/xor_0/a nor_0/a 0.06fF
C572 nor_2/a gnd 0.24fF
C573 ffipg_3/pggen_0/xor_0/w_n3_4# sumffo_3/xor_0/b 0.02fF
C574 ffipg_1/pggen_0/nor_0/w_0_0# x2in 0.06fF
C575 gnd y2in 1.68fF
C576 vdd ffipg_0/pggen_0/xor_0/inv_1/op 0.15fF
C577 nor_2/b nor_2/w_0_0# 0.06fF
C578 gnd sumffo_3/xor_0/inv_0/op 0.17fF
C579 ffipg_1/pggen_0/xor_0/inv_1/w_0_6# y2in 0.23fF
C580 cla_1/nor_0/w_0_0# nand_2/a 0.05fF
C581 ffipg_1/pggen_0/xor_0/inv_0/op gnd 0.21fF
C582 vdd ffipg_0/pggen_0/xor_0/inv_0/op 0.15fF
C583 ffipg_3/pggen_0/xor_0/w_n3_4# x4in 0.06fF
C584 ffipg_3/pggen_0/xor_0/inv_1/op y4in 0.22fF
C585 inv_5/in inv_5/w_0_6# 0.10fF
C586 sumffo_1/xor_0/a nand_0/b 0.06fF
C587 gnd sumffo_0/xor_0/a 0.41fF
C588 nand_4/b nand_2/b 0.08fF
C589 cla_2/nand_0/w_0_0# vdd 0.10fF
C590 cin inv_2/w_0_6# 0.06fF
C591 ffipg_3/pggen_0/xor_0/inv_1/w_0_6# y4in 0.23fF
C592 cin gnd 0.74fF
C593 vdd inv_0/in 0.07fF
C594 vdd sumffo_2/xor_0/inv_0/w_0_6# 0.09fF
C595 nand_2/b cla_1/nor_1/b 0.06fF
C596 y3in ffipg_2/pggen_0/xor_0/a_10_10# 0.12fF
C597 vdd cinbar 0.16fF
C598 cla_1/p0 cla_2/p0 0.24fF
C599 nor_1/a inv_5/w_0_6# 0.06fF
C600 vdd inv_1/op 0.26fF
C601 sumffo_3/xor_0/w_n3_4# inv_4/op 0.06fF
C602 vdd ffipg_3/pggen_0/nor_0/w_0_0# 0.11fF
C603 ffipg_0/pggen_0/xor_0/inv_0/op ffipg_0/pggen_0/xor_0/inv_0/w_0_6# 0.03fF
C604 vdd ffipg_2/pggen_0/xor_0/a_10_10# 0.93fF
C605 nand_4/a cla_2/p0 0.16fF
C606 nor_2/b gnd 0.10fF
C607 x1in ffipg_0/pggen_0/xor_0/w_n3_4# 0.06fF
C608 nand_0/a nand_0/b 0.32fF
C609 cla_2/nor_0/w_0_0# cla_2/p0 0.06fF
C610 x1in sumffo_0/xor_0/a 0.46fF
C611 sumffo_1/xor_0/a_10_10# nand_2/b 0.12fF
C612 nand_2/a cla_1/p0 0.16fF
C613 x1in ffipg_0/pggen_0/nand_0/w_0_0# 0.06fF
C614 gnd cla_2/p0 0.68fF
C615 sumffo_2/xor_0/w_n3_4# inv_1/op 0.06fF
C616 inv_7/in gnd 0.13fF
C617 cin nand_2/b 0.04fF
C618 cla_0/nor_1/w_0_0# cla_1/p0 0.06fF
C619 sumffo_3/xor_0/b ffipg_3/pggen_0/nor_0/w_0_0# 0.21fF
C620 inv_8/w_0_6# inv_8/in 0.10fF
C621 ffipg_2/pggen_0/nand_0/w_0_0# x3in 0.06fF
C622 sumffo_2/xor_0/inv_1/op sumffo_2/xor_0/b 0.22fF
C623 cin sumffo_3/xor_0/a_10_10# 0.04fF
C624 ffipg_3/pggen_0/xor_0/w_n3_4# ffipg_3/pggen_0/xor_0/a_10_10# 0.16fF
C625 cla_0/nand_0/w_0_0# gnd 0.01fF
C626 vdd inv_4/in 0.09fF
C627 nand_5/a cin 0.31fF
C628 cla_2/nand_0/b y4in 0.13fF
C629 ffipg_3/pggen_0/xor_0/inv_0/w_0_6# ffipg_3/pggen_0/xor_0/inv_0/op 0.03fF
C630 cla_2/nor_1/b cla_1/nand_0/w_0_0# 0.06fF
C631 nand_2/a gnd 0.18fF
C632 nand_4/b cla_1/nor_1/b 0.12fF
C633 x4in ffipg_3/pggen_0/nor_0/w_0_0# 0.06fF
C634 cla_2/nor_1/b nor_1/a 0.06fF
C635 inv_8/w_0_6# vdd 0.15fF
C636 ffipg_3/pggen_0/xor_0/inv_0/w_0_6# vdd 0.09fF
C637 inv_5/in vdd 0.30fF
C638 vdd ffipg_1/pggen_0/xor_0/w_n3_4# 0.12fF
C639 nor_0/w_0_0# nand_2/b 0.04fF
C640 cla_2/inv_0/in cla_2/nor_1/a 0.02fF
C641 ffipg_1/pggen_0/xor_0/a_10_10# y2in 0.12fF
C642 vdd sumffo_1/xor_0/a 0.36fF
C643 nor_3/w_0_0# nor_3/b 0.06fF
C644 sumffo_0/xor_0/w_n3_4# sumffo_0/xor_0/inv_0/op 0.06fF
C645 cla_1/nand_0/w_0_0# vdd 0.10fF
C646 ffipg_2/pggen_0/xor_0/w_n3_4# sumffo_2/xor_0/b 0.02fF
C647 cla_1/nor_1/b y2in 0.13fF
C648 vdd ffipg_1/pggen_0/nand_0/w_0_0# 0.10fF
C649 vdd x2in 0.93fF
C650 vdd nor_1/a 0.56fF
C651 ffipg_2/pggen_0/nor_0/w_0_0# sumffo_2/xor_0/b 0.21fF
C652 sumffo_0/xor_0/inv_0/op vdd 0.15fF
C653 s3 sumffo_2/xor_0/inv_0/op 0.06fF
C654 inv_7/in nand_5/a 0.04fF
C655 nand_4/b Gnd 0.45fF
C656 nand_0/a Gnd 0.23fF
C657 cout Gnd 0.19fF
C658 inv_9/in Gnd 0.23fF
C659 nor_4/w_0_0# Gnd 1.81fF
C660 inv_8/in Gnd 0.22fF
C661 inv_8/w_0_6# Gnd 1.40fF
C662 nor_4/b Gnd 0.32fF
C663 inv_6/in Gnd 0.23fF
C664 nor_3/w_0_0# Gnd 1.81fF
C665 nand_5/a Gnd 0.26fF
C666 inv_7/in Gnd 0.22fF
C667 inv_7/w_0_6# Gnd 1.40fF
C668 inv_5/in Gnd 0.22fF
C669 inv_5/w_0_6# Gnd 1.40fF
C670 inv_4/in Gnd 0.23fF
C671 nor_2/w_0_0# Gnd 1.81fF
C672 nor_4/a Gnd 0.59fF
C673 inv_3/in Gnd 0.22fF
C674 inv_3/w_0_6# Gnd 1.40fF
C675 nor_3/b Gnd 0.77fF
C676 inv_2/in Gnd 0.22fF
C677 inv_2/w_0_6# Gnd 1.40fF
C678 nor_2/b Gnd 0.82fF
C679 inv_1/in Gnd 0.23fF
C680 nor_1/w_0_0# Gnd 1.81fF
C681 nor_1/b Gnd 1.05fF
C682 inv_0/in Gnd 0.23fF
C683 nor_0/w_0_0# Gnd 2.63fF
C684 cinbar Gnd 1.21fF
C685 y4in Gnd 2.72fF
C686 x4in Gnd 2.80fF
C687 cla_2/nand_0/b Gnd 0.76fF
C688 ffipg_3/pggen_0/nand_0/w_0_0# Gnd 0.82fF
C689 cla_2/nor_1/a Gnd 1.09fF
C690 ffipg_3/pggen_0/nor_0/w_0_0# Gnd 1.23fF
C691 sumffo_3/xor_0/b Gnd 2.90fF
C692 ffipg_3/pggen_0/xor_0/a_10_10# Gnd 0.01fF
C693 ffipg_3/pggen_0/xor_0/w_n3_4# Gnd 1.14fF
C694 ffipg_3/pggen_0/xor_0/inv_1/op Gnd 0.49fF
C695 ffipg_3/pggen_0/xor_0/inv_1/w_0_6# Gnd 0.58fF
C696 ffipg_3/pggen_0/xor_0/inv_0/op Gnd 0.50fF
C697 ffipg_3/pggen_0/xor_0/inv_0/w_0_6# Gnd 0.58fF
C698 y3in Gnd 2.72fF
C699 x3in Gnd 2.80fF
C700 cla_2/nor_1/b Gnd 1.75fF
C701 ffipg_2/pggen_0/nand_0/w_0_0# Gnd 0.82fF
C702 cla_2/p0 Gnd 0.38fF
C703 ffipg_2/pggen_0/nor_0/w_0_0# Gnd 1.23fF
C704 sumffo_2/xor_0/b Gnd 2.90fF
C705 ffipg_2/pggen_0/xor_0/a_10_10# Gnd 0.01fF
C706 ffipg_2/pggen_0/xor_0/w_n3_4# Gnd 1.14fF
C707 ffipg_2/pggen_0/xor_0/inv_1/op Gnd 0.49fF
C708 ffipg_2/pggen_0/xor_0/inv_1/w_0_6# Gnd 0.58fF
C709 ffipg_2/pggen_0/xor_0/inv_0/op Gnd 0.50fF
C710 ffipg_2/pggen_0/xor_0/inv_0/w_0_6# Gnd 0.58fF
C711 s4 Gnd 0.07fF
C712 sumffo_3/xor_0/a_10_10# Gnd 0.01fF
C713 sumffo_3/xor_0/w_n3_4# Gnd 1.14fF
C714 sumffo_3/xor_0/inv_1/op Gnd 0.49fF
C715 sumffo_3/xor_0/inv_1/w_0_6# Gnd 0.58fF
C716 sumffo_3/xor_0/inv_0/op Gnd 0.50fF
C717 inv_4/op Gnd 1.37fF
C718 sumffo_3/xor_0/inv_0/w_0_6# Gnd 0.58fF
C719 y2in Gnd 2.72fF
C720 x2in Gnd 2.80fF
C721 cla_1/nor_1/b Gnd 1.66fF
C722 ffipg_1/pggen_0/nand_0/w_0_0# Gnd 0.82fF
C723 cla_1/p0 Gnd 2.28fF
C724 ffipg_1/pggen_0/nor_0/w_0_0# Gnd 1.23fF
C725 sumffo_1/xor_0/a Gnd 2.79fF
C726 ffipg_1/pggen_0/xor_0/a_10_10# Gnd 0.01fF
C727 ffipg_1/pggen_0/xor_0/w_n3_4# Gnd 1.14fF
C728 ffipg_1/pggen_0/xor_0/inv_1/op Gnd 0.49fF
C729 ffipg_1/pggen_0/xor_0/inv_1/w_0_6# Gnd 0.58fF
C730 ffipg_1/pggen_0/xor_0/inv_0/op Gnd 0.50fF
C731 ffipg_1/pggen_0/xor_0/inv_0/w_0_6# Gnd 0.58fF
C732 s2 Gnd 0.07fF
C733 sumffo_1/xor_0/a_10_10# Gnd 0.01fF
C734 sumffo_1/xor_0/w_n3_4# Gnd 1.14fF
C735 gnd Gnd 23.13fF
C736 sumffo_1/xor_0/inv_1/op Gnd 0.49fF
C737 nand_2/b Gnd 2.36fF
C738 sumffo_1/xor_0/inv_1/w_0_6# Gnd 0.58fF
C739 sumffo_1/xor_0/inv_0/op Gnd 0.50fF
C740 sumffo_1/xor_0/inv_0/w_0_6# Gnd 0.58fF
C741 s3 Gnd 0.07fF
C742 sumffo_2/xor_0/a_10_10# Gnd 0.01fF
C743 sumffo_2/xor_0/w_n3_4# Gnd 1.14fF
C744 sumffo_2/xor_0/inv_1/op Gnd 0.49fF
C745 sumffo_2/xor_0/inv_1/w_0_6# Gnd 0.58fF
C746 sumffo_2/xor_0/inv_0/op Gnd 0.50fF
C747 inv_1/op Gnd 1.30fF
C748 sumffo_2/xor_0/inv_0/w_0_6# Gnd 0.58fF
C749 y1in Gnd 2.72fF
C750 x1in Gnd 2.80fF
C751 nand_0/b Gnd 1.40fF
C752 ffipg_0/pggen_0/nand_0/w_0_0# Gnd 0.82fF
C753 nor_0/a Gnd 2.07fF
C754 ffipg_0/pggen_0/nor_0/w_0_0# Gnd 1.23fF
C755 sumffo_0/xor_0/a Gnd 1.50fF
C756 ffipg_0/pggen_0/xor_0/a_10_10# Gnd 0.01fF
C757 ffipg_0/pggen_0/xor_0/w_n3_4# Gnd 1.14fF
C758 ffipg_0/pggen_0/xor_0/inv_1/op Gnd 0.49fF
C759 ffipg_0/pggen_0/xor_0/inv_1/w_0_6# Gnd 0.58fF
C760 ffipg_0/pggen_0/xor_0/inv_0/op Gnd 0.50fF
C761 ffipg_0/pggen_0/xor_0/inv_0/w_0_6# Gnd 0.58fF
C762 s1 Gnd 0.07fF
C763 sumffo_0/xor_0/a_10_10# Gnd 0.01fF
C764 sumffo_0/xor_0/w_n3_4# Gnd 1.14fF
C765 sumffo_0/xor_0/inv_1/op Gnd 0.49fF
C766 cin Gnd 7.80fF
C767 sumffo_0/xor_0/inv_1/w_0_6# Gnd 0.58fF
C768 sumffo_0/xor_0/inv_0/op Gnd 0.50fF
C769 sumffo_0/xor_0/inv_0/w_0_6# Gnd 0.58fF
C770 nor_3/a Gnd 0.36fF
C771 cla_2/nand_0/w_0_0# Gnd 0.82fF
C772 cla_2/inv_0/in Gnd 0.27fF
C773 cla_2/nor_1/w_0_0# Gnd 1.23fF
C774 nand_4/a Gnd 0.23fF
C775 cla_2/nor_0/w_0_0# Gnd 1.23fF
C776 cla_2/nand_0/a Gnd 0.26fF
C777 cla_2/inv_0/w_0_6# Gnd 0.58fF
C778 vdd Gnd 8.62fF
C779 nor_2/a Gnd 0.36fF
C780 cla_1/nand_0/w_0_0# Gnd 0.82fF
C781 cla_1/inv_0/in Gnd 0.27fF
C782 cla_1/nor_1/w_0_0# Gnd 1.23fF
C783 nand_2/a Gnd 0.30fF
C784 cla_1/nor_0/w_0_0# Gnd 1.23fF
C785 cla_1/nand_0/a Gnd 0.26fF
C786 cla_1/inv_0/w_0_6# Gnd 0.58fF
C787 cla_0/nand_0/w_0_0# Gnd 0.82fF
C788 cla_0/inv_0/in Gnd 0.27fF
C789 cla_0/nor_1/w_0_0# Gnd 1.23fF
C790 cla_0/nor_0/w_0_0# Gnd 1.23fF
C791 cla_0/nand_0/a Gnd 0.26fF
C792 cla_0/inv_0/w_0_6# Gnd 0.58fF
C793 nor_1/a Gnd 1.34fF


.tran 10p 100n

.measure tran tpdr1 TRIG v(y2in) VAL='0.6*SUPPLY' RISE=1 TARG v(s4) VAL='0.6*SUPPLY' RISE=1
.measure tran tpdf1 TRIG v(y2in) VAL='0.6*SUPPLY' FALL=1 TARG v(s4) VAL='0.6*SUPPLY' FALL=1
.measure tran tpd1 param='(tpdr1+tpdf1)/2'

.control
run

plot v(y1in) v(y2in)+2 v(y3in)+4 v(y4in)+6 v(x1in)+8 v(x2in)+10 v(x3in)+12 v(x4in)+14 v(cin)+16
plot v(s1) v(s2)+2 v(s3)+4 v(s4)+6 v(cout)+8
.endc