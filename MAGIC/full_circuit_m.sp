*2023112027_ritama_sanyal
.include TSMC_180nm.txt
.param SUPPLY=1.8V
.global gnd vdd
.param SUPPLY=1.8V
.option scale=0.09u
.global gnd vdd

Vdd vdd gnd 'SUPPLY'

vclk clk gnd pulse 0 1.8 0ns 10ps 10ps 10ns 20ns
vcin cin gnd pulse 0 1.8 0ns 10ps 10ps 10ns 20ns  
vb1 y1 gnd pulse 0 1.8 0ns 10ps 10ps 20ns 40ns
vb2 y2 gnd pulse 1.8 0 0ns 10ps 10ps 20ns 40ns  
vb3 y3 gnd pulse 0 1.8 0ns 10ps 10ps 40ns 80ns  
vb4 y4 gnd pulse 1.8 0 0ns 10ps 10ps 40ns 80ns  
va1 x1 gnd pulse 1.8 0 0ns 10ps 10ps 80ns 160ns 
va2 x2 gnd pulse 0 1.8 0ns 10ps 10ps 80ns 160ns 
va3 x3 gnd pulse 1.8 0 0ns 10ps 10ps 160ns 320ns
va4 x4 gnd pulse 0 1.8 0ns 10ps 10ps 160ns 320ns
* SPICE3 file created from full_circuit.ext - technology: scmos

.option scale=0.09u

