/* 2.) Declare a Semaphore with 6 keys 
 Get 3 keys and get 4 keys at  same simulation 
 #5 delay get 3 keys
 Note: all will at 30 delay to put keys dack .  
*/

class packet;
  semaphore a = new(6);

  task run();  
    fork 
      begin
        if (a.try_get(3))
          $display(" %0t, Got 3 keys from Semaphore a", $time);
       else
         $display(" %0t, Didn't get 3 keys from a due to insufficient keys in Semaphore a", $time);
      end

      begin
        if (a.try_get(4))
          $display(" %0t, Got 4 keys from Semaphore a", $time);
        else
          $display(" %0t, Didn't get 4 keys from a due to insufficient keys in Semaphore a", $time);
      end

      begin
        #5;
        if (a.try_get(3))
          $display(" %0t, Got 3 keys from Semaphore a after 5 delay", $time);
        else
          $display(" %0t, Didn't get 3 keys from a after 5 delay due to insufficient keys in Semaphore a", $time);
      end
    join

    #25;
    a.put(6);
    $display(" %0t, Put 6 keys back into a", $time);
  endtask
endclass

module packetss;
  packet p1;

  initial begin
    p1 = new();
    p1.run();
  end
endmodule

/*
 0, Got 3 keys from Semaphore a
 0, Didn't get 4 keys from a due to insufficient keys in Semaphore a
 5, Got 3 keys from Semaphore a after 5 delay
 30, Put 6 keys back into a
 */
