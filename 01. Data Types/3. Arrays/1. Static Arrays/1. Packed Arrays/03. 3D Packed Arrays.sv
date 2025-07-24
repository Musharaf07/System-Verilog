// Static Array
// Packed Array 3D
module packed_array_3D;
  logic [2:0][4:0][5:0] dt;

  initial begin
    dt = { 6'b000001, 6'b110010, 6'b000011, 6'b100100, 6'b010001, //dt[2][0]to dt[2][4]
          6'b100101, 6'b000110, 6'b100111, 6'b001000, 6'b111001,  //dt[1][0]to dt[2][4]
          6'b001001, 6'b101010, 6'b101011, 6'b101100, 6'b101010 }; //dt[0][0]to dt[0][4]

    $display("Value of dt[0][2][3] : %0b", dt[0][2][3]);
    $display("Value of dt[1][1][1] : %0b", dt[1][1][1]);
    $display("Value of dt[2][3][4] : %0b", dt[2][3][4]);
    
    
    $display("------ Value of dt ------");
    for (int i = 0; i <= 2; i++) begin
      for (int j = 0; j <= 4; j++) begin
        for (int k = 0; k <= 5; k++) begin
          $display("Value of dt[%0d][%0d][%0d] = %0d", i, j, k, dt[i][j][k]);
        end
      end
    end
  end
endmodule
