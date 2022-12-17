import 'dart:ffi';
import 'dart:io';

import '04-prime.dart';

void main(List<String> args) {
  equation eq = new equation();
  stdout.write("Enter equation : ");
  String n = stdin.readLineSync()!;
  int sum=0;
  for(int i=0;i<n.length;i++){
    sum+=eq.calculat(n[i]);
  }
  print("Sum = $sum");
}
class equation{
  int calculat(String a){
         if(a=='a' || a=='j' || a=='s')return 1;
    else if(a=='b' || a=='k' || a=='t')return 2;
    else if(a=='c' || a=='l' || a=='u')return 3;
    else if(a=='d' || a=='m' || a=='v')return 4;
    else if(a=='e' || a=='n' || a=='w')return 5;
    else if(a=='f' || a=='o' || a=='x')return 6;
    else if(a=='g' || a=='p' || a=='y')return 7;
    else if(a=='h' || a=='q' || a=='z')return 8;
    else if(a=='i' || a=='r'          )return 9;
    return 0;
  }
}