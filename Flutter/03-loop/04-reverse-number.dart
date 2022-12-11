import "dart:io";
void main(List<String> args){
    stdout.write("Enter Number : ");
    int no =int.parse(stdin.readLineSync()!);
    int newno=0;
    while(no>0){
        int x = no%10;
        no=(no/10).toInt();
        newno=newno*10+x;
    }
    print("Reverse = $newno");
}