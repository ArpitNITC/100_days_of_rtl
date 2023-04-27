module johnson(out,clock,reset);
  
  output wire[3:0] out;
  input clock,reset;
  wire q1,q2,q3,q4;
  
  dff D1(q1,~q4,clock,reset);
  dff D2(q2,q1,clock,reset);
  dff D3(q3,q2,clock,reset);
  dff D4(q4,q3,clock,reset);
  
  assign out={q1,q2,q3,q4};
  
endmodule
        

module dff(q,d,clock,reset);
  
  output reg q;
  input d,clock,reset;
  
  always@(posedge clock)
    begin
      if(reset)
        q<=0;
      else
        q<=d;
    end

endmodule
