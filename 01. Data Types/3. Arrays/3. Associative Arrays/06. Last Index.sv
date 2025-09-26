//Associative Array Methods
//Last Index
module as_last;
  int as_array[string];
  string index;

  initial begin
    as_array["Z"] = 9;
    as_array["A"] = 1;

    if (as_array.last(index))
      $display("last key : %s", index);
  end
endmodule
