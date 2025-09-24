//Threads - fork_join_any
module fork_join_any;
  int a,b;
  
  initial begin
    a = 2;
    b = 9;
    $display("---------------------------------------------------------------------");
    $display($time,"\tBefore fork,  a = %0d, b = %0d",a,b);
    
    fork
      
      //Process 1
      begin
        $display($time,"\tProcess 1 Started,  a = %0d, b = %0d",a,b);
        a = b;
        b = 0;
        #1;
        $monitor($time,"\tProcess 1 Ended,  a = %0d, b = %0d",a,b);
      end
      
      //Process 2
      begin
        $display($time,"\tProcess 2 Started,  a = %0d, b = %0d",a,b);
        a = 4;
        b = 16;
        #2;
        $display($time,"\tProcess 2 Ended  a = %0d, b = %0d",a,b);
      end
      
    join_any
    
    $display($time,"\tOutside fork_join,  a = %0d, b = %0d",a,b);
    $display("---------------------------------------------------------------------");
    #5;
    $finish;
  end
endmodule


/* ---------------------------------------------------------------------
                   0	Before fork,  a = 2, b = 9
                   0	Process 1 Started,  a = 2, b = 9
                   0	Process 2 Started,  a = 9, b = 0
                   1	Outside fork_join,  a = 4, b = 16
---------------------------------------------------------------------
                   1	Process 1 Ended,  a = 4, b = 16
                   2	Process 2 Ended  a = 4, b = 16 */
