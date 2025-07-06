// String Methods
// Create Substring
module string_substring;
  string s, s1, s2;
  
  initial begin
    s = "Sheikh Abrar";
    s1 = "Ahmed";
    s2 = {s,s1};
    
    $display("Substring s = %s",s.substr(1, 5));
    $display("Substring s1 = %s",s1.substr(2, 4));
    $display("Substring s2 = %s",s2.substr(4, 11));
   
  end
 endmodule

// Substring s = heikh
// Substring s1 = med
// Substring s2 = kh Abrar
