import 'dart:io';

void main(List<String> args) {
  print('Enter No1 : ');
  int n1=int.parse(stdin.readLineSync()!);
  print('Enter No2 : ');
  int n2=int.parse(stdin.readLineSync()!);
  print('Enter No3 : ');
  int n3=int.parse(stdin.readLineSync()!);
  print('Enter No4 : ');
  int n4=int.parse(stdin.readLineSync()!);
  print('Enter No5 : ');
  int n5=int.parse(stdin.readLineSync()!);

  print('percentage = ${(n1+n2+n3+n4+n5)/5}%');
}