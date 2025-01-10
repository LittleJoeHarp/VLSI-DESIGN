`ifndef CARRY_LOOK_AHEAD_GEN_V
`define CARRY_LOOK_AHEAD_GEN_V

`timescale 1ns / 1ps

module carry_look_ahead_gen(p1, g1, p0, g0, l, n);

  input p1, g1, p0, g0;
  output l, n;

  nor nor_inst1(l, p1, p0);
  or or_inst1(o_temp, p1, g0);
  nand nand_inst1(n, o_temp, g1);

endmodule
`endif
