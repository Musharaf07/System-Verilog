//Threads - fork_join
module fork_join;
  int a,b;
  
  initial begin
    a = 8;
    b = 12;
    $display("---------------------------------------------------------------------");
    $display($time,"\tBefore fork,  a = %0d, b = %0d",a,b);
    
    fork
      
      //Process 1
      begin
        $display($time,"\tProcess 1 Started,  a = %0d, b = %0d",a,b);
        a = b;
        b = 5;
        #1;
        $display($time,"\tProcess 1 Ended,  a = %0d, b = %0d",a,b);
      end
      
      //Process 2
      begin
        $display($time,"\tProcess 2 Started,  a = %0d, b = %0d",a,b);
        a = 15;
        b = 2;
        #2;
        $display($time,"\tProcess 2 Ended  a = %0d, b = %0d",a,b);
      end
      
    join
    
    $display($time,"\tOutside fork_join,  a = %0d, b = %0d",a,b);
    $display("---------------------------------------------------------------------");
    $finish;
  end
endmodule


/*  ---------------------------------------------------------------------
                   0	Before fork,  a = 8, b = 12
                   0	Process 1 Started,  a = 8, b = 12
                   0	Process 2 Started,  a = 12, b = 5
                   1	Process 1 Ended,  a = 15, b = 2
                   2	Process 2 Ended  a = 15, b = 2
                   2	Outside fork_join,  a = 15, b = 2
--------------------------------------------------------------------- */
