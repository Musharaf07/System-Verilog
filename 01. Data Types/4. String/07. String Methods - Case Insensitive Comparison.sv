// String Methods
// Case Insensitive Comparison
module string_icompare;
  string s, s1, s2;
  
  initial begin
    s = "Jeeva";
    s1 = "jeeva";
    s2 = "Babu";
    
    $display("ICompare s & s1 = %0d", s.icompare(s1));
    $display("ICompare s & s2 = %0d", s.icompare(s2));
    $display("ICompare s2 & s = %0d", s2.icompare(s));
    
  end
endmodule
    
// ICompare s & s1 = 0
// ICompare s & s2 = 1
// ICompare s2 & s = -1
