// Randomization
class rnd;
  rand bit[3:0] data1;
  randc bit[3:0] data2;
endclass

module randomization_1;
  rnd rnd1 = new();
  
  initial
    repeat (50) begin
      if(rnd1.randomize()== 1)
        $display(" data1 : %0h, data2 : %0h",rnd1.data1, rnd1.data2);
      else
        $display(" Randomization Failed ");
      // rnd1.randomize();
      // $display(" data1 : %0h, data2 : %0h",rnd1.data1, rnd1.data2);
    end
endmodule
