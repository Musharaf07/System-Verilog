// String Methods
// Replace Character
module string_replacecharacter;
  string s, s1, s2;
  
  initial begin
    s = "Abrar";
    s1 = "Ahmed";
    s2 = {s,s1};
    
    s.putc(1,"s");
    $display("String s = %s",s);
    s1.putc(3,s.getc(3));
    $display("String s1 = %s",s1);
    s2.putc(s2.len()-8,s.getc(1));
    $display("String s2 = %s",s2);
    
  end
 endmodule

// String s = Asrar
// String s1 = Ahmad
// String s2 = AbsarAhmed
