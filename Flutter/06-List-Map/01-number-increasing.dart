import 'dart:io';

void main(List<String> args) {
  List<int> a=[]  ;
  for(int i=0;i<5;i++){
    stdout.write("Enter No${i+1} : ");
    a.add(int.parse(stdin.readLineSync()!));
  }
  for(int i=0;i<a.length;i++){
    for(int j=0;j<a.length-i-1;j++){
      if(a[j]>a[j+1]){
        int x=a[j];
        a[j]=a[j+1];
        a[j+1]=x;
      }
    }
  }
  print(a);
}
