//Threads - fork_join_none
module fork_join_none;
  string a,b;
  event e;
  
  initial begin
    a = "Karthi";
    b = "yusuf";
    $display("---------------------------------------------------------------------");
    $display($time,"\tBefore fork,  a = %0s, b = %0s",a,b);
    
    fork
      
      //Process 1
      begin
        $display($time,"\tProcess 1 Started,  a = %0s, b = %0s",a,b);
        a = b;
        b = "Kumar";
        #1;
        -> e;
        $display($time,"\tProcess 1 Ended,  a = %0s, b = %0s",a,b);
      end
      
      //Process 2
      begin
        $display($time,"\tProcess 2 Started,  a = %0s, b = %0s",a,b);
        a = "Sekar";
        b = "Junaid";
        #2;
        $display($time,"\tProcess 2 Ended  a = %0s, b = %0s",a,b);
      end
      
    join_none
    
    @ e;
    $display($time,"\tOutside fork_join,  a = %0s, b = %0s",a,b);
    $display("---------------------------------------------------------------------");
    #5;
    $finish;
  end
endmodule


/* ---------------------------------------------------------------------
                   0	Before fork,  a = Karthi, b = yusuf
                   0	Process 1 Started,  a = Karthi, b = yusuf
                   0	Process 2 Started,  a = yusuf, b = Kumar
                   1	Process 1 Ended,  a = Sekar, b = Junaid
                   1	Outside fork_join,  a = Sekar, b = Junaid
---------------------------------------------------------------------
                   2	Process 2 Ended  a = Sekar, b = Junaid */
