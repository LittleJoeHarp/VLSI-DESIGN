`timescale 1ns / 1ps

module flipflop_testbench;

  reg data_input;
  reg clock_signal;
	
  wire output_q1;
  wire output_qbar1;
  wire output_q2;
  wire output_qbar2;

  flipflop_b flipflop_inst1 (
    .D_input(data_input),
    .clk_in(clock_signal),
    .Q_output(output_q1),
    .Qbar_output(output_qbar1)
  );

  flipflop_a flipflop_inst2 (
    .D_in(data_input),
    .clk_signal(clock_signal),
    .Q_out(output_q2),
    .Qbar_out(output_qbar2)
  );
  
  initial begin 
    $dumpfile("flipflop_wave.vcd");
    $dumpvars(0, flipflop_testbench);
    clock_signal = 0;
    data_input = 0;

    #10 clock_signal = ~clock_signal;
        data_input = 1;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
        data_input = 0;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
        data_input = 1;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
        data_input = 1;
    #10 clock_signal = ~clock_signal;
        data_input = 0;
    #10 clock_signal = ~clock_signal;
        data_input = 1;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
    #10 clock_signal = ~clock_signal;
  end 
  
  initial 
    $monitor("D=%d clk=%d Q1=%d Qbar1=%d Q2=%d Qbar2=%d", data_input, clock_signal, output_q1, output_qbar1, output_q2, output_qbar2);
endmodule
