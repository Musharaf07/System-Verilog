// Polymorphism
class Purchase;
  virtual function int totalvalue();
    return 0;
  endfunction
endclass

class Grocery extends Purchase;
  int quantity, mrp, gst, price;
  
  function new (int qty, int price);
    this.quantity = qty;
    this.price = price;
  endfunction
  
  function int totalvalue();
    gst = (price * 12) / 100 ;
    mrp = price + gst;
    return (quantity * mrp);
  endfunction
endclass

class Dairy extends Purchase;
    int quantity, mrp, gst, price;
  
  function new (int qty,int price);
    this.quantity = qty;
    this.price = price;
  endfunction
  
  function int totalvalue();
    gst = (price * 5) / 100 ;
    mrp = price + gst;
    return (quantity * mrp);
  endfunction
endclass
  
  class Electronics extends Purchase;
    int quantity, mrp, gst, price;
  
    function new (int qty,int price);
    this.quantity = qty;
    this.price = price;
  endfunction
  
  function int totalvalue();
    gst = (price * 18) / 100 ;
    mrp = price + gst;
    return (quantity * mrp);
  endfunction
  endclass
  
module test;
  int Totalprice;
  Purchase purchase, purch[3];
  Grocery grcy;
  Dairy dy;
  Electronics elt;
  
  initial begin
    grcy = new(5, 1200);
    dy = new(15, 400);
    elt = new(2, 2000);
    
    purchase = grcy;
    $display ("----- Bill of Grocery\t 12 percent GST-----");
    $display(" Price of Grocery     : %0d", purchase.totalvalue());
    
    purchase = dy;
    $display ("----- Bill of Diary\t 5 percent GST-----");
    $display(" Price of Diary       : %0d", purchase.totalvalue());
    
    purchase = elt;
    $display ("----- Bill of Electronics\t   18 percent GST-----");
    $display(" Price of Electronics : %0d", purchase.totalvalue());
    
    Totalprice = 0;
    
    purch[0] = grcy;
    purch[1] = dy;
    purch[2] = elt;
    
    foreach (purch[i]) begin
      Totalprice += purch[i].totalvalue();
    end
    $display ("----- Total bill Vlaue of Purchase Including GST -----");
    $display ("Total Value of Purchase : %0d",Totalprice);
  end
endmodule
             
/* # KERNEL: ----- Bill of Grocery	 12 percent GST-----
# KERNEL:  Price of Grocery     : 6720
# KERNEL: ----- Bill of Diary	 5 percent GST-----
# KERNEL:  Price of Diary       : 6300
# KERNEL: ----- Bill of Electronics	   18 percent GST-----
# KERNEL:  Price of Electronics : 4720
# KERNEL: ----- Total bill Vlaue of Purchase Including GST -----
# KERNEL: Total Value of Purchase : 17740
*/
