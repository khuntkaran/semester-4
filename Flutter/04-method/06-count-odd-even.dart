import 'dart:io';

void main(List<String> args) {
  List<int> number=[] ;
  int n=5;
  for(int i=0;i<n;i++){
    stdout.write("Enter ${i+1} element : ");
    number.add(int.parse(stdin.readLineSync()!));
  }

  Count cu = new Count();
  cu.countNumber(number);
}

class Count{
  void countNumber(List<int> n){
    int odd=0,even=0;
    for(int i=0;i<n.length;i++){
      if(n[i]%2==0){
        even++;
      }
      else{
        odd++;
      }
    }
    print("Even = $even\nOdd = $odd");
  }
}