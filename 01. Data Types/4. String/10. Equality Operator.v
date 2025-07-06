// String Operators
// Equality Operator
module string_equality;
  string S, S1;
  
  initial begin
    S = "Imthiyaz";
    S1 = "Ahmed";
    
    if( S == S1 )
      $display ("S and S1 are Equal");
    else
      $display ("S and S1 are not Equal");
    
    
  end
endmodule
    
// S and S1 are not Equal
