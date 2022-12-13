import "dart:io";
void main(List<String> args){
  All all = new All();
  stdout.write("Enter Circle readus : ");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Triangle height : ");

  int h = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Triangle base : ");
  int b = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Square length : ");
  int l = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Square width : ");
  int w = int.parse(stdin.readLineSync()!);
  all.area(r: r);
  all.area(h: h,b: b);
  all.area(l: l,w: w);
}

class All{
  void area({int? r,h,b,l,w }){
    try{
      print("Area of circle = ${3.14*r!*r}");
    }
    catch(err){
      try{
        print("Area of Triangle = ${0.5*h*b}");
      }
      catch(err){
        print("Area of Square = ${l*w}");
      }
    }
    
  }
  
}