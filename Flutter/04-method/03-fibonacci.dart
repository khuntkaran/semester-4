import 'dart:io';

void main(List<String> args) {
  fibonacci fi= new fibonacci();
  fi.fibonacciprint();
}
class fibonacci{
  void fibonacciprint(){
    stdout.write("Enter N : ");
    int n= int.parse(stdin.readLineSync()!);
    int prev=1,prev2=0;
    stdout.write("$prev2, $prev, ");
    for(int i=1;i<n-1;i++){
      stdout.write('${prev+prev2}, ');
      int x=prev;
      prev=prev+prev2;
      prev2=x;
    }
  }
}