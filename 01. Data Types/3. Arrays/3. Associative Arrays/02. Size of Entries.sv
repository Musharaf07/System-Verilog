//Associative Array Methods
//Size of Entries
module as_num;
  int as_array[string];
  int count;

  initial begin
    as_array["I"] = 50;
    as_array["J"] = 100;

    count = as_array.size();
    $display("Size of entries: %0d", count);
  end
endmodule
