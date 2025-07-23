// Static Array
//Packed Array 2D
module packed_array_2D;
  logic [2:0][4:0] dt;
  
  initial begin
    dt = {5'b11011, 5'b00110, 5'b11111} ;
    
    $display("Value of dt[0][3] : %0b",dt[0][2]);
    $display("Value of dt[1][4] : %0b",dt[1][3]);
    $display("Value of dt[2][5] : %0b",dt[2][3]);  
  
    for(int i = 0; i <=2; i++) begin
      for (int j = 0; j <=4; j++)begin
        $display(" Value of dt[%0d][%0d] = %0d",i, j,dt[i][j]);
      end
    end
  end
endmodule
