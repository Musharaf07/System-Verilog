// Dynamic Array
// size()
module dynamic_array;
  int a[];
  
  initial begin
    a = new[8];
    
    foreach(a[i])
      a[i] = i+3;
    
    $display (" Size of Array :%0d ",a.size());
    $display (" ------ Value of a[] ----- ");
    
    for (int i = 0; i < a.size(); i++) begin
      $display(" Value of a[i] : %0d ",a[i]);
    end
  end
endmodule
