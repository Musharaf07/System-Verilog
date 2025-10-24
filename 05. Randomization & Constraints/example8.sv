// Write a constraint for the 8-bit variable that provides distribution 80% for range 0-100 and the remaining 20% for range 101-255. //Declare a class "Generic" with data properties var1, var2, var3, var4 and 

class packet;
  rand bit [7:0] a;
  
  constraint cont_1 { a dist {[0:100] :/ 80, [101:255] :/ 20};}
endclass

module packets1;
  packet p1;
  initial begin
    p1 = new();
    
    repeat(100) begin
      if(p1.randomize())begin
        $display(" a = %0d ",p1.a);
      end
      else
        $display("Randomization is failed");
    end
  end
endmodule
/*
 a = 99 
 a = 29 
 a = 90 
 a = 80 
 a = 52 
 a = 47 
 a = 78 
 a = 98 
 a = 85 
 a = 221 
 a = 241 
 a = 81 
 a = 65 
 a = 185 
 a = 245 
 a = 2 
 a = 8 
 a = 7 
 a = 25 
 a = 79 
 a = 88 
 a = 100 
 a = 80 
 a = 33 
 a = 196 
 a = 85 
 a = 16 
 a = 18 
 a = 62 
 a = 44 
 a = 0 
 a = 58 
 a = 253 
 a = 28 
 a = 99 
 a = 133 
 a = 117 
 a = 45 
 a = 187 
 a = 93 
 a = 39 
 a = 175 
 a = 108 
 a = 206 
 a = 46 
 a = 84 
 a = 97 
 a = 42 
 a = 246 
 a = 17 
 a = 85 
 a = 85 
 a = 96 
 a = 176 
 a = 64 
 a = 114 
 a = 41 
 a = 92 
 a = 24 
 a = 68 
 a = 71 
 a = 39 
 a = 57 
 a = 41 
 a = 99 
 a = 172 
 a = 13 
 a = 74 
 a = 73 
 a = 28 
 a = 97 
 a = 85 
 a = 69 
 a = 88 
 a = 26 
 a = 1 
 a = 41 
 a = 78 
 a = 88 
 a = 60 
 a = 195 
 a = 22 
 a = 17 
 a = 30 
 a = 50 
 a = 130 
 a = 52 
 a = 7 
 a = 71 
 a = 61 
 a = 83 
 a = 62 
 a = 15 
 a = 99 
 a = 188 
 a = 64 
 a = 251 
 a = 20 
 a = 116 
 a = 115 
*/
