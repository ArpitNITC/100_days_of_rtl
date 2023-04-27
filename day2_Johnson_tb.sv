module johnson_tb();
  
  wire[3:0] out;
  reg clk,rst;
  
  johnson DUT(out,clk,rst);
  
  initial begin
    $monitor($time, "clock=%b  , output=%b", clk , out);
    $dumpfile("johnson.vcd");
    $dumpvars();
    #100 $finish;
  end
  
  initial begin
    clk=0;
    forever #5 clk= ~clk;
  end
  
  initial begin
    rst=1;
    #6 rst=0;
  end
  
endmodule
