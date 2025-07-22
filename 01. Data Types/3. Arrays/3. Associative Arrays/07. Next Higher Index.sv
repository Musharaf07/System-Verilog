//Associative Array Methods
//Next Higher Index
module as_next;
  int as_array[string];
  string idx;

  initial begin
    as_array["cat"] = 1;
    as_array["dog"] = 2;
    as_array["elephant"] = 3;

    idx = "cat";
    if (as_array.next(idx))
      $display("Next of 'cat' is: %s", idx);
  end
endmodule
