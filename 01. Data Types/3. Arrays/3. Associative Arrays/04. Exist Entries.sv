//Associative Array Methods
//Exist Entries
module as_exists;
  int as_array[string];
  bit result;

  initial begin
    as_array["Anand"] = 100;

    result = as_array.exists("Anand");
    $display("Exists Anand? %0d", result);

    result = as_array.exists("Beema");
    $display("Exists Beema? %0d", result);
  end
endmodule
