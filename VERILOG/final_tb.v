`timescale 1ns / 1ps

`include "final.v"

module tb;

  reg clk;
  reg ci;                 // Carry-in (renamed from cin)
  reg [4:1] a, b;         // Inputs (renamed from x, y)

  wire co;                // Carry-out (renamed from cout)
  wire [4:1] s;           // Sum outputs (renamed from z)

  // Instantiate the top-level module
  toplevel dut(
    .clk  (clk ),
    .a    (a   ),         // Aligned to input `a` in final.v
    .b    (b   ),         // Aligned to input `b` in final.v
    .ci   (ci  ),         // Aligned to input `ci` in final.v
    .co   (co  ),         // Aligned to output `co` in final.v
    .s    (s   )          // Aligned to output `s` in final.v
  );

  // Clock generation
  always #5 clk = ~clk;

  // Initialize signals and apply test cases
  initial begin 
    // Initialize waveform dump for VCD file
    $dumpfile("test.vcd");
    $dumpvars(0, tb);

    // Initialize input signals
    clk = 0;

    // Apply 15 carefully chosen test cases
    #10 a = 4'b0000; b = 4'b0000; ci = 0;  // Case 1: All zeros
    #10 a = 4'b0001; b = 4'b0001; ci = 0;  // Case 2: Simple addition
    #10 a = 4'b0010; b = 4'b0011; ci = 1;  // Case 3: Addition with carry-in
    #10 a = 4'b1111; b = 4'b0000; ci = 0;  // Case 4: Max a, zero b
    #10 a = 4'b0000; b = 4'b1111; ci = 0;  // Case 5: Zero a, max b
    #10 a = 4'b1111; b = 4'b1111; ci = 0;  // Case 6: Max a and b, no carry-in
    #10 a = 4'b1111; b = 4'b1111; ci = 1;  // Case 7: Max a and b, with carry-in
    #10 a = 4'b1000; b = 4'b1000; ci = 0;  // Case 8: Test overflow
    #10 a = 4'b1000; b = 4'b1000; ci = 1;  // Case 9: Overflow with carry-in
    #10 a = 4'b0101; b = 4'b0011; ci = 0;  // Case 10: Intermediate values
    #10 a = 4'b0101; b = 4'b0011; ci = 1;  // Case 11: Intermediate with carry-in
    #10 a = 4'b0110; b = 4'b1001; ci = 0;  // Case 12: Random combination
    #10 a = 4'b0110; b = 4'b1001; ci = 1;  // Case 13: Random with carry-in
    #10 a = 4'b0111; b = 4'b0111; ci = 0;  // Case 14: Symmetrical
    #10 a = 4'b0111; b = 4'b0111; ci = 1;  // Case 15: Symmetrical with carry-in

    // End simulation after 15 cases
    #50 $finish;
  end

  // Monitor the signals during simulation
  initial begin
    $monitor("clk=%b a=%b b=%b ci=%b co=%b s=%b", clk, a, b, ci, co, s);
  end

endmodule
