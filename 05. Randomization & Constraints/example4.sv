/* 4.)  write a constraint to generate a variable with 0-31 bits should be 1 and 32-61 bits should be 0.  
*/

class packet;
  rand bit [61:0] a;
  constraint const1 { a[31:0] == 32'hFFFFFFFF; a[61:32] == 30'h0;}
endclass

module packetss;
  packet p1;
  initial begin
    p1 = new();
    repeat (3) begin
      if(p1.randomize())
        $display("a =  %b",p1.a);
    end
  end
endmodule

/*
# a =  00000000000000000000000000000011111111111111111111111111111111
# a =  00000000000000000000000000000011111111111111111111111111111111
# a =  00000000000000000000000000000011111111111111111111111111111111
*/
