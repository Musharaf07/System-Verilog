// 2 State Data type
module byte_datatype;
  byte a,b,c;
  
  
  initial begin
    $display("Before Initialization, Default Values of a = %0b , b = %0b, c = %0b",a,b,c);
    
    a = 8'b10101110;
    b = 8'b10000111;
    c = a - b;
    
    $display (" After Initialization, Value of a = %0d , b = %0d, c = %0d",a,b,c);
  end
endmodule

/* # KERNEL: Before Initialization, Default Values of a = 0 , b = 0, c = 0
# KERNEL:  After Initialization, Value of a = -82 , b = -121, c = 39 */
