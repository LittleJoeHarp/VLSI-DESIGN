`timescale 1ns / 1ps

`include "carry_look_ahead.v"

module carry_look_ahead_tb;
  reg clk;
  reg a1, a2, a3, a4;
  reg b1, b2, b3, b4;
  reg cin;
  wire o1, o2, o3, o4;
  wire cout;

  wire [4:1] a, b, o;

  carry_look_ahead cla_inst (
    .a1   (a1  ),
    .a2   (a2  ),
    .a3   (a3  ),
    .a4   (a4  ),
    .b1   (b1  ),
    .b2   (b2  ),
    .b3   (b3  ),
    .b4   (b4  ),
    .cin  (cin ),
    .o1   (o1  ),
    .o2   (o2  ),
    .o3   (o3  ),
    .o4   (o4  ),
    .cout (cout)
  );

  assign a = {a4, a3, a2, a1};
  assign b = {b4, b3, b2, b1};
  assign o = {o4, o3, o2, o1};

  initial begin
    $dumpfile("test2.vcd");
    $dumpvars(0, carry_look_ahead_tb);
    #5 clk = 0; #5 clk = 1; a4 = 0; a3 = 0; a2 = 0; a1 = 0; b4 = 0; b3 = 0; b2 = 0; b1 = 0; cin = 0;
    #5 clk = 0; #5 clk = 1; a4 = 0; a3 = 0; a2 = 1; a1 = 1; b4 = 0; b3 = 0; b2 = 0; b1 = 1; cin = 0;
    #20 $finish;
  end

  always #5 clk = ~clk;

  initial begin
    $monitor("clk=%b a=%b b=%b cin=%b o=%b cout=%b", clk, a, b, cin, o, cout);
  end

endmodule
