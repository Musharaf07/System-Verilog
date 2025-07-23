// Static Array
//Unpacked Array 2D
module unpacked_array_2D;
  int dt[4][3];
  int dt1[6][2];
  
  initial begin
     dt = '{ '{1,3,6}, '{9,11,13}, '{4,5,9}, '{7,0,8} };
    dt1 = '{ '{2,4}, '{6,8}, '{10,1}, '{2,3}, '{6,9}, '{11,1} };
    
    $display("Value of dt[0][2] : %0d",dt[0][2]);
    $display("Value of dt1[3][0] : %0d",dt1[3][0]);  
  
    $display("-----Value of dt-----");
    for(int i = 0; i <=3; i++) begin
      for(int j = 0; j <=2; j++) begin
        $display(" Value of dt[%0d][%0d] = %0d",i,j,dt[i][j]);
      end
    end
    
    $display("-----Value of dt1-----");
    for(int i = 0; i <=5; i++) begin
      for(int j = 0; j <=1; j++) begin
        $display(" Value of dt1[%0d][%0d] = %0d",i,j,dt1[i][j]);

      end
    end
  end
endmodule
