import 'dart:io';

void main(List<String> args) {
  BankAccount BA = BankAccount();
  BA.GetAccountDetails();
  BA.DisplayAccountDetails();
}
class BankAccount{
  int? Account_No,Account_Balance;
  String? User_Name,Email,Account_Type;

  void GetAccountDetails(){
    stdout.write("Enter Account_NO : ");
    Account_No=int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    User_Name = stdin.readLineSync();
    stdout.write("Enter Email : ");
    Email=stdin.readLineSync();
    stdout.write("Enter Account-Type : ");
    Account_Type=stdin.readLineSync();
    stdout.write("Enter Balance : ");
    Account_Balance=int.parse(stdin.readLineSync()!);
  }

  void DisplayAccountDetails(){
    print("Account_No\t= $Account_No");
    print("Name\t\t= $User_Name");
    print("Email\t\t= $Email");
    print("Account-Type\t= $Account_Type");
    print("Balance\t\t= $Account_Balance");
  }
}