//Virtual Method
class base;
  bit[31:0] data;
  int id;
  
virtual function void display();
    $display("Base : data = %0d, id = %0d",data, id);
  endfunction
endclass

class derived extends base;
  bit[31:0] data;
  int id;
  
  function void display();
    $display("Child : data = %0d, id = %0d",data, id);
  endfunction
endclass

module class_exmple;
  initial begin
    base bs;
    derived der;
    
    der = new();
    bs = der;
    
    der.data = 15;
    der.id = 6;
    
    bs.data = 20;
    bs.id = 3;
    bs.display();
  end
endmodule
    
