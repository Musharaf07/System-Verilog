// Four State Data Types
module four_state_datatype_time;
  time t ;
  
  initial begin
    $display("Default value of time t = %0t",t);
    #5;
    t = $time;
    $display("Simulation time t = %0t", t);             
    
    #20
    t = $time;
    $display("t = %0t", t);
    #25
    t = $time;
    $display("t = %0t", t);         
    
  end
endmodule

/*# Default value of time t = 0
# Simulation time t = 5
# t = 25
# t = 50 */
