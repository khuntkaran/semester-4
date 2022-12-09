import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter Mark subject No1 = ");
  int no1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Mark subject No2 = ");
  int no2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Mark subject No3 = ");
  int no3 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Mark subject No4 = ");
  int no4 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Mark subject No5 = ");
  int no5 = int.parse(stdin.readLineSync()!);

  double per = (no1+no2+no3+no4+no5)/5;

  if(per<35){
    print("fail");
  }
  else if(per>=35 && per<45){
    print("Pass");
  }
  else if(per>=45 && per<60){
    print("Second");
  }
  else if(per>=60 && per<70){
    print("First");
  }
  else if(per>=70 && per<=100){
    print("Distinction");
  }
  else{
    print("invalid mark enter");
  }
  print("percentage = $per%");

}