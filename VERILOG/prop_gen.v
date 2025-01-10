`ifndef PROP_GEN_V
`define PROP_GEN_V

`timescale 1ns / 1ps

module prop_gen(x, y, p, g, k);

  input x, y;
  output p, g, k;

  nor nor_inst1(p, x, y);
  nand nand_inst1(g, x, y);
  xor xor_inst1(k, x, y);

endmodule
`endif
