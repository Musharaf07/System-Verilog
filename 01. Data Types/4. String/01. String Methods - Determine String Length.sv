// String Methods
// Determine String Length
module string_datatype;
  string s, s1, s2;
  
  initial begin
    s = "Mohammed Ammar";
    s1 = "Deepak Patwa";
    s2 = "Abdul\0Kalam"; 
    
    $display("String length of s  = %0d", s.len());
    $display("String length of s1 = %0d", s1.len());
    $display("String lenght of s2 = %0d", s2.len());
    
  end
endmodule

// String length of s  = 14
// String length of s1 = 12
// String lenght of s2 = 10
