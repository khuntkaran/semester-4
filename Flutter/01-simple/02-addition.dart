import 'dart:io';
void main(List<String> args) {
  print('Enter No1 : ');
  int n1=int.parse(stdin.readLineSync()!);
  print('Enter No2 : ');
  int n2=int.parse(stdin.readLineSync()!);

  print('Sum = ${n1+n2}');
}