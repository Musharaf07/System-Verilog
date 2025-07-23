// Static Array
//Unpacked Array 
module unpacked_array;
  int dt[4];
  int dt1[6];
  
  initial begin
    dt = '{1,3,6,9};
    dt1 = '{2,4,6,8,10,12};
    
    $display("Value of dt[1] : %0d",dt[1]);
    $display("Value of dt1[4] : %0d",dt1[4]);  
  
    $display("-----Value of dt-----");
    for(int i = 0; i <=3; i++) begin
      $display(" Value of dt[%0d] = %0d",i,dt[i]);
    end
    
    $display("-----Value of dt1-----");
    for (int i = 0; i <=5; i++)begin
      $display(" Value of dt1[%0d] = %0d",i,dt1[i]);
      end
  end
endmodule
