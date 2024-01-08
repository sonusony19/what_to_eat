import 'dart:io';

void main() {
  print("welcome to dart");

  stdout.write("Enter your name:");


  var employee = Employee();
  print("Employee name was : ${employee.name}");

  int a = 0;
  var b = 0;

  var first;

  first = "1";

  first = 1;
  first = false;

  dynamic second = "";

  second = 0;

  print(" class function is : ${employee.testing()}");
  employee.sum();

  var testMap = {
    "second" :"prefilled value"
  };
  testMap["first"] = "first value";

  print(testMap);

  var test = [];
  test.add("value");
  test.add("valu");
  test.add("valu1");
  test.add("value2");
  test.add("valu3");

  for (var element in test) {
    print(element);
  }
}

class Employee {
  String name = "";

  Employee();

  int testing(){
    return 124;
  }

  void sum(){
    var a;
    var b;

    a = 4;
    b = 5;

    var c = a+b;
    print("$c");
  }
}
