`ifndef FINAL_V
`define FINAL_V

`timescale 1ns / 1ps

`include "carry_look_ahead.v"
`include "tspc.v"

module toplevel(clk, a, b, ci, co, s);
  
  input clk;
  input [4:1] a;  
  input [4:1] b;  
  input ci;   
  
  output co;      
  output [4:1] s; 

  wire a1_ff, a2_ff, a3_ff, a4_ff;
  wire b1_ff, b2_ff, b3_ff, b4_ff;

  wire ci_ff;
  wire co_temp;

  wire s1_temp, s2_temp, s3_temp, s4_temp;

  flipflop_a ff_ci(.D_in(ci), .clk_signal(clk), .Q_out(ci_ff));
  flipflop_a ff_a1(.D_in(a[1]), .clk_signal(clk), .Q_out(a1_ff));
  flipflop_a ff_a2(.D_in(a[2]), .clk_signal(clk), .Q_out(a2_ff));
  flipflop_a ff_a3(.D_in(a[3]), .clk_signal(clk), .Q_out(a3_ff));
  flipflop_a ff_a4(.D_in(a[4]), .clk_signal(clk), .Q_out(a4_ff));
  flipflop_a ff_b1(.D_in(b[1]), .clk_signal(clk), .Q_out(b1_ff));
  flipflop_a ff_b2(.D_in(b[2]), .clk_signal(clk), .Q_out(b2_ff));
  flipflop_a ff_b3(.D_in(b[3]), .clk_signal(clk), .Q_out(b3_ff));
  flipflop_a ff_b4(.D_in(b[4]), .clk_signal(clk), .Q_out(b4_ff));


  carry_look_ahead cla_inst(
    .a1(a1_ff), .a2(a2_ff), .a3(a3_ff), .a4(a4_ff),
    .b1(b1_ff), .b2(b2_ff), .b3(b3_ff), .b4(b4_ff),
    .cin(ci_ff),
    .o1(s1_temp), .o2(s2_temp), .o3(s3_temp), .o4(s4_temp),
    .cout(co_temp)
  );

  flipflop_b ff_s1(.D_input(s1_temp), .clk_in(clk), .Q_output(s[1]));
  flipflop_b ff_s2(.D_input(s2_temp), .clk_in(clk), .Q_output(s[2]));
  flipflop_b ff_s3(.D_input(s3_temp), .clk_in(clk), .Q_output(s[3]));
  flipflop_b ff_s4(.D_input(s4_temp), .clk_in(clk), .Q_output(s[4]));
  flipflop_b ff_co(.D_input(co_temp), .clk_in(clk), .Q_output(co));

endmodule
`endif
