`ifndef CARRY_LOOK_AHEAD_V
`define CARRY_LOOK_AHEAD_V
`timescale 1ns / 1ps

`include "prop_gen.v"
`include "carry_look_ahead_gen.v"

module carry_look_ahead(a1, a2, a3, a4, b1, b2, b3, b4, cin, o1, o2, o3, o4, cout);

  input a1, a2, a3, a4;
  input b1, b2, b3, b4;
  input cin;

  output o1, o2, o3, o4, cout;

  wire p1, p2, p3, p4;
  wire g1, g2, g3, g4;
  wire k1, k2, k3, k4;

  prop_gen pg_inst1 (.x(a1), .y(b1), .p(p1), .g(g1), .k(k1));
  prop_gen pg_inst2 (.x(a2), .y(b2), .p(p2), .g(g2), .k(k2));
  prop_gen pg_inst3 (.x(a3), .y(b3), .p(p3), .g(g3), .k(k3));
  prop_gen pg_inst4 (.x(a4), .y(b4), .p(p4), .g(g4), .k(k4));

  not not_inst1(cinnot, cin);
  or or_inst1(o1_temp, cinnot, p1);
  nand nand_inst1(n1_temp, o1_temp, g1);

  carry_look_ahead_gen clg_inst2 (.p1(p2), .g1(g2), .p0(p1), .g0(g1), .l(l2), .n(n2));
  carry_look_ahead_gen clg_inst3 (.p1(p3), .g1(g3), .p0(p2), .g0(g2), .l(l3), .n(n3));
  carry_look_ahead_gen clg_inst4 (.p1(p4), .g1(g4), .p0(p3), .g0(g3), .l(l4), .n(n4));

  xor xor_inst1(o1, cin, k1);
  xor xor_inst2(o2, n1_temp, k2);

  and and_inst1(o2_temp, cin, l2);
  or or_inst2(c3_temp, o2_temp, n2);
  xor xor_inst3(o3, c3_temp, k3);

  and and_inst2(o3_temp, n1_temp, l3);
  or or_inst3(c4_temp, o3_temp, n3);
  xor xor_inst4(o4, c4_temp, k4);

  nand nand_inst2(po_not, l2, l4);
  and and_inst3(o4_temp, l4, n2);
  nor nor_inst2(go_not, o4_temp, n4);

  not not_inst2(go, go_not);
  not not_inst3(po, po_not);

  and and_inst4(o5_temp, cin, po);
  or or_inst4(cout, go, o5_temp);

endmodule
`endif
