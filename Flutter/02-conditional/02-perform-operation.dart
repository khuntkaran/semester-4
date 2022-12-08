import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter No1 : ");
  double n1=double.parse(stdin.readLineSync()!);
  stdout.write("Enter No2 : ");
  double n2=double.parse(stdin.readLineSync()!);
  print(n1+n2);
}