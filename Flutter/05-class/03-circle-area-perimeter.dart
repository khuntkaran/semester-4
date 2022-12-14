import 'dart:io';

void main(List<String> args) {
  Circle c1= Circle();
  c1.area();
  c1.perimeter();
}
class Circle{
  int? r;
  Circle(){
    stdout.write("Enter Circle redius : ");
    r = int.parse(stdin.readLineSync()!);
  }
  void area(){
    print("Area of Circle = ${3.14*r!*r!}");
  }
  void perimeter(){
    print("Perimeter of Circle = ${2*3.14*r!}");
  }
}