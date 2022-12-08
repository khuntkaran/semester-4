import 'dart:io';

void main(List<String> args) {
  print("Enter No : ");
  int n = int.parse(stdin.readLineSync()!);

  if(n>0){
    print('Positive');
  }
  else if(n<0){
    print('Negative');
  }
  else{
    print('Zero');
  }
}