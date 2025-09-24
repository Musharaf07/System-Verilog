// Class Assignment
class product;
  string    name;
  int       price;
  int       mfg_year;
  
  function new();
    name  = "Car";
    price = 16'd1500;
    mfg_year = 12'd2024;
  endfunction
  
  function void display();
    $display("\t Product Name = %s,\t Product Price = %0d$,\t Product MFG Year = %0d  ", name, price, mfg_year);
  endfunction
endclass

module product_detail;
  product p1;
  product p2;
  
  initial begin
    p1 = new();
    $display("\t P1 Product Details");
    p1.display();
    
    p2 = p1;
    p1.name = "Bike";
    $display("\t P2 Product Details");
    p2.display();
    
    p2.price = 16'd800;
    p2.mfg_year = 12'd2025;
    $display("\t P1 Product Details ");
    p1.display();
  end
endmodule

/* # KERNEL: 	 P1 Product Details
# KERNEL: 	 Product Name = Car,	 Product Price = 1500$,	 Product MFG Year = 2024  
# KERNEL: 	 P2 Product Details
# KERNEL: 	 Product Name = Bike,	 Product Price = 1500$,	 Product MFG Year = 2024  
# KERNEL: 	 P1 Product Details 
# KERNEL: 	 Product Name = Bike,	 Product Price = 800$,	 Product MFG Year = 2025  
*/
