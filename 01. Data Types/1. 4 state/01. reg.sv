// Four State Data Types
module four_state_datatype_reg;
  reg a ;
  reg[5:0] b;
  
  initial begin
    
    $display("Before Initializing, Default value of reg a = %0b, b = %0b",a,b);
    
    a = 'b1;
    b = 6'b111101;
    $display("After Initializing Values of reg");
    $display("a = %b, b = %0b", a,b);
    
    a = 'hx;
    b = 6'bx;
    
    $display("a = %b, b = %0b", a,b);
  
    a = 'hz;
    b = 6'hz;
    $display("a = %b, b = %0b", a,b);
        
  end
endmodule

/*Before Initializing, Default value of reg a = x, b = xxxxxx
After Initializing Values of reg
a = 1, b = 111101
a = x, b = xxxxxx
a = z, b = zzzzzz */
