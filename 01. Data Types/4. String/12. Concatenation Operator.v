// String Operators
// Concatenation
module string_Concatenation;
  string S, S1, S2;
  
  initial begin
    S = "Praveen";
    S1 = "Kumar";
    S2 = " VD";
    
    $display (S1,S,{3{S2}});
    
  end
endmodule
    
// KumarPraveen VD VD VD
