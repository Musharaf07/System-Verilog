// String Methods
// Converting to Lowercase
module string_tolowercase;
  string s, s1, s2;
  
  initial begin
    s = "Jay";
    s1 = "Mohan";
    s2 = {s,s1.getc(s1.len()-2)};
    $display("Lower Case of String s = %s",s.tolower());
    s1.putc(3,"i");
    $display("Lower Case of String s1 = %s",s1.tolower());
    $display("Lower Case of String s2 = %s",s2.tolower());
    
  end
 endmodule

// Lower Case of String s = jay
// Lower Case of String s1 = mohin
// Lower Case of String s2 = jaya
