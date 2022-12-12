import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter no : ");
  int no=int.parse(stdin.readLineSync()!);
  prime pn =new prime();
  print(pn.check(no)==1 ?"Number is Prime" : "Number is Not Prime");
}
class prime{
  int check(int n){
    for(int i=2;i<=n/2;i++){
      if(n%i==0) 
        return 0;
    }
    return 1;
  }
}