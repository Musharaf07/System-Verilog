// Four State Data Types
module four_state_datatype_wire;
  reg[2:0] x;
  logic [2:0] y;
  wire a ;
  wire [5:0] b;
  
  assign b = x + y;
  initial begin
    
    $display("Before Initializing, Default value of wire a = %0b, b = %0b",a,b);
    
    x = 3'd6;
    y = 3'd5;
    $display("After Initializing Values of wire");
    $display("a = %0b, b = %0b", a,b);
    
    x = 3'd5;
    y = 3'hx;
    $display("a = %0b, b = %0b", a,b);
   
    x = 3'hz;
    y = 3'd3;
    $display("a = %0b, b = %0b", a,b);
         
  end
endmodule

/*Before Initializing, Default value of wire a = z, b = xxxxxx
After Initializing Values of wire
a = z, b = 1011
a = z, b = xxxxxx
a = z, b = xxxxxx */
