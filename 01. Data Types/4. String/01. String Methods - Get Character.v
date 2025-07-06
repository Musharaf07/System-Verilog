// String Methods
// Get Character
module string_getcharacter;
  string s, s1, s2;
  
  initial begin
    s = "Akshay";
    s1 = "Kumar";
    s2 = {s,s1};
    
    $display("3rd Character of String s = %s",s.getc(3));
    $display("1st Character of String s1 = %c",s1.getc(1));
    $display("10th Character of String s2 = %c",s2.getc(s2.len()-1));
    
  end
 endmodule

// 3rd Character of String s = h
// 1st Character of String s1 = u
// 10th Character of String s2 = r
