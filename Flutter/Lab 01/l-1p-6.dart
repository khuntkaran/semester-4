import 'dart:io';
void main(List<String> args) {
  print('weight : ');
  double w=double.parse(stdin.readLineSync()!);
  double pound =w*0.45359237;
  print('height : ');
  double h=double.parse(stdin.readLineSync()!);
  double inch = h*0.254;

  print('BMI = ${w/(h*h)}');
}