/* 1.)Take a rand variable with array size 10,need to get unique values in each location without using unique keyword and for any of 2 locations we need to get same value?
*/

class packet;
  rand bit [3:0] a[10];
  constraint const1 {
    foreach (a[i]) 
      a[i] == (i % 9); // for only 2 locations to get same value
    //a[i] == (i % 5)  //for any of 2 locations atleast to get same value 
  }
  
endclass

module packets;
  packet p1;
  
  initial begin
    p1 = new();
    
    repeat(1) begin
      if(p1.randomize());
      foreach (p1.a[i]) begin
        $display("a[%0d] = %0d", i, p1.a[i]);
      end
    end
  end
endmodule

/*
a[0] = 0
a[1] = 1
a[2] = 2
a[3] = 3
a[4] = 4
a[5] = 5
a[6] = 6
a[7] = 7
a[8] = 8
a[9] = 0
*/
