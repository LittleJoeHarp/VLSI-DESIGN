`ifndef FLIPFLOP_V
`define FLIPFLOP_V
`timescale 1ns / 1ps

module flipflop_a(D_in, clk_signal, Q_out, Qbar_out);
  
  input D_in; 
  input clk_signal; 
  output Q_out;
  output Qbar_out;

  wire net_1;
  wire net_2;
  wire net_3;
  wire net_4;
  wire net_5;
  wire net_6;

  not not_gate1 (clk_not, clk_signal);

  not not_gate2 (D_not, D_in);
  nand nand_gate1 (net_1, D_in, clk_not);
  nand nand_gate2 (net_2, D_not, clk_not);
  nand nand_gate3 (net_3, net_1, net_4);
  nand nand_gate4 (net_4, net_2, net_3);
  
  nand nand_gate5 (net_5, net_3, clk_signal);
  nand nand_gate6 (net_6, net_4, clk_signal);
  nand nand_gate7 (Q_out, net_5, Qbar_out);
  nand nand_gate8 (Qbar_out, net_6, Q_out);

endmodule 

module flipflop_b(D_input, clk_in, Q_output, Qbar_output);
  
  input D_input; 
  input clk_in; 
  output Q_output;
  output Qbar_output;

  wire node_1;
  wire node_2;
  wire node_3;
  wire node_4;
  wire node_5;
  wire node_6;

  not not_gate_a (clk_inverted, clk_in);

  not not_gate_b (D_inverted, D_input);
  nand nand_gate_a (node_1, D_input, clk_in);
  nand nand_gate_b (node_2, D_inverted, clk_in);
  nand nand_gate_c (node_3, node_1, node_4);
  nand nand_gate_d (node_4, node_2, node_3);
  
  nand nand_gate_e (node_5, node_3, clk_inverted);
  nand nand_gate_f (node_6, node_4, clk_inverted);
  nand nand_gate_g (Q_output, node_5, Qbar_output);
  nand nand_gate_h (Qbar_output, node_6, Q_output);

endmodule 
`endif

