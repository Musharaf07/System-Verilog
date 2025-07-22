//Associative Array Methods
//Delete Entries
module as_del;
  int as_array[string];

  initial begin
    as_array["one"] = 1;
    as_array["two"] = 2;

    as_array.delete("one");

    $display("After delete, size = %0d", as_array.num());
  end
endmodule
