// String Methods
// Converting to Uppercase
module string_touppercase;
  string s, s1, s2;
  
  initial begin
    s = "Karthi";
    s1 = "Keyan";
    s2 = {s,s1.getc(s.len()-6)};
    s.putc(0,s1.getc(3));
    
    $display("Upper Case of String s = %s",s.toupper());
    $display("Upper Case of String s1 = %s",s1.toupper());
    $display("Upper Case of String s2 = %s",s2.toupper());
    
  end
 endmodule

// Upper Case of String s = AARTHI
// Upper Case of String s1 = KEYAN
// Upper Case of String s2 = KARTHIK
