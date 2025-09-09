// 2 State Data type
module bit_datatype;
  bit a;
  bit [3:0] b;
  bit [3:0] c;
  
  
  initial begin
    $display("Before Initialization, Default Values of a = %0b , b = %0b, c = %0b",a,b,c);
    
    a = 1'b1;
    b = 4'b1011;
    c = a + b;
    
    $display (" After Initialization, Value of a = %0b , b = %0b, c = %0b",a,b,c);
  end
endmodule

/* # KERNEL: Before Initialization, Default Values of a = 0 , b = 0, c = 0
# KERNEL:  After Initialization, Value of a = 1 , b = 1011, c = 1100 */
