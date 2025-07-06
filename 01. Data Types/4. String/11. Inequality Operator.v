// String Operators
// Inequality Operator
module string_inequality;
  string S, S1;
  
  initial begin
    S = "Shabaaz";
    S1 = "Khan";
    
    if( S != S1 )
      $display ("S and S1 are not Equal");
    else
      $display ("S and S1 are Equal");
    
    
  end
endmodule
    
// S and S1 are not Equal
