// String Methods
// Convert ASCII to Integer
module string_atoi;
  string s, s1;
  
  initial begin
    s = "123_456";
    s1 = "639_978";
    $display("atoi of s = %0d",s.atoi());
    $display("atoi of s1 = %0d",s1.atoi());
    
  end
 endmodule

// atoi of s = 123456
// atoi of s1 = 639978
