import "dart:io";
void main(List<String> args){
    interest si = new interest();
    si.simpleInterest();
}
class interest{
    void simpleInterest(){
        stdout.write("Enter Amount : ");
        double p = double.parse(stdin.readLineSync()!);
        stdout.write("Enter persiontag : ");
        double r = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Year : ");
        double n = double.parse(stdin.readLineSync()!);
        print("Interest = ${(p*r*n)/100}");
    }
}
