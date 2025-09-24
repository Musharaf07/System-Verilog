//Polymorphism
class BaseClass;
  virtual task name(string st_name);
  endtask
endclass

class SC_derived1 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

class SC_derived2 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

class SC_derived3 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

class SC_derived4 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

class SC_derived5 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

class SC_derived6 extends BaseClass;
  task name(string st_name);
    $display("Student Name : %s", st_name);
  endtask
endclass

module clss;
  BaseClass b;

  initial begin
    SC_derived1 d1;
    SC_derived2 d2;
    SC_derived3 d3;
    SC_derived4 d4;
    SC_derived5 d5;
    SC_derived6 d6;
    
    $display(" ----- Silicon Craft Students Name ----- ");

    d1 = new();
    b = d1;
    b.name("Aditya");

    d2 = new();
    b = d2;
    b.name("Bharath Raju");

    d3 = new();
    b = d3;
    b.name("Soundhar");

    d4 = new();
    b = d4;
    b.name("Mohan");

    d5 = new();
    b = d5;
    b.name("Karthiga");

    d6 = new();
    b = d6;
    b.name("Guru");
  end
endmodule

/* 
# KERNEL: Student Name : Aditya
# KERNEL: Student Name : Bharath Raju
# KERNEL: Student Name : Soundhar
# KERNEL: Student Name : Mohan
# KERNEL: Student Name : Karthiga
# KERNEL: Student Name : Guru
*/
