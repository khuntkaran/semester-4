import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter no = ");
  int no = int.parse(stdin.readLineSync()!);
  bool flag=true;
  for(int i=2;i<no/2;i++){
    if(no%i==0){
      flag=false;
      break;
    }
  }
  if(flag){
    print("$no is Prime");
  }
  else{
    print("$no is not Prime");
  }
  
}