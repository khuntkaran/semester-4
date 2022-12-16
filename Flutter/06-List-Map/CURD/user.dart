import 'dart:io';
import 'string_const.dart';

class User{
 
    List< Map<String,dynamic> > _alluser=[];

    User(){
      bool flag=true;
      while(flag){
        stdout.write("1 : Create New User\n2 : Read All Users Detail\n3 : Read User Detail By Name\n4 : Update User Data\n5 : Delete User Data\n0 : Exit\nEnter Your Choice : ");
        String x = stdin.readLineSync()!;
        switch(x){
          case "0":
            flag=false;
            break;
          case "1":
            _createUserDetail();
            break;
          case "2":
            _readUserDetail();
            break;
          case "3":
            _readUserDetailByName();
            break;
          case "4":
            _updateUserByName();
            break;
          case "5":
            _deleteUserByName();
            break;
          default :
            print("------------------------");
            print("Envalid choice");
        }
        print("=============================");
      }
    }

    void _createUserDetail({int? index}){
      Map<String,dynamic> _map = {};
      print("======> Enter User Detail <======");
      stdout.write("Enter Name\t: ");
      _map[NAME]=stdin.readLineSync();
      stdout.write("Enter City\t: ");
      _map[CITY]=stdin.readLineSync();
      stdout.write("Enter Age\t: ");
      _map[AGE]=stdin.readLineSync();
      stdout.write("Enter Salary\t: ");
      _map[SALARY]=stdin.readLineSync();
      try{
        _alluser[index!]=_map;
      }
      catch(err){
        _alluser.add(_map);
      }
    }

    void _readUserDetail(){
      print("======> All Users Detail <======");
      for(int i=0;i<_alluser.length;i++){
        print("--------------------------------");
        print("User Name\t: ${_alluser[i][NAME]}");
        print("User City\t: ${_alluser[i][CITY]}");
        print("User Age\t: ${_alluser[i][AGE]}");
        print("User Salary\t: ${_alluser[i][SALARY]}");
      }
    }

    void _readUserDetailByName(){
      print("======> User Detail <======");
      stdout.write("Enter User Name : ");
      String name = stdin.readLineSync()!;
    
      for(int i=0;i<_alluser.length;i++){
        if(_alluser[i][NAME]==name){
          print("--------------------------------");
          print("User Name\t: ${_alluser[i][NAME]}");
          print("User City\t: ${_alluser[i][CITY]}");
          print("User Age\t: ${_alluser[i][AGE]}");
          print("User Salary\t: ${_alluser[i][SALARY]}");
          return;
        }
      }
      print("Envalid Name");
    }

    void _updateUserByName(){
      print("======> Update User <======");
      stdout.write("Enter User Name : ");
      String name = stdin.readLineSync()!;

      for(int i=0;i<_alluser.length;i++){
        if(_alluser[i][NAME]==name){
          _createUserDetail(index: i);
          return;
        }
      }

      print("Envalid Name");
    }

    void _deleteUserByName(){
      print("======> Delete User <======");
      stdout.write("Enter User Name : ");
      String name = stdin.readLineSync()!;
    
      for(int i=0;i<_alluser.length;i++){
        if(_alluser[i][NAME]==name){
        _alluser.removeAt(i);
          return;
        }
      }

    print("Envalid Name");
  }

}