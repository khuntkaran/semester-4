import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter no1 = ");
  int no1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter no2 = ");
  int no2 = int.parse(stdin.readLineSync()!);

  if(no1<no2){
    for(int i=no1+1;i<no2;i++){
      if(i%2==0 && i%3!=0){
        stdout.write("$i,");
      }
    }
  }
  else{
    print("Envalid input");
  }

}