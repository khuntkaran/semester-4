import 'dart:io';

void main(List<String> args) {
  Candidate c1= new Candidate();
  c1.GetCandidateDetails();
  c1.DisplayCandidateDetails();
}
class Candidate{
  int? id,age,weight,height;
  String? name;
  
  void GetCandidateDetails(){
    stdout.write("Enter id : ");
    id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    name = stdin.readLineSync(); 
    stdout.write("Enter age : ");
    age = int.parse(stdin.readLineSync()!); 
    stdout.write("Enter weight : ");
    weight = int.parse(stdin.readLineSync()!); 
    stdout.write("Enter height : ");
    height = int.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails(){
    print("Name\t= $name");
    print("Age\t= $age");
    print("Weight\t= $weight");
    print("Height\t= $height");
  }
}