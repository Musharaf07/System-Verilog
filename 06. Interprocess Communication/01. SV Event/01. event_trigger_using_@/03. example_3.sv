// SV Event
//Event is triggered at the same time waiting for Event trigger using @ 
module event_exmpl;
  event ev1;
  
  task process1();
    $display("%0t, Before triggering event",$time);
    ->ev1;
    $display("%0t, After triggering event",$time);
 endtask
  
  task process2();
    $display("%0t, Before Capturing event",$time);
    @ev1;
    $display("%0t, After Capturing event",$time);
  endtask
  
  initial begin
    fork
      process1();
      process2();
    join
  end
  
endmodule
