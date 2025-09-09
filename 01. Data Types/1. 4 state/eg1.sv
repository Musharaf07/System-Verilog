// Four State Data Types
module fout_state_datatype;
  logic a;
  reg b;
  wire c,d;
  
  assign d = a | b;
  
  initial begin
    $display("Default values of Data types before Initializing/n a = %b, b = %b, c = %b, d =%b",a,b,c,d);
    #1;
    a = 1;
    b = 0;
    #1;
    $display("values of Data types after Initializing/n a = %b, b = %b, c = %b, d = %b",a,b,c,d);
    
  end
endmodule

/* # Default values of Data types before Initializing/n a = x, b = x, c = z, d =x
# values of Data types after Initializing/n a = 1, b = 0, c = z, d = 1 */
