// Static Array
//Unpacked Array 3D
module unpacked_array_3D;
  int dt[4][3][2];
  initial begin
    dt = '{ '{ '{2,16}, '{11,17}, '{3,7} },
           '{ '{9,11}, '{1,9}, '{7,5} },
           '{ '{9,3}, '{1,0}, '{7,8} },
           '{ '{1,6}, '{2,7}, '{3,8} }};
           
    $display("Value of dt[0][2][1] : %0d",dt[0][2][1]);
  
    $display("-----Value of dt-----");
    for(int i = 0; i <=3; i++) begin
      for(int j = 0; j <=2; j++) begin
        for(int k = 0; k <=1; k++)begin
          $display(" Value of dt[%0d][%0d][%0d] = %0d",i,j,k,dt[i][j][k]);
        end
      end
    end
  end
endmodule
