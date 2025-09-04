// Four State Data Types
module four_state_datatype_logic;
  logic a ;
  logic[3:0] b;
  
  
  initial begin
    
    $display("Before Initializing Default value of logic a = %0b, b = %0b",a,b);
    
    a = 'b1;
    b = 4'b1011;
    $display("After Initializing Values of logic");
    $display("a = %b, b = %0b", a,b);
    
    a = 'hx;
    b = 4'bx;
    
    $display("a = %b, b = %0b", a,b);
   
    a = 'hz;
    b = 4'hz;
    $display("a = %b, b = %0b", a,b);
    
  end
endmodule

/*Before Initializing Default value of logic a = x, b = xxxx
After Initializing Values of logic
a = 1, b = 1011
a = x, b = xxxx
a = z, b = zzzz*/
