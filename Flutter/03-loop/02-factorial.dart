import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter no = ");
  int no = int.parse(stdin.readLineSync()!);
  double fac=1;
  for(int i=no;i>=1;i--){
    fac=fac*i;
  }
  print("Factorial = $fac");
}