// Four State Data Types
module four_state_datatype_real;
  real a ;
  
  initial begin
    
    $display("Default value of real a = %0f",a);
    
    a = 5.26474;
    $display("After Initializing Values of real");
    $display("a = %f", a);

    a = 8.46843;
    $display("a = %f", a); 
    
    a = 'hx;
    $display("a = %0f", a);
   
    a = 'hz;
    $display("a = %0f", a);         
    
  end
endmodule

/*Default value of real a = 0.000000
After Initializing Values of real
a = 5.264740
a = 8.468430
a = 0.000000
a = 0.000000*/
