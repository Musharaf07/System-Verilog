// Static Array
//Packed Array
module packed_array;
  logic [15:0] dt;
  bit [8:0] dt1;
  
  initial begin
    dt = 16'hffea;
    dt1 = 8'b10101110;
    
    $display("Full dt : %h",dt);
    $display("Full dt : %b",dt1);
    $display("dt[7:0] : %h",dt[7:0]);
    $display("dt1[5]  : %b",dt1[5]);
    
    $display("----- Value of dt -----");
    for(int i = 0; i <= 15; i++) begin
      $display(" Value of dt[%0d] = %0d",i , dt[i]);
    end
    
    $display("----- Value of dt1 -----");
    for(int i = 0; i <= 7; i++) begin
      $display(" Value of dt1[%0d] = %0d",i , dt1[i]);
    end
  end
endmodule
