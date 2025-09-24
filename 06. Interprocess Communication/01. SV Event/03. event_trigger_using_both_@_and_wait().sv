// SV Event
//Event is triggered at the same time waiting for Event trigger using @ and wait() 
module event_exmpl;
  event ev1;
  
  task process1();
    $display("%0t, Before triggering event",$time);
    ->ev1;
    $display("%0t, After triggering event",$time);
 endtask
  
  task process2();
    $display("%0t, Before Capturing event using wait()",$time);
    wait(ev1.triggered);
    $display("%0t, After Capturing event using wait()",$time);
  endtask
  
  task process3();
     $display("%0t, Before Capturing event using @",$time);
     @ev1;
     $display("%0t, After Capturing event using @",$time);
  endtask
  
  initial begin
    fork
      process1();
      process2();
      process3();
    join
  end
  
endmodule
