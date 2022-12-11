import "dart:io";
void main(List<String> args){
    stdout.write("Enter String : ");
    String n = stdin.readLineSync()!;
    String reverse="";
    for(int i=n.length-1;i>=0;i--){
        reverse+=n[i];
    }
    print("Reverse String = $reverse");
}