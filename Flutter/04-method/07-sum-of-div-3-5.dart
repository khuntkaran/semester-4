import 'dart:io';

void main(List<String> args) {
  List<int> number=[] ;
  int n=5;
  for(int i=0;i<n;i++){
    stdout.write("Enter ${i+1} element : ");
    number.add(int.parse(stdin.readLineSync()!));
  }

  Sum cu = new Sum();
  cu.addition(number);
}

class Sum{
  void addition(List<int> n){
    int sum=0;
    for(int i=0;i<n.length;i++){
      if(n[i]%3==0 || n[i]%5==0){
        sum+=n[i];
      }
    }
    print("Addition = $sum");
  }
}