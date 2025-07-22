//Associative Array Methods
//Number of Entries
module as_num;
  int as_array[string];
  int count;

  initial begin
    as_array["A"] = 10;
    as_array["B"] = 20;

    count = as_array.num();
    $display("Number of entries: %0d", count);
  end
endmodule