M1000 a_4197_1687# a_4163_1681# vdd w_4150_1702#  cmosp w=12 l=2
+  ad=60 pd=34 as=17784 ps=6632
M1001 a_4108_1462# a_4074_1474# gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=9750 ps=4572
M1002 a_4623_1687# a_4540_1655# vdd w_4599_1680#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1003 b2 a_3578_1611# vdd w_3634_1595#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1004 a_4162_1462# a_4124_1525# a_4162_1489# w_4149_1483#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1005 vdd b4 a_3942_1273# w_3929_1267#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1006 a_3578_1611# clk a_3558_1547# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1007 a_3495_1123# clk vdd w_3471_1159#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1008 a_4233_1306# a_4200_1306# vdd w_4220_1300#  cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1009 a_4088_1301# a_4026_1295# vdd w_4075_1295#  cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1010 a_4029_1737# a_3892_1949# a_4029_1764# w_4016_1758#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1011 s3 a_4623_1687# vdd w_4679_1671#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1012 vdd b4 a_3817_1292# w_3804_1286#  cmosp w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1013 a_3817_1734# a_3778_1675# a_3827_1681# w_3804_1728#  cmosp w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1014 a_4238_1469# a_4196_1468# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1015 a_3580_1017# clk a_3560_953# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1016 a_4419_1871# p2 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1017 a_3364_1611# y2 vdd w_3340_1604#  cmosp w=24 l=2
+  ad=762 pd=158 as=0 ps=0
M1018 a_4187_1242# a_4153_1236# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1019 vdd a_3827_1462# a_4280_1692# w_4267_1686#  cmosp w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1020 a_3892_1489# a3 a_3892_1516# w_3879_1510#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1021 p5 a_4220_1223# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1022 a_4153_1236# a_4105_1271# gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1023 a_3827_1239# b4 a_3817_1239# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1024 a_3892_1949# a1 a_3892_1976# w_3879_1970#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1025 a_3377_1848# clk a_3357_1917# w_3353_1868#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1026 p1 cin a_4181_2142# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1027 a_4169_1954# a_4092_1986# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1028 a_4399_1940# p2 vdd w_4375_1933#  cmosp w=24 l=2
+  ad=762 pd=158 as=0 ps=0
M1029 a_3817_1681# a2 gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1030 a_4220_1223# a_4214_1232# gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1031 a_4142_2073# a_3827_1922# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1032 a_3377_1848# y1 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1033 vdd b2 a_3942_1715# w_3929_1709#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1034 p3 a_3827_1462# a_4280_1639# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1035 gnd a_3778_1456# a_3845_1462# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1036 vdd cin a_4094_1743# w_4081_1737#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1037 a_3497_985# clk vdd w_3473_1021#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1038 vdd b2 a_3817_1734# w_3804_1728#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1039 a_4128_1744# a_4094_1743# vdd w_4081_1737#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1040 a_3572_1766# a_3489_1734# vdd w_3548_1759#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1041 a_4238_1469# a_4196_1468# vdd w_4225_1483#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1042 gnd a_4124_1525# a_4162_1462# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1043 a_4187_1242# a_4153_1236# vdd w_4140_1257#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1044 p4 a_3827_1239# a_4277_1420# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1045 a_4238_1414# a_3827_1239# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1046 p5 a_4220_1223# vdd w_4207_1244#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1047 a_4537_1252# clk vdd w_4513_1288#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1048 a_3942_1241# a4 gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1049 gnd a_3778_1916# a_3845_1922# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1050 a_3488_1885# a_3377_1848# a_3468_1853# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1051 a_4029_1714# a_3892_1708# gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1052 a_3942_1683# a2 gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1053 a_3578_1155# a_3495_1123# vdd w_3554_1148#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1054 s1 a_4577_2139# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1055 a_4108_1494# a_4074_1474# vdd w_4095_1488#  cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1056 a_3468_1853# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1057 a_4540_1655# clk vdd w_4516_1691#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1058 a_3548_1400# a_3485_1432# gnd Gnd  cmosn w=12 l=2
+  ad=540 pd=138 as=0 ps=0
M1059 a_4026_1322# a_3892_1266# vdd w_4013_1316#  cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1060 a1 a_3564_2070# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1061 a_3485_1432# clk vdd w_3461_1468#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1062 a_3845_1239# a_3778_1288# a_3827_1239# Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1063 a_3571_1917# clk a_3551_1853# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1064 a_4238_1414# a_3827_1239# vdd w_4225_1428#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1065 a_4200_1306# a_4166_1305# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1066 a_4142_2128# cin vdd w_4129_2122#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1067 a_4409_1474# p4 vdd w_4385_1467#  cmosp w=24 l=2
+  ad=762 pd=158 as=0 ps=0
M1068 s4 a_4623_1474# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1069 a_3580_1017# a_3497_985# vdd w_3556_1010#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1070 gnd a_3892_1489# a_4026_1295# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1071 a_3827_1462# b3 a_3817_1462# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1072 a_4603_1410# a_4540_1442# gnd Gnd  cmosn w=12 l=2
+  ad=540 pd=138 as=0 ps=0
M1073 a_4142_2073# a_3827_1922# vdd w_4129_2067#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1074 a_3497_985# a_3386_948# a_3477_953# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1075 a_3778_1730# a2 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1076 a_4383_2070# clk a_4363_2139# w_4359_2090#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1077 a_4092_1954# a_4068_1966# gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1078 gnd a_3942_1715# a_4029_1495# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1079 a_4620_1284# a_4537_1252# vdd w_4596_1277#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1080 a_3827_1239# a_3778_1288# a_3817_1292# w_3804_1286#  cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1081 a_4068_1966# a_4034_1960# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1082 a_3892_1489# b3 gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1083 a_3489_1734# clk vdd w_3465_1770#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1084 a_3355_1317# y3 vdd w_3331_1310#  cmosp w=24 l=2
+  ad=762 pd=158 as=0 ps=0
M1085 a_4162_1489# a_4108_1494# vdd w_4149_1483#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1086 a_3942_1273# a4 vdd w_3929_1267#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1087 a_3827_1922# b1 a_3817_1922# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1088 a_4419_1871# clk a_4399_1940# w_4395_1891#  cmosp w=22 l=2
+  ad=396 pd=80 as=0 ps=0
M1089 a_3942_1496# b3 a_3942_1464# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1090 gnd a_4142_2128# a_4209_2142# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1091 a_3370_2001# x1 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1092 a_4593_1876# a_4530_1908# gnd Gnd  cmosn w=12 l=2
+  ad=540 pd=138 as=0 ps=0
M1093 a_4029_1764# a_3892_1708# vdd w_4016_1758#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 a_3778_1730# a2 vdd w_3765_1744#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1095 a_3568_1464# a_3485_1432# vdd w_3544_1457#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1096 a_3817_1292# a4 vdd w_3804_1286#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 a_3827_1681# a_3778_1730# a_3817_1734# w_3804_1728#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1098 a_3892_1949# b1 gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1099 a_4074_1693# a_4029_1714# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1100 gnd a_4241_1633# a_4308_1639# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1101 a_4068_1966# a_4034_1960# vdd w_4021_1981#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1102 a_4280_1692# a_4197_1687# vdd w_4267_1686#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 a_4124_1525# a_4090_1524# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1104 b4 a_3580_1017# vdd w_3636_1001#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1105 a_3817_1239# a4 gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1106 a1 a_3564_2070# vdd w_3620_2054#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1107 a_3386_948# clk a_3366_1017# w_3362_968#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1108 a_4181_2142# a_3827_1922# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 a_3495_1579# clk vdd w_3471_1615#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1110 vdd cin a_4181_2077# w_4168_2071#  cmosp w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1111 a_4474_2075# clk gnd Gnd  cmosn w=12 l=2
+  ad=468 pd=126 as=0 ps=0
M1112 a_4092_1986# a_3942_1956# a_4092_1954# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1113 a2 a_3572_1766# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1114 a_3942_1715# a2 vdd w_3929_1709#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1115 a_4280_1639# a_4197_1687# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 a_3845_1462# a_3778_1511# a_3827_1462# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 a_4623_1474# a_4540_1442# vdd w_4599_1467#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1118 a_3942_1956# b1 a_3942_1924# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1119 gnd a3 a_3892_1489# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1120 gnd a_4238_1414# a_4305_1420# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1121 a_4166_1305# a_4029_1737# a_4166_1337# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1122 a_3386_948# y4 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1123 s1 a_4577_2139# vdd w_4633_2123#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1124 a_3817_1734# a2 vdd w_3804_1728#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1125 vdd a_3827_1239# a_4277_1473# w_4264_1467#  cmosp w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1126 s4 a_4623_1474# vdd w_4679_1458#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1127 a_4494_2107# a_4383_2070# a_4474_2075# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=0 ps=0
M1128 a_4280_1692# a_4241_1633# p3 w_4267_1686#  cmosp w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1129 a_4162_1462# a_4108_1494# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 gnd a_3892_1949# a_4029_1737# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1131 a_3477_953# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1132 a_4092_1986# a_4068_1966# vdd w_4021_1981#  cmosp w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1133 a_4090_1524# a_4092_1986# a_4090_1556# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1134 a_4277_1420# a_4196_1468# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 a4 a_3578_1155# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1136 a_4510_1876# clk gnd Gnd  cmosn w=12 l=2
+  ad=468 pd=126 as=0 ps=0
M1137 a_3845_1922# a_3778_1971# a_3827_1922# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 a_4169_1899# a_3827_1681# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1139 a_4163_1681# a_4128_1744# a_4163_1708# w_4150_1702#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1140 a_4092_1326# a_3942_1715# a_4108_1681# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1141 gnd a1 a_3892_1949# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1142 a_4530_1908# a_4419_1871# a_4510_1876# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=0 ps=0
M1143 a_4074_1693# a_4029_1714# vdd w_4061_1707#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1144 a_3384_1086# x4 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1145 a_3778_1288# a4 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1146 a_4029_1518# a_3892_1708# a_4029_1545# w_4016_1539#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1147 vdd b3 a_3942_1496# w_3929_1490#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1148 vdd a_3942_1273# a_4105_1271# w_4092_1265#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1149 a_4026_1272# a_3942_1496# a_4026_1227# w_4013_1221#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1150 a_4214_1232# a_4233_1306# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1151 gnd a_4128_1744# a_4163_1681# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1152 a_3578_1611# a_3495_1579# vdd w_3554_1604#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1153 a_3817_1515# a_3778_1456# a_3827_1462# w_3804_1509#  cmosp w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1154 a_3817_1975# a_3778_1916# a_3827_1922# w_3804_1969#  cmosp w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1155 a_3384_1086# clk a_3364_1155# w_3360_1106#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1156 a_4071_1251# a_4026_1272# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1157 a_4613_1940# clk a_4593_1876# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=0 ps=0
M1158 a_4026_1295# a_3892_1266# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 a_3357_1917# y1 vdd w_3333_1910#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1160 a_4169_1954# a_4092_1986# vdd w_4156_1948#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1161 a_3817_1462# a3 gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1162 a_4181_2077# a_4142_2128# p1 w_4168_2071#  cmosp w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1163 vdd b1 a_3942_1956# w_3929_1950#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1164 vdd a_3942_1956# a_4092_1986# w_4021_1981#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1165 a2 a_3572_1766# vdd w_3628_1750#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1166 a_4540_1442# clk vdd w_4516_1478#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1167 vdd b3 a_3817_1515# w_3804_1509#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 a_4029_1495# a_3892_1489# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1169 a_3549_1253# a_3486_1285# gnd Gnd  cmosn w=12 l=2
+  ad=540 pd=138 as=0 ps=0
M1170 vdd b1 a_3817_1975# w_3804_1969#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1171 a_3475_1091# clk gnd Gnd  cmosn w=12 l=2
+  ad=468 pd=126 as=0 ps=0
M1172 a_3778_1233# b4 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1173 a_3778_1675# b2 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1174 a_3370_2001# clk a_3350_2070# w_3346_2021#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1175 a3 a_3568_1464# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1176 a4 a_3578_1155# vdd w_3634_1139#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1177 a_4153_1236# a_4122_1302# a_4153_1263# w_4140_1257#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1178 a_4071_1251# a_4026_1272# vdd w_4058_1265#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1179 a_3558_1547# a_3495_1579# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1180 a_3495_1123# a_3384_1086# a_3475_1091# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=0 ps=0
M1181 a_3817_1922# a1 gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1182 a_3942_1464# a3 gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 a_4220_1223# a_4187_1242# a_4220_1250# w_4207_1244#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1184 a_4105_1271# a_3942_1273# a_4105_1239# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1185 a_3778_1288# a4 vdd w_3765_1302#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1186 a_4209_2142# a_4142_2073# p1 Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1187 a_3486_1285# clk vdd w_3462_1321#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1188 a_3892_1293# b4 vdd w_3879_1287#  cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1189 gnd a_4169_1954# a_4236_1968# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1190 a_4426_1215# clk a_4406_1284# w_4402_1235#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1191 a_4029_1714# a_3942_1956# a_4029_1669# w_4016_1663#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1192 a_4308_1639# a_4241_1688# p3 Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1193 a_3374_1395# x3 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1194 a_3778_1233# b4 vdd w_3765_1247#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1195 a_4613_1940# a_4530_1908# vdd w_4589_1933#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1196 a_4426_1215# p5 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1197 a_3778_1675# b2 vdd w_3765_1689#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1198 b3 a_3569_1317# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1199 vdd a_4029_1737# a_4166_1305# w_4153_1299#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1200 a_3578_1155# clk a_3558_1091# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1201 a_4181_2077# a_3827_1922# vdd w_4168_2071#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 a_3481_2038# a_3370_2001# a_3461_2006# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1203 a_4429_1618# clk a_4409_1687# w_4405_1638#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1204 a_3374_1395# clk a_3354_1464# w_3350_1415#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1205 a_4088_1301# a_4092_1326# a_4088_1333# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1206 b4 a_3580_1017# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1207 a_4200_1306# a_4166_1305# vdd w_4153_1299#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1208 a_4233_1306# cin a_4233_1338# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=96 ps=40
M1209 a_3942_1924# a1 gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1210 vdd a_3942_1715# a_4092_1326# w_4095_1707#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1211 a_4305_1420# a_4238_1469# p4 Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 a_3892_1735# b2 vdd w_3879_1729#  cmosp w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1213 a_4429_1618# p3 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1214 vdd a_4092_1986# a_4090_1524# w_4077_1518#  cmosp w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1215 a_4196_1468# a_4162_1462# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1216 a_4277_1473# a_4196_1468# vdd w_4264_1467#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1217 a_4166_1337# a_4026_1295# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1218 a_3350_2070# x1 vdd w_3326_2063#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1219 a_3461_2006# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1220 p3 a_4241_1688# a_4280_1692# w_4267_1686#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1221 a_4029_1737# a_3892_1708# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1222 a_3778_1511# a3 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1223 a_4537_1252# a_4426_1215# a_4517_1220# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1224 a_4363_2139# p1 vdd w_4339_2132#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1225 a_3778_1971# a1 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1226 a_4090_1556# a_4029_1518# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1227 a_3564_2070# clk a_3544_2006# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1228 s2 a_4613_1940# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1229 a_3378_1697# x2 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1230 a_4517_1220# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1231 a_3892_1266# a4 a_3892_1293# w_3879_1287#  cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1232 a_4163_1708# a_4092_1326# vdd w_4150_1702#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 a_4108_1681# a_4074_1693# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1234 a3 a_3568_1464# vdd w_3624_1448#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1235 a_4277_1473# a_4238_1414# p4 w_4264_1467#  cmosp w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1236 a_4494_2107# clk vdd w_4470_2143#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1237 a_4540_1655# a_4429_1618# a_4520_1623# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1238 a_3485_1432# a_3374_1395# a_3465_1400# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1239 a_3569_1317# a_3486_1285# vdd w_3545_1310#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1240 a_4196_1468# a_4162_1462# vdd w_4149_1483#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1241 a_4620_1284# clk a_4600_1220# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1242 a_4577_2139# clk a_4557_2075# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1243 a_3378_1697# clk a_3358_1766# w_3354_1717#  cmosp w=22 l=2
+  ad=396 pd=80 as=762 ps=158
M1244 a_3942_1496# a3 vdd w_3929_1490#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1245 p2 a_4092_1986# a_4208_1968# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1246 a_3551_1853# a_3488_1885# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1247 a_4520_1623# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1248 a_4029_1545# a_3892_1489# vdd w_4016_1539#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1249 a_3778_1511# a3 vdd w_3765_1525#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1250 a_4105_1271# a_4071_1251# vdd w_4092_1265#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1251 a_3778_1971# a1 vdd w_3765_1985#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1252 a_4163_1681# a_4092_1326# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1253 a_3827_1462# a_3778_1511# a_3817_1515# w_3804_1509#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 a_3465_1400# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1255 a_4026_1227# a_3892_1266# vdd w_4013_1221#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 a_3827_1922# a_3778_1971# a_3817_1975# w_3804_1969#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 a_4034_1960# a_4038_1976# a_4034_1987# w_4021_1981#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1258 a_4530_1908# clk vdd w_4506_1944#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1259 a_3892_1708# a2 a_3892_1735# w_3879_1729#  cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1260 a_4124_1525# a_4090_1524# vdd w_4077_1518#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1261 a_4074_1474# a_4029_1495# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1262 a_4029_1495# a_3942_1715# a_4029_1450# w_4016_1444#  cmosp w=24 l=2
+  ad=120 pd=58 as=192 ps=64
M1263 a_4623_1687# clk a_4603_1623# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1264 a_3384_1542# y2 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1265 a_3568_1464# clk a_3548_1400# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=0 ps=0
M1266 p1 a_4142_2073# a_4181_2077# w_4168_2071#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 gnd a_3778_1675# a_3845_1681# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1268 a_3488_1885# clk vdd w_3464_1921#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1269 a_3564_2070# a_3481_2038# vdd w_3540_2063#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1270 a_3942_1956# a1 vdd w_3929_1950#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1271 a_4169_1899# a_3827_1681# vdd w_4156_1893#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1272 a_3817_1515# a3 vdd w_3804_1509#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1273 a_3817_1975# a1 vdd w_3804_1969#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1274 vdd a_4092_1986# a_4208_1903# w_4195_1897#  cmosp w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1275 a_3489_1734# a_3378_1697# a_3469_1702# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1276 a_4128_1744# a_4094_1743# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1277 gnd a_3942_1496# a_4026_1272# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1278 b1 a_3571_1917# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1279 gnd a_3892_1708# a_4029_1518# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1280 a_4074_1474# a_4029_1495# vdd w_4061_1488#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1281 b3 a_3569_1317# vdd w_3625_1301#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1282 a_4153_1263# a_4105_1271# vdd w_4140_1257#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1283 a_3469_1702# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1284 a_4122_1302# a_4088_1301# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1285 a_4208_1903# a_4169_1954# p2 w_4195_1897#  cmosp w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1286 a_4220_1250# a_4214_1232# vdd w_4207_1244#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1287 a_4105_1239# a_4071_1251# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1288 gnd a_4038_1976# a_4034_1960# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=48 ps=28
M1289 a_4241_1688# a_4197_1687# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1290 a_3364_1155# x4 vdd w_3340_1148#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1291 a_4236_1968# a_4169_1899# p2 Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 a_3572_1766# clk a_3552_1702# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=540 ps=138
M1293 a_4108_1494# a_3942_1496# a_4108_1462# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1294 a_4094_1775# a_4029_1737# gnd Gnd  cmosn w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1295 a_4029_1669# a_3892_1708# vdd w_4016_1663#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1296 a_4600_1220# a_4537_1252# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1297 vdd cin a_4233_1306# w_4220_1300#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1298 vdd a_4092_1326# a_4088_1301# w_4075_1295#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1299 s2 a_4613_1940# vdd w_4669_1924#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1300 a_4214_1232# a_4233_1306# vdd w_4220_1300#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1301 a_4166_1305# a_4026_1295# vdd w_4153_1299#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1302 a_4088_1333# a_4026_1295# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1303 a_4233_1338# a_4200_1306# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1304 a_4142_2128# cin gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1305 a_4092_1326# a_4074_1693# vdd w_4095_1707#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1306 gnd a_4122_1302# a_4153_1236# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1307 a_4557_2075# a_4494_2107# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1308 a_3571_1917# a_3488_1885# vdd w_3547_1910#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1309 a_4090_1524# a_4029_1518# vdd w_4077_1518#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1310 a_3366_1017# y4 vdd w_3342_1010#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1311 a_3827_1681# b2 a_3817_1681# Gnd  cmosn w=12 l=2
+  ad=120 pd=68 as=0 ps=0
M1312 b2 a_3578_1611# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1313 gnd a_4187_1242# a_4220_1223# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1314 a_3544_2006# a_3481_2038# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1315 a_4241_1633# a_3827_1462# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1316 a_3481_2038# clk vdd w_3457_2074#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1317 a_3892_1266# b4 gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1318 a_4406_1284# p5 vdd w_4382_1277#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1319 a_4429_1405# clk a_4409_1474# w_4405_1425#  cmosp w=22 l=2
+  ad=396 pd=80 as=0 ps=0
M1320 cout a_4620_1284# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1321 a_4094_1743# cin a_4094_1775# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1322 a_3778_1456# b3 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1323 p4 a_4238_1469# a_4277_1473# w_4264_1467#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1324 a_4241_1688# a_4197_1687# vdd w_4228_1702#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1325 a_3375_1248# clk a_3355_1317# w_3351_1268#  cmosp w=22 l=2
+  ad=396 pd=80 as=0 ps=0
M1326 a_3942_1273# b4 a_3942_1241# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1327 a_4429_1405# p4 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1328 a_4122_1302# a_4088_1301# vdd w_4075_1295#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1329 gnd a_3942_1956# a_4029_1714# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1330 a_3942_1715# b2 a_3942_1683# Gnd  cmosn w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1331 a_4409_1687# p3 vdd w_4385_1680#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1332 a_3375_1248# y3 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1333 a_4208_1968# a_3827_1681# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1334 a_4197_1687# a_4163_1681# gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1335 a_4241_1633# a_3827_1462# vdd w_4228_1647#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1336 s3 a_4623_1687# gnd Gnd  cmosn w=6 l=2
+  ad=162 pd=66 as=0 ps=0
M1337 a_3354_1464# x3 vdd w_3330_1457#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1338 a_3892_1708# b2 gnd Gnd  cmosn w=6 l=2
+  ad=48 pd=28 as=0 ps=0
M1339 a_3384_1542# clk a_3364_1611# w_3360_1562#  cmosp w=22 l=2
+  ad=396 pd=80 as=0 ps=0
M1340 a_4603_1623# a_4540_1655# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1341 vdd a_3942_1496# a_4108_1494# w_4095_1488#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1342 a_4034_1987# a_3892_1949# vdd w_4021_1981#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1343 a_4029_1450# a_3892_1489# vdd w_4016_1444#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1344 a_4026_1295# a_3892_1489# a_4026_1322# w_4013_1316#  cmosp w=24 l=2
+  ad=120 pd=58 as=0 ps=0
M1345 b1 a_3571_1917# vdd w_3627_1901#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1346 a_3778_1916# b1 gnd Gnd  cmosn w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1347 gnd a_3778_1233# a_3845_1239# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1348 a_3778_1456# b3 vdd w_3765_1470#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1349 a_4540_1442# a_4429_1405# a_4520_1410# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1350 a_3845_1681# a_3778_1730# a_3827_1681# Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1351 a_3560_953# a_3497_985# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1352 gnd a4 a_3892_1266# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1353 a_3486_1285# a_3375_1248# a_3466_1253# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1354 a_4208_1903# a_3827_1681# vdd w_4195_1897#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1355 a_3892_1516# b3 vdd w_3879_1510#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1356 a_4520_1410# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1357 a_3892_1976# b1 vdd w_3879_1970#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1358 a_3466_1253# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1359 a_3358_1766# x2 vdd w_3334_1759#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1360 a_3495_1579# a_3384_1542# a_3475_1547# Gnd  cmosn w=12 l=2
+  ad=300 pd=74 as=468 ps=126
M1361 a_4029_1518# a_3892_1489# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1362 a_3558_1091# a_3495_1123# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1363 a_4026_1272# a_3892_1266# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1364 a_4577_2139# a_4494_2107# vdd w_4553_2132#  cmosp w=12 l=2
+  ad=216 pd=60 as=0 ps=0
M1365 a_3778_1916# b1 vdd w_3765_1930#  cmosp w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1366 a_4623_1474# clk a_4603_1410# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=0 ps=0
M1367 a_3817_1292# a_3778_1233# a_3827_1239# w_3804_1286#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1368 p2 a_4169_1899# a_4208_1903# w_4195_1897#  cmosp w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1369 a_4094_1743# a_4029_1737# vdd w_4081_1737#  cmosp w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1370 a_3552_1702# a_3489_1734# gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1371 cout a_4620_1284# vdd w_4676_1268#  cmosp w=12 l=2
+  ad=180 pd=54 as=0 ps=0
M1372 a_3569_1317# clk a_3549_1253# Gnd  cmosn w=12 l=2
+  ad=252 pd=66 as=0 ps=0
M1373 a_4383_2070# p1 gnd Gnd  cmosn w=6 l=2
+  ad=150 pd=62 as=0 ps=0
M1374 a_4034_1960# a_3892_1949# gnd Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1375 gnd a2 a_3892_1708# Gnd  cmosn w=6 l=2
+  ad=0 pd=0 as=0 ps=0
M1376 a_3475_1547# clk gnd Gnd  cmosn w=12 l=2
+  ad=0 pd=0 as=0 ps=0
C0 w_3765_1302# gnd 0.02fF
C1 a_4034_1960# a_4068_1966# 0.04fF
C2 w_3879_1510# a_3892_1489# 0.05fF
C3 w_3804_1509# a3 0.06fF
C4 b1 a_3571_1917# 0.04fF
C5 a_4153_1236# gnd 0.24fF
C6 a_4426_1215# clk 0.08fF
C7 w_4140_1257# a_4122_1302# 0.06fF
C8 w_3471_1615# vdd 0.03fF
C9 a_3544_2006# clk 0.05fF
C10 vdd gnd 5.33fF
C11 a_4241_1688# gnd 0.17fF
C12 a_4613_1940# s2 0.04fF
C13 w_4264_1467# a_4238_1414# 0.06fF
C14 w_4676_1268# cout 0.08fF
C15 a_4169_1899# vdd 0.15fF
C16 vdd w_4339_2132# 0.05fF
C17 w_3353_1868# clk 0.08fF
C18 a_3892_1489# gnd 0.68fF
C19 p1 clk 0.03fF
C20 a_4105_1271# gnd 0.32fF
C21 w_3765_1744# a_3778_1730# 0.03fF
C22 w_4016_1758# a_4029_1737# 0.05fF
C23 a_3892_1708# vdd 0.43fF
C24 w_4228_1702# vdd 0.09fF
C25 w_4228_1702# a_4241_1688# 0.03fF
C26 w_4207_1244# a_4220_1223# 0.11fF
C27 w_4405_1425# clk 0.08fF
C28 a_3892_1708# a_3892_1489# 0.24fF
C29 w_4095_1488# gnd 0.01fF
C30 a_3942_1956# gnd 0.70fF
C31 w_3471_1159# vdd 0.03fF
C32 cin a_4305_1420# 0.01fF
C33 w_3879_1729# vdd 0.11fF
C34 w_4016_1663# a_4029_1714# 0.05fF
C35 a_3942_1956# a_3892_1708# 0.38fF
C36 w_4153_1299# a_4029_1737# 0.06fF
C37 y1 clk 0.03fF
C38 a_3827_1681# a_3778_1675# 0.52fF
C39 w_4013_1221# vdd 0.31fF
C40 a_4208_1903# vdd 0.93fF
C41 w_4016_1539# a_4029_1518# 0.05fF
C42 w_3765_1525# a_3778_1511# 0.03fF
C43 w_4669_1924# vdd 0.02fF
C44 a_4142_2073# vdd 0.15fF
C45 x4 clk 0.03fF
C46 w_4058_1265# a_4071_1251# 0.03fF
C47 w_3461_1468# clk 0.09fF
C48 cin p2 0.27fF
C49 a_3778_1511# b3 0.20fF
C50 a_3778_1971# vdd 0.15fF
C51 w_3342_1010# a_3366_1017# 0.03fF
C52 w_3804_1286# a_3827_1239# 0.02fF
C53 w_3340_1148# x4 0.11fF
C54 w_4220_1300# vdd 0.15fF
C55 w_3804_1286# a4 0.06fF
C56 w_3929_1950# vdd 0.10fF
C57 w_3804_1728# a_3778_1675# 0.06fF
C58 a2 gnd 0.33fF
C59 w_3360_1562# clk 0.08fF
C60 a_3827_1462# a_4241_1633# 0.22fF
C61 a_4241_1688# p3 0.06fF
C62 w_3462_1321# vdd 0.03fF
C63 w_3462_1321# a_3486_1285# 0.03fF
C64 a_3892_1708# a2 0.22fF
C65 w_4081_1737# cin 0.06fF
C66 w_3351_1268# a_3355_1317# 0.03fF
C67 w_3879_1970# vdd 0.11fF
C68 a_4029_1737# a_3942_1496# 0.05fF
C69 a_4092_1986# a_4169_1954# 0.22fF
C70 a_4029_1737# a_3942_1715# 0.12fF
C71 w_4516_1691# clk 0.09fF
C72 a_4094_1743# a_4128_1744# 0.04fF
C73 b2 a_3778_1675# 0.22fF
C74 a_4162_1462# vdd 0.09fF
C75 w_3929_1950# a_3942_1956# 0.04fF
C76 a_4383_2070# clk 0.08fF
C77 w_4225_1483# a_4238_1469# 0.03fF
C78 a_4163_1681# vdd 0.09fF
C79 a_4026_1295# vdd 0.38fF
C80 a_3942_1273# a_4071_1251# 0.35fF
C81 w_4095_1707# a_4092_1986# 0.05fF
C82 w_4016_1444# vdd 0.31fF
C83 a_3377_1848# clk 0.08fF
C84 w_4679_1671# s3 0.08fF
C85 w_3342_1010# y4 0.11fF
C86 a_3778_1233# gnd 0.20fF
C87 w_3879_1729# a2 0.06fF
C88 a_3892_1489# a_4026_1295# 0.16fF
C89 s2 gnd 0.02fF
C90 w_4016_1444# a_3892_1489# 0.06fF
C91 w_3804_1509# a_3778_1456# 0.06fF
C92 w_3879_1287# b4 0.06fF
C93 a_4108_1494# vdd 0.28fF
C94 a_3564_2070# a1 0.04fF
C95 w_4021_1981# a_4068_1966# 0.10fF
C96 a_3384_1086# clk 0.08fF
C97 a_4092_1326# vdd 0.56fF
C98 a_3942_1496# a_3892_1266# 0.30fF
C99 w_3624_1448# vdd 0.02fF
C100 a_4363_2139# w_4339_2132# 0.03fF
C101 a_4142_2073# w_4168_2071# 0.06fF
C102 w_4195_1897# cin 0.00fF
C103 a_3827_1239# a_3778_1288# 0.06fF
C104 w_3556_1010# a_3580_1017# 0.03fF
C105 w_3360_1106# a_3364_1155# 0.03fF
C106 w_3554_1148# a_3495_1123# 0.09fF
C107 a_3942_1496# a_4074_1474# 0.35fF
C108 a4 a_3778_1288# 0.27fF
C109 w_3354_1717# clk 0.08fF
C110 a_4220_1223# gnd 0.24fF
C111 w_4095_1488# a_4108_1494# 0.04fF
C112 a_3827_1239# a_4277_1473# 0.12fF
C113 a_4238_1469# a_4238_1414# 0.08fF
C114 a_4029_1737# gnd 0.99fF
C115 a_3942_1715# a_4074_1693# 0.35fF
C116 w_3804_1509# vdd 0.12fF
C117 w_4599_1467# a_4623_1474# 0.03fF
C118 w_4405_1425# a_4409_1474# 0.03fF
C119 a_4166_1305# vdd 0.30fF
C120 w_3765_1525# a3 0.06fF
C121 w_4506_1944# clk 0.09fF
C122 a_3892_1708# a_4029_1737# 0.02fF
C123 a_3827_1462# b3 0.07fF
C124 w_3929_1709# b2 0.06fF
C125 w_3544_1457# a_3568_1464# 0.03fF
C126 b3 a_3569_1317# 0.04fF
C127 w_3340_1604# vdd 0.05fF
C128 w_4228_1647# a_3827_1462# 0.23fF
C129 a3 b3 0.73fF
C130 w_4385_1680# p3 0.11fF
C131 a_4108_1681# gnd 0.00fF
C132 w_4264_1467# a_4277_1473# 0.16fF
C133 a_3892_1266# gnd 0.68fF
C134 w_4669_1924# s2 0.08fF
C135 w_3554_1604# a_3578_1611# 0.03fF
C136 a_3827_1681# vdd 0.36fF
C137 a_3564_2070# w_3540_2063# 0.03fF
C138 vdd w_4129_2122# 0.07fF
C139 w_4129_2067# gnd 0.02fF
C140 a_4074_1474# gnd 0.10fF
C141 w_3333_1910# a_3357_1917# 0.03fF
C142 cin a_4034_1960# 0.07fF
C143 w_4150_1702# vdd 0.17fF
C144 clk a_3560_953# 0.05fF
C145 a_4074_1693# gnd 0.10fF
C146 w_4395_1891# a_4399_1940# 0.03fF
C147 a_4068_1966# gnd 0.10fF
C148 a_3827_1239# a_3892_1293# 0.01fF
C149 w_4359_2090# clk 0.08fF
C150 w_3340_1148# vdd 0.05fF
C151 p5 vdd 0.15fF
C152 a_3942_1956# a_3827_1681# 0.06fF
C153 w_3804_1728# vdd 0.12fF
C154 w_4016_1663# a_3942_1715# 0.02fF
C155 cin a_4233_1306# 0.13fF
C156 w_4140_1257# a_4153_1236# 0.11fF
C157 w_4077_1518# gnd 0.02fF
C158 a_3827_1681# a_3817_1734# 0.45fF
C159 p1 a_4142_2128# 0.52fF
C160 w_4140_1257# vdd 0.15fF
C161 w_3929_1267# a4 0.06fF
C162 w_4013_1221# a_3892_1266# 0.06fF
C163 a_3827_1922# vdd 0.33fF
C164 a_4600_1220# clk 0.05fF
C165 b2 vdd 0.15fF
C166 w_4092_1265# a_3942_1273# 0.06fF
C167 w_4140_1257# a_4105_1271# 0.06fF
C168 w_4058_1265# a_4026_1272# 0.06fF
C169 a_4429_1405# clk 0.08fF
C170 a_4038_1976# vdd 0.16fF
C171 w_4599_1680# a_4540_1655# 0.09fF
C172 w_4129_2067# a_4142_2073# 0.03fF
C173 a_4153_1236# a_4187_1242# 0.04fF
C174 w_4013_1316# vdd 0.31fF
C175 w_3334_1759# x2 0.11fF
C176 a_3549_1253# clk 0.05fF
C177 p2 gnd 0.14fF
C178 w_3765_1302# a4 0.06fF
C179 w_4267_1686# cin 0.00fF
C180 a_4029_1518# gnd 0.18fF
C181 w_3765_1930# vdd 0.06fF
C182 w_3804_1728# a_3817_1734# 0.16fF
C183 a_4187_1242# vdd 0.15fF
C184 w_4149_1483# a_4124_1525# 0.06fF
C185 w_4013_1316# a_3892_1489# 0.06fF
C186 a_4169_1899# p2 0.06fF
C187 a_3827_1239# vdd 0.35fF
C188 a_4029_1737# a_4026_1295# 0.37fF
C189 a_4241_1633# vdd 0.15fF
C190 a_3827_1681# a2 0.46fF
C191 w_4225_1428# a_3827_1239# 0.23fF
C192 a_4241_1688# a_4241_1633# 0.08fF
C193 a_3827_1462# a_4280_1692# 0.12fF
C194 b4 a_3580_1017# 0.04fF
C195 a_3892_1708# a_4029_1518# 0.16fF
C196 w_3331_1310# vdd 0.05fF
C197 a4 vdd 0.93fF
C198 a_3892_1489# a_3827_1239# 0.06fF
C199 w_3804_1969# vdd 0.12fF
C200 a_4071_1251# vdd 0.17fF
C201 w_4016_1663# a_3892_1708# 0.06fF
C202 w_3330_1457# x3 0.11fF
C203 a_3778_1730# a_3778_1675# 0.08fF
C204 b2 a_3817_1734# 0.12fF
C205 a_4029_1737# a_4092_1326# 0.05fF
C206 w_4081_1737# gnd 0.02fF
C207 a_4088_1301# a_4122_1302# 0.04fF
C208 a1 vdd 0.97fF
C209 w_4264_1467# vdd 0.12fF
C210 a_3942_1273# a_4026_1272# 0.04fF
C211 w_3554_1604# a_3495_1579# 0.09fF
C212 a_4026_1295# a_3892_1266# 0.02fF
C213 w_3804_1728# a2 0.06fF
C214 w_3804_1509# a_3817_1515# 0.16fF
C215 w_3804_1286# b4 0.06fF
C216 w_4021_1981# a_4034_1960# 0.11fF
C217 p2 a_4208_1903# 0.45fF
C218 a_4128_1744# vdd 0.25fF
C219 y3 clk 0.03fF
C220 a_3778_1916# vdd 0.15fF
C221 a_4029_1737# a_4166_1305# 0.13fF
C222 a3 a_3568_1464# 0.04fF
C223 b3 a_3778_1456# 0.22fF
C224 a_4090_1524# a_4124_1525# 0.04fF
C225 w_3340_1604# a_3364_1611# 0.03fF
C226 a_3827_1922# w_4168_2071# 0.06fF
C227 w_4679_1458# s4 0.08fF
C228 w_3346_2021# a_3350_2070# 0.03fF
C229 w_4513_1288# clk 0.09fF
C230 w_4075_1295# gnd 0.26fF
C231 w_3471_1159# a_3495_1123# 0.03fF
C232 w_3548_1759# a_3489_1734# 0.09fF
C233 w_3354_1717# a_3358_1766# 0.03fF
C234 a_3942_1496# a_4029_1495# 0.04fF
C235 a2 b2 0.73fF
C236 a_3942_1715# a_4029_1495# 0.16fF
C237 a_4092_1326# a_4074_1474# 0.06fF
C238 w_3929_1490# a_3942_1496# 0.04fF
C239 a_3942_1715# a_4029_1714# 0.04fF
C240 w_3765_1525# vdd 0.09fF
C241 b4 a_3942_1273# 0.13fF
C242 w_4195_1897# a_4169_1899# 0.06fF
C243 w_4061_1488# a_4092_1326# 0.26fF
C244 w_4599_1467# a_4540_1442# 0.09fF
C245 w_4021_1981# cin 0.16fF
C246 a_4092_1986# a_4094_1743# 0.34fF
C247 vdd w_3540_2063# 0.03fF
C248 b3 vdd 0.15fF
C249 a_3827_1462# a_3778_1511# 0.06fF
C250 w_3765_1689# b2 0.23fF
C251 w_3544_1457# a_3485_1432# 0.09fF
C252 w_3350_1415# a_3354_1464# 0.03fF
C253 cin a_4200_1306# 0.31fF
C254 w_4228_1647# vdd 0.06fF
C255 w_4077_1518# a_4092_1326# 0.16fF
C256 a_3892_1489# b3 0.03fF
C257 a_4557_2075# clk 0.05fF
C258 a3 a_3778_1511# 0.27fF
C259 w_4402_1235# a_4426_1215# 0.04fF
C260 w_4676_1268# a_4620_1284# 0.12fF
C261 p5 a_4220_1223# 0.04fF
C262 a_3481_2038# w_3540_2063# 0.09fF
C263 a_4169_1954# vdd 0.15fF
C264 a_4092_1986# a_3827_1462# 0.06fF
C265 w_4633_2123# s1 0.08fF
C266 w_3464_1921# clk 0.09fF
C267 w_3556_1010# vdd 0.03fF
C268 w_3634_1139# a4 0.08fF
C269 a_3548_1400# clk 0.05fF
C270 a_3778_1288# b4 0.20fF
C271 a_4029_1495# gnd 0.30fF
C272 w_4095_1707# vdd 0.10fF
C273 w_4267_1686# a_4197_1687# 0.06fF
C274 a_4029_1714# gnd 0.30fF
C275 w_4402_1235# a_4406_1284# 0.03fF
C276 w_4596_1277# a_4537_1252# 0.09fF
C277 w_4589_1933# a_4530_1908# 0.09fF
C278 a4 a_3578_1155# 0.04fF
C279 w_4195_1897# a_4208_1903# 0.16fF
C280 a_4034_1960# gnd 0.24fF
C281 w_3331_1310# y3 0.11fF
C282 a_3558_1547# clk 0.05fF
C283 a_3827_1239# a_3778_1233# 0.52fF
C284 a_4620_1284# cout 0.04fF
C285 a_4092_1326# a_4029_1518# 0.07fF
C286 w_4676_1268# vdd 0.02fF
C287 a_4214_1232# vdd 0.19fF
C288 a4 a_3778_1233# 0.06fF
C289 a_3892_1708# a_4029_1714# 0.02fF
C290 w_3765_1744# vdd 0.09fF
C291 a_4233_1306# gnd 0.13fF
C292 a_4187_1242# a_4220_1223# 0.16fF
C293 w_4092_1265# vdd 0.10fF
C294 a_4124_1525# vdd 0.21fF
C295 a_4142_2128# vdd 0.15fF
C296 cin gnd 0.74fF
C297 w_4016_1539# a_3892_1708# 0.06fF
C298 a_4029_1737# a_3827_1239# 0.04fF
C299 a_3827_1462# a_3892_1516# 0.01fF
C300 w_4156_1893# vdd 0.09fF
C301 a_3778_1730# vdd 0.15fF
C302 w_4092_1265# a_4105_1271# 0.04fF
C303 cin a_4169_1899# 0.06fF
C304 w_4516_1691# a_4540_1655# 0.03fF
C305 a_3892_1949# vdd 0.35fF
C306 w_4129_2067# a_3827_1922# 0.06fF
C307 w_3879_1287# vdd 0.11fF
C308 w_4153_1299# a_4200_1306# 0.03fF
C309 w_4075_1295# a_4026_1295# 0.08fF
C310 w_4013_1316# a_3892_1266# 0.06fF
C311 w_3627_1901# vdd 0.02fF
C312 a_4092_1986# a_4090_1524# 0.13fF
C313 a_4238_1469# vdd 0.15fF
C314 a_4280_1692# vdd 0.93fF
C315 a_3827_1239# a_3892_1266# 0.05fF
C316 w_4679_1458# vdd 0.02fF
C317 w_4075_1295# a_4092_1326# 0.06fF
C318 a_3892_1949# a_3942_1956# 0.57fF
C319 p2 clk 0.03fF
C320 a_3892_1266# a4 0.22fF
C321 w_3765_1985# vdd 0.09fF
C322 a_3827_1462# a3 0.46fF
C323 a_4026_1272# vdd 0.05fF
C324 a_3378_1697# clk 0.08fF
C325 w_3929_1267# b4 0.06fF
C326 a_3942_1464# vdd 0.01fF
C327 a_3942_1683# vdd 0.01fF
C328 cin a_4208_1903# 0.04fF
C329 w_4225_1483# vdd 0.09fF
C330 x1 w_3326_2063# 0.11fF
C331 w_4405_1638# a_4429_1618# 0.04fF
C332 s3 gnd 0.02fF
C333 w_3360_1106# clk 0.08fF
C334 cin a_4142_2073# 0.20fF
C335 w_4016_1758# a_3892_1708# 0.06fF
C336 w_3765_1744# a2 0.06fF
C337 w_3804_1286# a_3778_1288# 0.06fF
C338 w_4220_1300# a_4233_1306# 0.10fF
C339 w_4016_1444# a_4029_1495# 0.05fF
C340 w_4220_1300# cin 0.06fF
C341 a_4603_1410# clk 0.05fF
C342 w_3636_1001# b4 0.08fF
C343 w_3544_1457# vdd 0.03fF
C344 a_3778_1511# a_3778_1456# 0.08fF
C345 w_4599_1680# a_4623_1687# 0.03fF
C346 a_3817_1975# vdd 0.93fF
C347 a_4142_2128# w_4168_2071# 0.06fF
C348 b1 gnd 1.65fF
C349 b3 a_3817_1515# 0.12fF
C350 w_3465_1770# a_3489_1734# 0.03fF
C351 b4 vdd 0.10fF
C352 a_4419_1871# clk 0.08fF
C353 a2 a_3778_1730# 0.27fF
C354 cin p4 0.16fF
C355 w_3465_1770# clk 0.09fF
C356 a_4105_1239# gnd 0.01fF
C357 cin p3 0.27fF
C358 a_3942_1715# a_3942_1496# 0.35fF
C359 w_3625_1301# b3 0.08fF
C360 w_4382_1277# p5 0.11fF
C361 w_4195_1897# a_3827_1681# 0.06fF
C362 w_3634_1595# vdd 0.02fF
C363 a_4238_1414# vdd 0.15fF
C364 w_4516_1478# a_4540_1442# 0.03fF
C365 w_4225_1428# a_4238_1414# 0.03fF
C366 a_4088_1301# vdd 0.30fF
C367 vdd w_3457_2074# 0.03fF
C368 a_3778_1511# vdd 0.15fF
C369 w_4095_1707# a_4029_1737# 0.00fF
C370 w_3461_1468# a_3485_1432# 0.03fF
C371 a_4196_1468# gnd 0.32fF
C372 w_3627_1901# a_3571_1917# 0.12fF
C373 w_4599_1680# vdd 0.03fF
C374 w_3353_1868# a_3377_1848# 0.04fF
C375 w_4267_1686# p3 0.02fF
C376 a_4197_1687# gnd 0.32fF
C377 w_3351_1268# clk 0.08fF
C378 w_4669_1924# a_4613_1940# 0.12fF
C379 a_4214_1232# a_4220_1223# 0.02fF
C380 w_4395_1891# a_4419_1871# 0.04fF
C381 a_4200_1306# gnd 0.10fF
C382 a_4092_1986# vdd 0.92fF
C383 a_3481_2038# w_3457_2074# 0.03fF
C384 w_3473_1021# vdd 0.03fF
C385 a_3942_1496# gnd 0.27fF
C386 w_4061_1707# vdd 0.06fF
C387 w_4228_1702# a_4197_1687# 0.06fF
C388 a_3942_1715# gnd 0.28fF
C389 w_4513_1288# a_4537_1252# 0.03fF
C390 w_4516_1478# clk 0.09fF
C391 w_4506_1944# a_4530_1908# 0.03fF
C392 a_4122_1302# a_4153_1236# 0.16fF
C393 a_3778_1971# b1 0.20fF
C394 a_3827_1239# a_3817_1292# 0.45fF
C395 w_3636_1001# a_3580_1017# 0.12fF
C396 a_3942_1956# a_4092_1986# 0.13fF
C397 x2 clk 0.03fF
C398 a_4122_1302# vdd 0.23fF
C399 a_3892_1708# a_3942_1715# 0.07fF
C400 w_3929_1950# b1 0.06fF
C401 w_3628_1750# vdd 0.02fF
C402 w_4095_1707# a_4074_1693# 0.06fF
C403 a_3892_1949# a_4029_1737# 0.16fF
C404 a_4122_1302# a_4105_1271# 0.41fF
C405 w_4058_1265# vdd 0.06fF
C406 w_3879_1970# b1 0.06fF
C407 w_4589_1933# vdd 0.03fF
C408 a_3827_1462# a_3778_1456# 0.52fF
C409 w_4081_1737# a_4128_1744# 0.03fF
C410 a_4094_1743# vdd 0.30fF
C411 w_3929_1267# a_3942_1273# 0.04fF
C412 cin a_3827_1681# 0.06fF
C413 a3 a_3778_1456# 0.06fF
C414 cin w_4129_2122# 0.23fF
C415 w_4013_1221# a_3942_1496# 0.06fF
C416 w_3804_1286# vdd 0.12fF
C417 a_4169_1899# gnd 0.17fF
C418 w_4220_1300# a_4200_1306# 0.06fF
C419 w_3879_1287# a_3892_1266# 0.05fF
C420 w_4153_1299# a_4026_1295# 0.06fF
C421 a_4169_1954# p2 0.52fF
C422 a_3892_1708# gnd 0.68fF
C423 b4 a_3778_1233# 0.22fF
C424 w_4405_1638# clk 0.08fF
C425 w_4385_1467# p4 0.11fF
C426 a_3827_1462# vdd 0.35fF
C427 a_4241_1688# a_3827_1462# 0.20fF
C428 a_4038_1976# a_4034_1960# 0.16fF
C429 clk w_4470_2143# 0.09fF
C430 w_3331_1310# a_3355_1317# 0.03fF
C431 a3 vdd 0.93fF
C432 w_4633_2123# vdd 0.02fF
C433 a_3827_1462# a_3892_1489# 0.05fF
C434 a_3942_1273# vdd 0.35fF
C435 a_4162_1462# a_4196_1468# 0.04fF
C436 w_4077_1518# a_4124_1525# 0.03fF
C437 w_3765_1247# b4 0.23fF
C438 a_3892_1266# a_4026_1272# 0.02fF
C439 a_3892_1489# a3 0.22fF
C440 a_4163_1681# a_4197_1687# 0.04fF
C441 w_4149_1483# vdd 0.17fF
C442 a_4105_1271# a_3942_1273# 0.13fF
C443 w_3620_2054# a1 0.08fF
C444 cin a_3827_1922# 0.19fF
C445 w_3879_1729# a_3892_1708# 0.05fF
C446 w_3628_1750# a2 0.08fF
C447 w_4153_1299# a_4166_1305# 0.10fF
C448 w_3765_1302# a_3778_1288# 0.03fF
C449 a_4142_2073# gnd 0.21fF
C450 w_4016_1444# a_3942_1496# 0.02fF
C451 a_3778_1675# vdd 0.15fF
C452 w_3461_1468# vdd 0.03fF
C453 cin a_4236_1968# 0.01fF
C454 a_3778_1971# gnd 0.17fF
C455 w_4016_1444# a_3942_1715# 0.06fF
C456 w_4405_1425# a_4429_1405# 0.04fF
C457 w_3340_1148# a_3364_1155# 0.03fF
C458 a_3778_1288# vdd 0.15fF
C459 a_4108_1494# a_3942_1496# 0.13fF
C460 a_3892_1266# b4 0.03fF
C461 a_4092_1326# a_3942_1496# 0.06fF
C462 cin a_4241_1633# 0.04fF
C463 w_4207_1244# p5 0.03fF
C464 w_4195_1897# a_4169_1954# 0.06fF
C465 p4 gnd 0.14fF
C466 a_4092_1326# a_3942_1715# 0.13fF
C467 a_4277_1473# vdd 0.93fF
C468 p1 w_4168_2071# 0.02fF
C469 a_4092_1986# a_4029_1737# 0.08fF
C470 p3 gnd 0.14fF
C471 vdd w_3326_2063# 0.05fF
C472 a_4200_1306# a_4166_1305# 0.04fF
C473 p1 a_4181_2077# 0.45fF
C474 a_4090_1524# vdd 0.30fF
C475 w_4061_1707# a_4029_1737# 0.00fF
C476 a_3552_1702# clk 0.05fF
C477 w_4264_1467# cin 0.01fF
C478 a_4162_1462# gnd 0.24fF
C479 w_4516_1691# vdd 0.03fF
C480 w_4267_1686# a_4241_1633# 0.06fF
C481 a_4163_1681# gnd 0.24fF
C482 w_4596_1277# a_4620_1284# 0.03fF
C483 a_4026_1295# gnd 0.24fF
C484 w_4359_2090# a_4383_2070# 0.04fF
C485 w_3342_1010# vdd 0.05fF
C486 w_3929_1490# b3 0.06fF
C487 w_3804_1286# a_3778_1233# 0.06fF
C488 a_4108_1494# gnd 0.23fF
C489 a_3827_1922# b1 0.07fF
C490 w_3929_1709# vdd 0.10fF
C491 a_4577_2139# s1 0.04fF
C492 w_4150_1702# a_4197_1687# 0.03fF
C493 a_4092_1326# gnd 0.61fF
C494 w_4207_1244# a_4187_1242# 0.06fF
C495 a_3384_1542# clk 0.08fF
C496 a_4092_1986# a_4074_1693# 0.09fF
C497 w_3346_2021# clk 0.08fF
C498 w_4596_1277# vdd 0.03fF
C499 a_4593_1876# clk 0.05fF
C500 a2 a_3778_1675# 0.06fF
C501 w_3765_1930# b1 0.23fF
C502 w_4061_1707# a_4074_1693# 0.03fF
C503 w_3804_1509# gnd 0.02fF
C504 w_3929_1267# vdd 0.10fF
C505 w_4077_1518# a_4092_1986# 0.06fF
C506 a_4166_1305# gnd 0.13fF
C507 w_4506_1944# vdd 0.03fF
C508 w_3804_1969# b1 0.06fF
C509 a_3778_1456# vdd 0.15fF
C510 w_4021_1981# a_4038_1976# 0.06fF
C511 a_3827_1462# a_3817_1515# 0.45fF
C512 w_3765_1689# a_3778_1675# 0.03fF
C513 a_4029_1737# a_3827_1462# 0.04fF
C514 a1 b1 0.73fF
C515 cin a_4169_1954# 0.04fF
C516 w_4385_1680# a_4409_1687# 0.03fF
C517 w_3765_1302# vdd 0.09fF
C518 a_3827_1681# gnd 0.39fF
C519 w_3625_1301# a_3569_1317# 0.12fF
C520 w_3351_1268# a_3375_1248# 0.04fF
C521 w_3547_1910# vdd 0.03fF
C522 w_3636_1001# vdd 0.02fF
C523 a_3827_1681# a_4169_1899# 0.27fF
C524 a_4153_1236# vdd 0.09fF
C525 a_4196_1468# a_3827_1239# 0.09fF
C526 a_3778_1288# a_3778_1233# 0.08fF
C527 w_3471_1615# clk 0.09fF
C528 a_4233_1306# a_4214_1232# 0.04fF
C529 b2 a_3942_1715# 0.13fF
C530 b4 a_3817_1292# 0.12fF
C531 a_4092_1986# a_4029_1518# 0.31fF
C532 a_3827_1681# a_3892_1708# 0.05fF
C533 a_4241_1688# vdd 0.15fF
C534 a_4197_1687# a_4241_1633# 0.06fF
C535 w_4225_1428# vdd 0.06fF
C536 a_4105_1271# a_4153_1236# 0.02fF
C537 a_3892_1949# a_4034_1960# 0.02fF
C538 b1 a_3778_1916# 0.22fF
C539 a_3892_1489# vdd 0.43fF
C540 p5 gnd 0.10fF
C541 w_3929_1709# a2 0.06fF
C542 a_4105_1271# vdd 0.28fF
C543 a_3942_1496# a_3827_1239# 0.06fF
C544 w_3804_1728# gnd 0.02fF
C545 a_3892_1266# a_3942_1273# 0.00fF
C546 w_4264_1467# a_4196_1468# 0.06fF
C547 cin a_4308_1639# 0.01fF
C548 w_3879_1729# a_3827_1681# 0.21fF
C549 w_4095_1488# vdd 0.10fF
C550 w_4081_1737# a_4092_1986# 0.03fF
C551 a_3942_1956# vdd 0.54fF
C552 w_3471_1615# a_3495_1579# 0.03fF
C553 w_3360_1562# a_3364_1611# 0.03fF
C554 w_4633_2123# a_4577_2139# 0.12fF
C555 w_3471_1159# clk 0.09fF
C556 cin a_4142_2128# 0.22fF
C557 a_4108_1494# a_4162_1462# 0.02fF
C558 w_4075_1295# a_4088_1301# 0.10fF
C559 a_3827_1922# gnd 0.41fF
C560 b2 gnd 1.70fF
C561 a_3817_1734# vdd 0.93fF
C562 a_4092_1326# a_4163_1681# 0.02fF
C563 w_3330_1457# vdd 0.05fF
C564 a_4092_1326# a_4026_1295# 0.32fF
C565 a_4429_1618# clk 0.08fF
C566 a_4029_1737# a_4090_1524# 0.22fF
C567 w_3334_1759# a_3358_1766# 0.03fF
C568 a_3892_1708# b2 0.03fF
C569 a_4187_1242# gnd 0.10fF
C570 cin a_4280_1692# 0.04fF
C571 w_4207_1244# a_4214_1232# 0.07fF
C572 a_3827_1239# gnd 0.31fF
C573 w_4195_1897# a_4092_1986# 0.06fF
C574 w_4156_1948# a_4169_1954# 0.03fF
C575 w_3554_1604# vdd 0.03fF
C576 a_4241_1633# gnd 0.20fF
C577 w_4385_1467# a_4409_1474# 0.03fF
C578 a4 gnd 0.33fF
C579 vdd w_4168_2071# 0.12fF
C580 w_4081_1737# a_4094_1743# 0.10fF
C581 w_3879_1729# b2 0.06fF
C582 a_4071_1251# gnd 0.10fF
C583 a2 vdd 0.93fF
C584 w_3330_1457# a_3354_1464# 0.03fF
C585 p4 clk 0.03fF
C586 w_4075_1295# a_4122_1302# 0.17fF
C587 w_4385_1680# vdd 0.05fF
C588 w_3547_1910# a_3571_1917# 0.03fF
C589 w_4016_1758# a_3892_1949# 0.06fF
C590 a1 gnd 0.24fF
C591 w_4267_1686# a_4280_1692# 0.16fF
C592 a_4181_2077# vdd 0.93fF
C593 p3 clk 0.03fF
C594 w_3462_1321# clk 0.09fF
C595 b3 a_3942_1496# 0.13fF
C596 a_3827_1922# a_4142_2073# 0.27fF
C597 w_3634_1139# vdd 0.02fF
C598 w_3765_1470# b3 0.23fF
C599 w_3804_1286# a_3817_1292# 0.16fF
C600 w_3765_1689# vdd 0.06fF
C601 a_3827_1922# a_3778_1971# 0.06fF
C602 w_4150_1702# a_4163_1681# 0.11fF
C603 a_4128_1744# gnd 0.10fF
C604 w_4382_1277# a_4406_1284# 0.03fF
C605 a_3892_1949# b1 0.03fF
C606 w_4375_1933# a_4399_1940# 0.03fF
C607 a_3778_1916# gnd 0.20fF
C608 w_4513_1288# vdd 0.03fF
C609 a_3778_1233# vdd 0.15fF
C610 w_3879_1510# b3 0.06fF
C611 w_4077_1518# a_4090_1524# 0.10fF
C612 cin a_4238_1414# 0.04fF
C613 w_3548_1759# vdd 0.03fF
C614 w_3627_1901# b1 0.08fF
C615 w_4150_1702# a_4092_1326# 0.06fF
C616 w_4061_1707# a_4029_1714# 0.06fF
C617 w_4095_1707# a_3942_1715# 0.06fF
C618 w_3879_1970# a_3827_1922# 0.21fF
C619 w_3362_968# a_3366_1017# 0.03fF
C620 w_4359_2090# a_4363_2139# 0.03fF
C621 w_3556_1010# a_3497_985# 0.09fF
C622 w_3765_1247# vdd 0.06fF
C623 a_3942_1924# vdd 0.01fF
C624 w_3929_1267# a_3892_1266# 0.28fF
C625 b3 gnd 1.70fF
C626 w_4375_1933# vdd 0.05fF
C627 w_3804_1969# a_3778_1971# 0.06fF
C628 w_4021_1981# a_3892_1949# 0.06fF
C629 a_3817_1515# vdd 0.93fF
C630 a_4220_1223# vdd 0.09fF
C631 a_4029_1737# vdd 0.52fF
C632 cin a_4092_1986# 0.04fF
C633 a1 a_3778_1971# 0.27fF
C634 b2 a_3578_1611# 0.04fF
C635 a_4241_1633# p3 0.52fF
C636 w_3625_1301# vdd 0.02fF
C637 a_4169_1954# gnd 0.20fF
C638 a_4181_2077# w_4168_2071# 0.16fF
C639 w_4013_1316# a_4026_1295# 0.05fF
C640 w_3929_1950# a1 0.06fF
C641 w_3464_1921# vdd 0.03fF
C642 a_4169_1954# a_4169_1899# 0.08fF
C643 a_4196_1468# a_4238_1469# 0.27fF
C644 w_4095_1707# gnd 0.01fF
C645 a_3827_1922# a_3892_1976# 0.01fF
C646 w_4095_1488# a_4029_1737# 0.01fF
C647 w_4264_1467# p4 0.02fF
C648 w_4599_1467# vdd 0.03fF
C649 a_3892_1266# vdd 0.31fF
C650 a_3778_1971# a_3778_1916# 0.08fF
C651 b1 a_3817_1975# 0.12fF
C652 w_3879_1970# a1 0.06fF
C653 w_4129_2067# vdd 0.09fF
C654 w_3362_968# clk 0.08fF
C655 a_4214_1232# gnd 0.21fF
C656 a_3892_1489# a_3892_1266# 0.24fF
C657 a_4074_1474# vdd 0.17fF
C658 w_3333_1910# y1 0.11fF
C659 a_4092_1326# a_3827_1239# 0.06fF
C660 y4 clk 0.03fF
C661 w_4225_1483# a_4196_1468# 0.06fF
C662 a_4074_1693# vdd 0.17fF
C663 w_4061_1488# vdd 0.06fF
C664 w_3804_1728# a_3827_1681# 0.02fF
C665 a_4494_2107# w_4553_2132# 0.09fF
C666 w_4679_1671# a_4623_1687# 0.12fF
C667 a_4068_1966# vdd 0.17fF
C668 w_3346_2021# a_3370_2001# 0.04fF
C669 a_3942_1496# a_4026_1272# 0.16fF
C670 w_3620_2054# a_3564_2070# 0.12fF
C671 w_3634_1139# a_3578_1155# 0.12fF
C672 w_4092_1265# gnd 0.08fF
C673 w_3360_1106# a_3384_1086# 0.04fF
C674 w_3354_1717# a_3378_1697# 0.04fF
C675 w_3628_1750# a_3572_1766# 0.12fF
C676 p5 clk 0.03fF
C677 cin a_4094_1743# 0.13fF
C678 w_3929_1490# a3 0.06fF
C679 a_4124_1525# gnd 0.10fF
C680 cout gnd 0.02fF
C681 a_4142_2128# gnd 0.20fF
C682 a_3778_1730# gnd 0.21fF
C683 w_4095_1488# a_4074_1474# 0.06fF
C684 w_4156_1893# a_4169_1899# 0.03fF
C685 w_4077_1518# vdd 0.15fF
C686 a_4128_1744# a_4163_1681# 0.16fF
C687 a_3892_1949# gnd 0.23fF
C688 w_4679_1458# a_4623_1474# 0.12fF
C689 a_3827_1681# b2 0.07fF
C690 a_4068_1966# a_3942_1956# 0.32fF
C691 a_3551_1853# clk 0.05fF
C692 x3 clk 0.03fF
C693 w_4395_1891# clk 0.08fF
C694 a_4196_1468# a_4238_1414# 0.06fF
C695 a_3892_1949# a_3892_1708# 0.24fF
C696 a_4238_1469# gnd 0.17fF
C697 a_4128_1744# a_4092_1326# 0.36fF
C698 w_4679_1671# vdd 0.02fF
C699 w_4156_1948# a_4092_1986# 0.23fF
C700 vdd w_4553_2132# 0.03fF
C701 a_4029_1518# vdd 0.22fF
C702 w_3804_1728# b2 0.06fF
C703 a_4026_1272# gnd 0.30fF
C704 w_4220_1300# a_4214_1232# 0.03fF
C705 w_3765_1247# a_3778_1233# 0.03fF
C706 w_3353_1868# a_3357_1917# 0.03fF
C707 w_4016_1663# vdd 0.31fF
C708 w_3547_1910# a_3488_1885# 0.09fF
C709 w_4021_1981# a_4092_1986# 0.04fF
C710 w_4267_1686# a_3827_1462# 0.06fF
C711 a_3892_1489# a_4029_1518# 0.02fF
C712 w_4589_1933# a_4613_1940# 0.03fF
C713 a_3350_2070# w_3326_2063# 0.03fF
C714 a_4142_2128# a_4142_2073# 0.08fF
C715 w_4081_1737# vdd 0.15fF
C716 a_3827_1922# a_4038_1976# 0.06fF
C717 w_4140_1257# a_4187_1242# 0.03fF
C718 w_4016_1663# a_3942_1956# 0.06fF
C719 a_4092_1986# a_3942_1715# 0.06fF
C720 a_4603_1623# clk 0.05fF
C721 w_4382_1277# vdd 0.05fF
C722 a_3817_1292# vdd 0.93fF
C723 b4 gnd 1.68fF
C724 w_3804_1509# b3 0.06fF
C725 a_3374_1395# clk 0.08fF
C726 cin a_4277_1473# 0.04fF
C727 w_3465_1770# vdd 0.03fF
C728 w_3929_1950# a_3892_1949# 0.28fF
C729 w_4095_1707# a_4092_1326# 0.04fF
C730 w_4150_1702# a_4128_1744# 0.06fF
C731 w_4013_1221# a_4026_1272# 0.05fF
C732 w_3350_1415# clk 0.08fF
C733 a_4238_1414# gnd 0.20fF
C734 w_4405_1638# a_4409_1687# 0.03fF
C735 w_3340_1604# y2 0.11fF
C736 w_3473_1021# a_3497_985# 0.03fF
C737 w_3804_1969# a_3827_1922# 0.02fF
C738 w_4075_1295# vdd 0.15fF
C739 a_4088_1301# gnd 0.19fF
C740 a_4124_1525# a_4162_1462# 0.16fF
C741 a_3778_1511# gnd 0.21fF
C742 w_3765_1985# a_3778_1971# 0.03fF
C743 a_3827_1922# a1 0.46fF
C744 w_4195_1897# vdd 0.12fF
C745 w_3879_1970# a_3892_1949# 0.05fF
C746 a_4238_1469# p4 0.06fF
C747 s1 gnd 0.02fF
C748 a_3827_1239# a4 0.46fF
C749 y2 clk 0.03fF
C750 a_4280_1692# p3 0.45fF
C751 a_4092_1986# gnd 0.94fF
C752 a_4124_1525# a_4108_1494# 0.39fF
C753 w_3545_1310# a_3569_1317# 0.03fF
C754 w_3333_1910# vdd 0.05fF
C755 a_4029_1737# a_4074_1474# 0.05fF
C756 a_4169_1954# a_3827_1681# 0.06fF
C757 a_4092_1986# a_4169_1899# 0.20fF
C758 a_4029_1737# a_4074_1693# 0.21fF
C759 a_3827_1922# a_3778_1916# 0.52fF
C760 w_4264_1467# a_3827_1239# 0.06fF
C761 a_4197_1687# a_3827_1462# 0.09fF
C762 w_4516_1478# vdd 0.03fF
C763 w_3804_1969# a1 0.06fF
C764 w_3620_2054# vdd 0.02fF
C765 a_4122_1302# gnd 0.10fF
C766 w_3765_1930# a_3778_1916# 0.03fF
C767 a_4029_1495# vdd 0.05fF
C768 a_3558_1091# clk 0.05fF
C769 w_4077_1518# a_4029_1737# 0.00fF
C770 w_4149_1483# a_4196_1468# 0.03fF
C771 a_4029_1714# vdd 0.05fF
C772 w_3929_1490# vdd 0.10fF
C773 a_3942_1715# a_3827_1462# 0.06fF
C774 a_4494_2107# w_4470_2143# 0.03fF
C775 a_3892_1489# a_4029_1495# 0.02fF
C776 a_4034_1960# vdd 0.07fF
C777 w_3362_968# a_3386_948# 0.04fF
C778 a_3942_1496# a_3942_1273# 0.26fF
C779 w_3929_1490# a_3892_1489# 0.28fF
C780 w_3804_1969# a_3778_1916# 0.06fF
C781 a_3386_948# clk 0.08fF
C782 a_4092_1986# a_4208_1903# 0.12fF
C783 w_4061_1488# a_4074_1474# 0.03fF
C784 p4 a_4238_1414# 0.52fF
C785 a_4094_1743# gnd 0.17fF
C786 w_4016_1539# vdd 0.31fF
C787 w_4375_1933# p2 0.11fF
C788 w_4156_1893# a_3827_1681# 0.06fF
C789 w_3879_1510# a_3827_1462# 0.21fF
C790 a1 a_3778_1916# 0.06fF
C791 a_4142_2128# w_4129_2122# 0.03fF
C792 a_3942_1956# a_4029_1714# 0.16fF
C793 a_3827_1681# a_3778_1730# 0.06fF
C794 a_4233_1306# vdd 0.30fF
C795 a_3892_1949# a_3827_1681# 0.06fF
C796 w_4016_1539# a_3892_1489# 0.06fF
C797 w_3879_1510# a3 0.06fF
C798 p1 gnd 0.14fF
C799 cin vdd 0.78fF
C800 cin a_4241_1688# 0.06fF
C801 w_3624_1448# a_3568_1464# 0.12fF
C802 w_3350_1415# a_3374_1395# 0.04fF
C803 a_4108_1462# gnd 0.01fF
C804 w_4228_1647# a_4241_1633# 0.03fF
C805 p1 w_4339_2132# 0.11fF
C806 a_3827_1462# gnd 0.29fF
C807 w_3634_1595# a_3578_1611# 0.12fF
C808 w_3360_1562# a_3384_1542# 0.04fF
C809 vdd w_4470_2143# 0.03fF
C810 a_4026_1295# a_4088_1301# 0.05fF
C811 a3 gnd 0.33fF
C812 w_4081_1737# a_4029_1737# 0.06fF
C813 a_3942_1273# gnd 0.30fF
C814 a_4623_1687# s3 0.04fF
C815 w_3804_1728# a_3778_1730# 0.06fF
C816 a_3892_1708# a_3827_1462# 0.06fF
C817 cin a_3942_1956# 0.08fF
C818 w_4267_1686# vdd 0.12fF
C819 w_3464_1921# a_3488_1885# 0.03fF
C820 w_4267_1686# a_4241_1688# 0.06fF
C821 a_4623_1474# s4 0.04fF
C822 a_4214_1232# a_4187_1242# 0.42fF
C823 a_3375_1248# clk 0.08fF
C824 a_4092_1326# a_4088_1301# 0.13fF
C825 a_4577_2139# w_4553_2132# 0.03fF
C826 w_3554_1148# vdd 0.03fF
C827 a_4142_2128# a_3827_1922# 0.06fF
C828 a_3778_1730# b2 0.20fF
C829 a_3827_1922# a_3892_1949# 0.05fF
C830 a_3370_2001# clk 0.08fF
C831 w_4016_1758# vdd 0.31fF
C832 a_3778_1675# gnd 0.24fF
C833 s4 gnd 0.02fF
C834 a_3892_1949# a_4038_1976# 0.32fF
C835 a_4092_1986# a_4092_1326# 0.06fF
C836 a_3827_1681# a_3892_1735# 0.01fF
C837 p1 a_4142_2073# 0.06fF
C838 w_4207_1244# vdd 0.15fF
C839 a_3778_1288# gnd 0.21fF
C840 w_4077_1518# a_4029_1518# 0.06fF
C841 w_3804_1509# a_3778_1511# 0.06fF
C842 a_4026_1295# a_4122_1302# 0.10fF
C843 w_3334_1759# vdd 0.05fF
C844 w_3929_1709# a_3942_1715# 0.04fF
C845 w_4092_1265# a_4071_1251# 0.06fF
C846 w_4013_1221# a_3942_1273# 0.02fF
C847 cin w_4168_2071# 0.06fF
C848 b1 vdd 0.15fF
C849 w_3879_1287# a_3827_1239# 0.21fF
C850 w_4153_1299# vdd 0.15fF
C851 a_4090_1524# gnd 0.17fF
C852 w_3879_1287# a4 0.06fF
C853 w_4156_1948# vdd 0.06fF
C854 cin a_4181_2077# 0.12fF
C855 a_4238_1469# a_3827_1239# 0.20fF
C856 a1 a_3892_1949# 0.22fF
C857 w_3545_1310# vdd 0.03fF
C858 b1 a_3942_1956# 0.13fF
C859 clk w_3457_2074# 0.09fF
C860 w_3545_1310# a_3486_1285# 0.09fF
C861 a_3572_1766# a2 0.04fF
C862 w_4021_1981# vdd 0.46fF
C863 a_4092_1986# a_3827_1681# 0.15fF
C864 w_3765_1470# a_3778_1456# 0.03fF
C865 a_4029_1737# a_4029_1714# 0.14fF
C866 a_4196_1468# vdd 0.26fF
C867 a_3827_1922# a_3817_1975# 0.45fF
C868 a_4197_1687# vdd 0.26fF
C869 w_4264_1467# a_4238_1469# 0.06fF
C870 w_4385_1467# vdd 0.05fF
C871 a_4197_1687# a_4241_1688# 0.27fF
C872 a_4026_1272# a_4071_1251# 0.04fF
C873 a_4200_1306# vdd 0.17fF
C874 w_3473_1021# clk 0.09fF
C875 w_3765_1985# a1 0.06fF
C876 w_3929_1709# a_3892_1708# 0.28fF
C877 a_3942_1496# vdd 0.55fF
C878 w_4021_1981# a_3942_1956# 0.06fF
C879 w_3634_1595# b2 0.08fF
C880 a_3942_1715# vdd 0.55fF
C881 w_4149_1483# a_4162_1462# 0.11fF
C882 a_4092_1326# a_3827_1462# 0.06fF
C883 w_3765_1470# vdd 0.06fF
C884 a_3892_1489# a_3942_1496# 0.08fF
C885 a_3827_1239# b4 0.07fF
C886 w_4402_1235# clk 0.08fF
C887 a_3942_1715# a_3892_1489# 0.36fF
C888 w_3554_1148# a_3578_1155# 0.03fF
C889 w_3548_1759# a_3572_1766# 0.03fF
C890 cin a_4029_1737# 0.33fF
C891 w_3624_1448# a3 0.08fF
C892 a_4029_1495# a_4074_1474# 0.04fF
C893 a_3778_1456# gnd 0.24fF
C894 a4 b4 0.73fF
C895 w_3804_1969# a_3817_1975# 0.16fF
C896 x1 clk 0.03fF
C897 a_3827_1239# a_4238_1414# 0.22fF
C898 w_4149_1483# a_4108_1494# 0.06fF
C899 w_4061_1488# a_4029_1495# 0.06fF
C900 p4 a_4277_1473# 0.45fF
C901 w_4095_1488# a_3942_1496# 0.06fF
C902 w_3879_1510# vdd 0.11fF
C903 a_4029_1714# a_4074_1693# 0.04fF
C904 w_4195_1897# p2 0.02fF
C905 w_3804_1509# a_3827_1462# 0.02fF
C906 a_3942_1956# a_3942_1715# 0.14fF
C907 gnd Gnd 46.76fF
C908 a_3560_953# Gnd 0.10fF
C909 clk Gnd 14.12fF
C910 a_3477_953# Gnd 0.10fF
C911 a_3386_948# Gnd 0.68fF
C912 a_3580_1017# Gnd 0.60fF
C913 a_3497_985# Gnd 0.80fF
C914 a_3366_1017# Gnd 0.04fF
C915 vdd Gnd 40.92fF
C916 y4 Gnd 0.76fF
C917 a_3558_1091# Gnd 0.10fF
C918 a_3384_1086# Gnd 0.68fF
C919 a_3578_1155# Gnd 0.60fF
C920 a_3495_1123# Gnd 0.80fF
C921 a_3364_1155# Gnd 0.04fF
C922 x4 Gnd 0.76fF
C923 a_4600_1220# Gnd 0.10fF
C924 a_4517_1220# Gnd 0.10fF
C925 cout Gnd 0.24fF
C926 a_4426_1215# Gnd 0.68fF
C927 a_4620_1284# Gnd 0.60fF
C928 a_4220_1223# Gnd 0.22fF
C929 a_4187_1242# Gnd 0.31fF
C930 a_4537_1252# Gnd 0.61fF
C931 a_4406_1284# Gnd 0.04fF
C932 a_4153_1236# Gnd 0.22fF
C933 a_4071_1251# Gnd 0.25fF
C934 a_4026_1272# Gnd 0.25fF
C935 a_3942_1273# Gnd 0.69fF
C936 a_4105_1271# Gnd 0.34fF
C937 p5 Gnd 1.37fF
C938 a_4214_1232# Gnd 0.57fF
C939 a_4122_1302# Gnd 0.99fF
C940 a_3778_1233# Gnd 0.49fF
C941 a_3817_1292# Gnd 0.06fF
C942 b4 Gnd 4.06fF
C943 a_3778_1288# Gnd 0.49fF
C944 a_3549_1253# Gnd 0.10fF
C945 a_3466_1253# Gnd 0.10fF
C946 a_4233_1306# Gnd 0.22fF
C947 a_4166_1305# Gnd 0.22fF
C948 a_4088_1301# Gnd 0.22fF
C949 a4 Gnd 3.63fF
C950 a_3375_1248# Gnd 0.68fF
C951 a_3569_1317# Gnd 0.60fF
C952 a_3486_1285# Gnd 0.80fF
C953 a_3892_1266# Gnd 1.09fF
C954 a_3355_1317# Gnd 0.04fF
C955 a_4200_1306# Gnd 0.25fF
C956 a_4026_1295# Gnd 0.91fF
C957 y3 Gnd 0.76fF
C958 a_4603_1410# Gnd 0.10fF
C959 a_4520_1410# Gnd 0.10fF
C960 s4 Gnd 0.24fF
C961 a_4429_1405# Gnd 0.06fF
C962 a_4623_1474# Gnd 0.60fF
C963 a_4540_1442# Gnd 0.61fF
C964 a_4409_1474# Gnd 0.04fF
C965 a_4238_1414# Gnd 0.49fF
C966 a_4277_1473# Gnd 0.06fF
C967 p4 Gnd 1.23fF
C968 a_3827_1239# Gnd 3.69fF
C969 a_4238_1469# Gnd 0.49fF
C970 a_3548_1400# Gnd 0.10fF
C971 a_4196_1468# Gnd 1.25fF
C972 a_4162_1462# Gnd 0.22fF
C973 a_4074_1474# Gnd 0.25fF
C974 a_4029_1495# Gnd 0.25fF
C975 a_3942_1496# Gnd 3.33fF
C976 a_4108_1494# Gnd 0.35fF
C977 a_3374_1395# Gnd 0.68fF
C978 a_3568_1464# Gnd 0.60fF
C979 a_3485_1432# Gnd 0.80fF
C980 a_3354_1464# Gnd 0.04fF
C981 x3 Gnd 0.76fF
C982 a_4124_1525# Gnd 1.09fF
C983 a_3778_1456# Gnd 0.49fF
C984 a_3817_1515# Gnd 0.06fF
C985 b3 Gnd 4.27fF
C986 a_3778_1511# Gnd 0.49fF
C987 a_4090_1524# Gnd 0.22fF
C988 a_4029_1518# Gnd 0.59fF
C989 a3 Gnd 3.57fF
C990 a_3892_1489# Gnd 3.48fF
C991 a_3558_1547# Gnd 0.10fF
C992 a_3475_1547# Gnd 0.10fF
C993 a_3384_1542# Gnd 0.68fF
C994 a_3578_1611# Gnd 0.60fF
C995 a_4603_1623# Gnd 0.10fF
C996 a_4520_1623# Gnd 0.10fF
C997 s3 Gnd 0.24fF
C998 a_4429_1618# Gnd 0.68fF
C999 a_3495_1579# Gnd 0.80fF
C1000 a_4623_1687# Gnd 0.60fF
C1001 a_3364_1611# Gnd 0.04fF
C1002 y2 Gnd 0.76fF
C1003 a_4540_1655# Gnd 0.61fF
C1004 a_4409_1687# Gnd 0.04fF
C1005 p3 Gnd 1.22fF
C1006 a_4241_1633# Gnd 0.49fF
C1007 a_4280_1692# Gnd 0.06fF
C1008 a_3827_1462# Gnd 3.69fF
C1009 a_4241_1688# Gnd 0.49fF
C1010 a_4197_1687# Gnd 1.26fF
C1011 a_4163_1681# Gnd 0.22fF
C1012 a_4074_1693# Gnd 0.25fF
C1013 a_4029_1714# Gnd 0.25fF
C1014 a_3942_1715# Gnd 3.32fF
C1015 a_4092_1326# Gnd 4.37fF
C1016 a_4128_1744# Gnd 1.09fF
C1017 a_3778_1675# Gnd 0.49fF
C1018 a_3817_1734# Gnd 0.06fF
C1019 b2 Gnd 3.75fF
C1020 a_3778_1730# Gnd 0.49fF
C1021 a_4094_1743# Gnd 0.22fF
C1022 a_4029_1737# Gnd 1.19fF
C1023 a_3552_1702# Gnd 0.10fF
C1024 a2 Gnd 3.10fF
C1025 a_3378_1697# Gnd 0.68fF
C1026 a_3572_1766# Gnd 0.60fF
C1027 a_3892_1708# Gnd 3.51fF
C1028 a_3489_1734# Gnd 0.80fF
C1029 a_3358_1766# Gnd 0.04fF
C1030 x2 Gnd 0.76fF
C1031 a_4593_1876# Gnd 0.10fF
C1032 a_4510_1876# Gnd 0.10fF
C1033 s2 Gnd 0.24fF
C1034 a_4419_1871# Gnd 0.68fF
C1035 a_4613_1940# Gnd 0.60fF
C1036 a_4208_1903# Gnd 0.06fF
C1037 a_3551_1853# Gnd 0.10fF
C1038 a_3468_1853# Gnd 0.10fF
C1039 a_4530_1908# Gnd 0.80fF
C1040 a_4399_1940# Gnd 0.04fF
C1041 p2 Gnd 1.85fF
C1042 a_4169_1899# Gnd 0.49fF
C1043 a_3827_1681# Gnd 3.60fF
C1044 a_4169_1954# Gnd 0.49fF
C1045 a_4092_1986# Gnd 5.54fF
C1046 a_3377_1848# Gnd 0.68fF
C1047 a_3571_1917# Gnd 0.60fF
C1048 a_3488_1885# Gnd 0.80fF
C1049 a_3357_1917# Gnd 0.04fF
C1050 y1 Gnd 0.76fF
C1051 a_3942_1956# Gnd 3.86fF
C1052 a_4068_1966# Gnd 0.22fF
C1053 a_4034_1960# Gnd 0.22fF
C1054 a_3778_1916# Gnd 0.49fF
C1055 a_3817_1975# Gnd 0.06fF
C1056 b1 Gnd 3.17fF
C1057 a_3778_1971# Gnd 0.49fF
C1058 a_4038_1976# Gnd 1.20fF
C1059 a_3892_1949# Gnd 3.42fF
C1060 a_3544_2006# Gnd 0.10fF
C1061 a_4557_2075# Gnd 0.10fF
C1062 a_4474_2075# Gnd 0.10fF
C1063 s1 Gnd 0.24fF
C1064 a_4383_2070# Gnd 0.68fF
C1065 a_4181_2077# Gnd 0.06fF
C1066 a1 Gnd 3.44fF
C1067 a_3370_2001# Gnd 0.68fF
C1068 a_3564_2070# Gnd 0.60fF
C1069 a_3481_2038# Gnd 0.80fF
C1070 a_4577_2139# Gnd 0.60fF
C1071 a_3350_2070# Gnd 0.04fF
C1072 x1 Gnd 0.76fF
C1073 a_4494_2107# Gnd 0.80fF
C1074 a_4363_2139# Gnd 0.04fF
C1075 a_4142_2073# Gnd 0.49fF
C1076 a_3827_1922# Gnd 3.84fF
C1077 a_4142_2128# Gnd 0.49fF
C1078 cin Gnd 7.03fF
C1079 p1 Gnd 1.49fF
C1080 w_3636_1001# Gnd 1.22fF
C1081 w_3362_968# Gnd 0.27fF
C1082 w_3556_1010# Gnd 1.33fF
C1083 w_3473_1021# Gnd 1.33fF
C1084 w_3342_1010# Gnd 2.15fF
C1085 w_3634_1139# Gnd 1.22fF
C1086 w_3360_1106# Gnd 0.27fF
C1087 w_3554_1148# Gnd 1.33fF
C1088 w_3471_1159# Gnd 1.33fF
C1089 w_3340_1148# Gnd 2.15fF
C1090 w_4676_1268# Gnd 1.22fF
C1091 w_4402_1235# Gnd 0.27fF
C1092 w_4596_1277# Gnd 0.55fF
C1093 w_4513_1288# Gnd 1.33fF
C1094 w_4382_1277# Gnd 2.15fF
C1095 w_4207_1244# Gnd 1.81fF
C1096 w_4013_1221# Gnd 1.23fF
C1097 w_4140_1257# Gnd 1.81fF
C1098 w_4092_1265# Gnd 0.82fF
C1099 w_4058_1265# Gnd 0.58fF
C1100 w_3929_1267# Gnd 0.82fF
C1101 w_3765_1247# Gnd 0.58fF
C1102 w_4075_1295# Gnd 1.40fF
C1103 w_4153_1299# Gnd 1.40fF
C1104 w_4220_1300# Gnd 1.40fF
C1105 w_4013_1316# Gnd 1.23fF
C1106 w_3879_1287# Gnd 1.23fF
C1107 w_3804_1286# Gnd 2.28fF
C1108 w_3765_1302# Gnd 0.58fF
C1109 w_3625_1301# Gnd 1.22fF
C1110 w_3351_1268# Gnd 0.27fF
C1111 w_3545_1310# Gnd 1.33fF
C1112 w_3462_1321# Gnd 1.33fF
C1113 w_3331_1310# Gnd 2.15fF
C1114 w_4679_1458# Gnd 1.22fF
C1115 w_4405_1425# Gnd 1.74fF
C1116 w_4225_1428# Gnd 0.58fF
C1117 w_4599_1467# Gnd 0.55fF
C1118 w_4516_1478# Gnd 1.33fF
C1119 w_4385_1467# Gnd 2.15fF
C1120 w_4016_1444# Gnd 1.23fF
C1121 w_4264_1467# Gnd 2.28fF
C1122 w_4225_1483# Gnd 0.58fF
C1123 w_4149_1483# Gnd 1.81fF
C1124 w_4095_1488# Gnd 0.82fF
C1125 w_4061_1488# Gnd 0.58fF
C1126 w_3929_1490# Gnd 0.82fF
C1127 w_3765_1470# Gnd 0.58fF
C1128 w_3624_1448# Gnd 1.22fF
C1129 w_3350_1415# Gnd 1.74fF
C1130 w_3544_1457# Gnd 1.33fF
C1131 w_3461_1468# Gnd 1.33fF
C1132 w_3330_1457# Gnd 2.15fF
C1133 w_4077_1518# Gnd 1.40fF
C1134 w_4016_1539# Gnd 1.23fF
C1135 w_3879_1510# Gnd 1.23fF
C1136 w_3804_1509# Gnd 2.28fF
C1137 w_3765_1525# Gnd 0.58fF
C1138 w_3634_1595# Gnd 1.22fF
C1139 w_3360_1562# Gnd 0.27fF
C1140 w_3554_1604# Gnd 1.33fF
C1141 w_4679_1671# Gnd 1.22fF
C1142 w_4405_1638# Gnd 0.27fF
C1143 w_3471_1615# Gnd 1.33fF
C1144 w_3340_1604# Gnd 2.15fF
C1145 w_4228_1647# Gnd 0.58fF
C1146 w_4599_1680# Gnd 0.55fF
C1147 w_4516_1691# Gnd 1.33fF
C1148 w_4385_1680# Gnd 2.15fF
C1149 w_4016_1663# Gnd 1.23fF
C1150 w_4267_1686# Gnd 2.28fF
C1151 w_4228_1702# Gnd 0.58fF
C1152 w_4150_1702# Gnd 1.81fF
C1153 w_4095_1707# Gnd 0.82fF
C1154 w_4061_1707# Gnd 0.58fF
C1155 w_3929_1709# Gnd 0.82fF
C1156 w_3765_1689# Gnd 0.58fF
C1157 w_4081_1737# Gnd 1.40fF
C1158 w_4016_1758# Gnd 1.23fF
C1159 w_3879_1729# Gnd 1.23fF
C1160 w_3804_1728# Gnd 2.28fF
C1161 w_3765_1744# Gnd 0.58fF
C1162 w_3628_1750# Gnd 1.22fF
C1163 w_3354_1717# Gnd 1.74fF
C1164 w_3548_1759# Gnd 1.33fF
C1165 w_3465_1770# Gnd 1.33fF
C1166 w_3334_1759# Gnd 2.15fF
C1167 w_4669_1924# Gnd 1.22fF
C1168 w_4395_1891# Gnd 0.27fF
C1169 w_4156_1893# Gnd 0.58fF
C1170 w_4589_1933# Gnd 1.33fF
C1171 w_4506_1944# Gnd 1.33fF
C1172 w_4375_1933# Gnd 2.15fF
C1173 w_4195_1897# Gnd 2.28fF
C1174 w_4156_1948# Gnd 0.58fF
C1175 w_3929_1950# Gnd 0.82fF
C1176 w_3765_1930# Gnd 0.58fF
C1177 w_3627_1901# Gnd 1.22fF
C1178 w_3353_1868# Gnd 0.27fF
C1179 w_3547_1910# Gnd 1.33fF
C1180 w_3464_1921# Gnd 1.33fF
C1181 w_3333_1910# Gnd 2.15fF
C1182 w_4021_1981# Gnd 2.63fF
C1183 w_3879_1970# Gnd 1.23fF
C1184 w_3804_1969# Gnd 2.28fF
C1185 w_3765_1985# Gnd 0.58fF
C1186 w_4633_2123# Gnd 1.22fF
C1187 w_4359_2090# Gnd 0.27fF
C1188 w_4129_2067# Gnd 0.58fF
C1189 w_3620_2054# Gnd 1.22fF
C1190 w_3346_2021# Gnd 1.74fF
C1191 w_3540_2063# Gnd 1.33fF
C1192 w_3457_2074# Gnd 1.33fF
C1193 w_3326_2063# Gnd 2.15fF
C1194 w_4168_2071# Gnd 2.28fF
C1195 w_4553_2132# Gnd 1.33fF
C1196 w_4470_2143# Gnd 1.33fF
C1197 w_4339_2132# Gnd 2.15fF
C1198 w_4129_2122# Gnd 0.58fF

.tran 100p 500n
.control

run
plot v(clk) 2+v(x1) 4+v(x2) 6+v(x3) 8+v(x4) 10+v(y1) 12+v(y2) 14+v(y3) 16+v(y4)
plot v(clk) 2+v(s1) 4+v(s2) 6+v(s3) 8+v(s4) 10+v(cout)
.endc