// Dynamic Array
// new[]
module dynamic_array;
  int a[];
  
  initial begin
    a = new[7];
    a = '{2,4,6,8,1,3,5};
    
    $display (" a[3] : %0d ",a[3]);
    $display (" ------ Value of a[] ----- ");
    
    for (int i = 0; i < a.size(); i++) begin
      $display(" Value of a[i] : %0d ",a[i]);
    end
  end
endmodule
