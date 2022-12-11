import "dart:io";
void main(List<String> args){
    bool flag=true;
    int positiveEven=0,negativeOdd=0;
    while(flag){
        print("Enter '0' For Quit");
        stdout.write("Enter No : ");
        int x=int.parse(stdin.readLineSync()!);
        if(x==0){
            break;
        }
        if(x>0 && x%2==0){
            positiveEven+=x;
        }
        else if(x<0 && x%2!=0){
            negativeOdd+=x;
        }
    }
    print("positiveEven = $positiveEven");
    print("negativeOdd = $negativeOdd");
}