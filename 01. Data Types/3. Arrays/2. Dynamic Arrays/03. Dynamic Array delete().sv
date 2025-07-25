// Dynamic Array
// delete()
module dynamic_array;
  int c[];
  
  initial begin
    c = new[8];
    
    foreach(c[i])
      c[i] = i*5;
    
    $display (" Size of Array Before Delete :%0d ",c.size());
    $display (" ------ Value of c[] ----- ");
    
    for (int i = 0; i < c.size(); i++) begin
      $display(" Value of c[i] : %0d ",c[i]);
    end
    
    c.delete();
    $display (" Size of Array After Delete :%0d ",c.size());
  end
endmodule
