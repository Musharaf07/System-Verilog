//Weighted Distribtion
class Packet;  
  rand bit [3:0] addr, data;  

  constraint Packt1 { addr dist { 1 := 40, [2:5] := 30, 6 := 80, 7 := 20 }; }  //:= Weighted Random Distribution Operator
  constraint Packt2 { data dist { 1 :/ 40, [2:5] :/ 80, 6 :/ 40, 7 :/ 10 }; }  //:/ Probability Based Distribution Operator
  
endclass  

module Packetn;  
  initial begin 
    Packet p1;  
    p1 = new();  

    for (int i = 0; i < 10; i++) begin  
      p1.randomize();  
      $display("iteration %0d --> addr = %0d, data = %0d", i, p1.addr, p1.data);  
    end  
  end  
endmodule
