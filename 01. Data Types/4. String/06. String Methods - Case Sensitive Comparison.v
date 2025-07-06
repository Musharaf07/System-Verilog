// String Methods
// Case Sensitive Comparison
module string_compare;
  string s, s1, s2;
  
  initial begin
    s = "Jeeva";
    s1 = "jeeva";
    s2 = "Jeeva";
    
    $display("Compare s & s1 = %0d", s.compare(s1));
    $display("Compare s & s2 = %0d", s.compare(s2));
    $display("Compare s1 & s = %0d", s1.compare(s));
    
  end
endmodule

// Compare s & s1 = -1
// Compare s & s2 = 0
// Compare s1 & s = 1
