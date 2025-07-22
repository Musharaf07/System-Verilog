//Associative Array Methods
//First Index
module as_first;
  int as_array[string];
  string index;

  initial begin
    as_array["Z"] = 9;
    as_array["A"] = 1;

    if (as_array.first(index))
      $display("First key : %s", index);
  end
endmodule
