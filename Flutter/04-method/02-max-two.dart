import 'dart:io';

void main(List<String> args){
  max m1=new max();
  m1.twomax();
}
class max{
  void twomax(){
    stdout.write("Enter No1 : ");
    int no1 = int.parse(stdin.readLineSync()!);
    stdout.write("Enter No2 : ");
    int no2 = int.parse(stdin.readLineSync()!);

    if(no1>no2){
      print("no1 is maximum");
    }
    else if(no2>no1){
      print("no2 is maximum");
    }
    else{
      print("Both are same");
    }
  }
}