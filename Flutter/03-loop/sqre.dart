import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter No = ");
  double n=double.parse(stdin.readLineSync()!);

  double allsqre=0,sqresum=0;

  double sum= (n*(n+1))/2;
  allsqre=sum*sum;

  for(int i=1;i<=n;i++){
    sqresum=sqresum+(i*i);
  }

  print("Result = ${allsqre-sqresum}");
}