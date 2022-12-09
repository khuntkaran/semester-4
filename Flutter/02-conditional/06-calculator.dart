import 'dart:io';

void main(List<String> args) {
  bool flag =true;
  double no,total=0;

  stdout.write("Enter No : ");
  no = double.parse(stdin.readLineSync()!);
  total=no;

  while(flag){

    print('1:Add\n2:sub\n3:mul\n4:div\n5:Eqalto');
    int x=int.parse(stdin.readLineSync()!);

    if(x==5){
      break;
    }


    stdout.write("Enter No : ");
    no = double.parse(stdin.readLineSync()!);

    switch(x){
      case 1:
        total=total+no;
        break;
      case 2:
        total=total-no;
        break;
      case 3:
        total=total*no;
        break;
      case 4:
        total=total/no;
        break;
      default :
        flag=false;
    }

  }

  print("total = $total");
}