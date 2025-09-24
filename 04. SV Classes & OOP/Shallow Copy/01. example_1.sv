// Shallow Copy
class Excess_de;
  int Qty;
  
  function new();
    Qty = 4'd2;
  endfunction
endclass
  
class product;
  string    name;
  int       price;
  int       mfg_year;
  
  Excess_de de;
  
  function new();
    name  = "Petrol";
    price = 8'd150;
    mfg_year = 12'd2024;
    de = new();
  
  endfunction
  
  function void display();
    $display("\t Product Name = %0s,\t Product Price = %0d,\t Product MFG Year = %0d ,\t Product Quantity = %0dl ", name, price, mfg_year, de.Qty);
  endfunction
endclass

module product_detail;
  product p1;
  product p2;
  
  initial begin
    p1 = new();
    $display("\t P1 Product Details");
    p1.display();
    
    p2 = new p1;
    p1.name = "Diesel";
    $display("\t P2 Product Details");
    p2.display();
    
    p2.price = 8'd170;
    p2.mfg_year = 12'd2025;
    p2.de.Qty = 4'd3;
    $display("\t P1 Product Details ");
    p1.display();
    
    $display("\t P2 Product Details ");
    p2.display();
  end
endmodule
  
/* # KERNEL: 	 P1 Product Details
# KERNEL: 	 Product Name = Petrol,	 Product Price = 150,	 Product MFG Year = 2024 ,	 Product Quantity = 2l 
# KERNEL: 	 P2 Product Details
# KERNEL: 	 Product Name = Petrol,	 Product Price = 150,	 Product MFG Year = 2024 ,	 Product Quantity = 2l 
# KERNEL: 	 P1 Product Details 
# KERNEL: 	 Product Name = Diesel,	 Product Price = 150,	 Product MFG Year = 2024 ,	 Product Quantity = 3l 
# KERNEL: 	 P2 Product Details 
# KERNEL: 	 Product Name = Petrol,	 Product Price = 170,	 Product MFG Year = 2025 ,	 Product Quantity = 3l 
*/
