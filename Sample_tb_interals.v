`timescale 1ns/1ps
module tb_simple_cpu;
  reg clk, reset;
  simple_cpu uut (
    .clk(clk),
    .reset(reset)
  );
  always #5 clk = ~clk;
  initial begin
    //  $dumpfile("cpu_wave.vcd");
    // $dumpvars(0, tb_simple_cpu);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #200 $finish;
  end
  initial begin
    $monitor("Time=%0t | PC=%0d | reg1=%0d | reg2=%0d | halt=%b",$time, uut.pc, uut.reg1, uut.reg2, uut.halt);
  end
endmodule
