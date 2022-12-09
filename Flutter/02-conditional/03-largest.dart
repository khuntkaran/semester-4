 import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter No1 : ");
  int no1=int.parse(stdin.readLineSync()!);
  stdout.write("Enter No2 : ");
  int no2=int.parse(stdin.readLineSync()!);
  stdout.write("Enter No3 : ");
  int no3=int.parse(stdin.readLineSync()!);

  if(no1>no2 && no1>no3){
    print("no1 is big");
  }
  else if(no2>no1 && no2>no3){
    print("no2 is big");
  }
  else{
    print("no3 is big");
  }
}