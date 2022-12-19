import 'dart:io';

void main(List<String> args) {
  Map<String,String> a = {};
  for(int i=0;i<5;i++){
    stdout.write("Enter Name : ");
    String name=stdin.readLineSync()!;
    stdout.write("Enter Phone no : ");
    a[name]=stdin.readLineSync()!;
  }

  bool flag=true;
  while(flag){
    stdout.write("Find any contact (y/n) ");
    String ans= stdin.readLineSync()!;

    if(ans=="y"){
      stdout.write("Enter friend Name : ");
      String? name= stdin.readLineSync();
      String? ph=a[name];
      if(ph==null){
        print("Data not Found 404");
      }
      else{
        print("Phone No = $ph");
      }
    }
    else if(ans=="n"){
      flag=false;
    }
    else{
      print("envalid choise");
    }
    
  }
  
}