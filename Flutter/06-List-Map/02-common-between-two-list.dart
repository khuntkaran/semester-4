import 'dart:io';

void main(List<String> args) {
  List<int> a=[];
  List<int> b=[];
  List<int> c=[];
  print("Enter 1st List");
  for(int i=0;i<5;i++){
    stdout.write("Enter No${i+1} : ");
    a.add(int.parse(stdin.readLineSync()!));
  }
  print("Enter 2nd List");
  for(int i=0;i<5;i++){
    stdout.write("Enter No${i+1} : ");
    b.add(int.parse(stdin.readLineSync()!));
  }
  
  for(int i=0;i<a.length;i++){
    for(int j=0;j<b.length;j++){
      if(a[i]==b[j]){
        c.add(b[j]);
        b.remove(b[j]);
        break;
      }
    }
  }
  print(c);
}