import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Meter : ");
  double m = double.parse(stdin.readLineSync()!);

  print('feet = ${(m*3.28083998).toStringAsFixed(2)}');
}