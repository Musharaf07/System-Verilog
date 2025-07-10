// String Operators
// Replication
module string_Replication;
  string S, S1, S2;
  
  initial begin
    S = " Shravan ";
    S1 = " Kumar ";
    S2 = " SS ";
    
    $display ({2{S}}, {4{S1}}, {3{S2}});
    
  end
endmodule

//Shravan  Shravan  Kumar  Kumar  Kumar  Kumar  SS  SS  SS 
