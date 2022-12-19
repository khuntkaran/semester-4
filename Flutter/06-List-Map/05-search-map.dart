import 'dart:io';

void main(List<String> args) {
  Map<String,double> a = {"kkk":9.8,"abc":7.8,"xyz":5.9};
  stdout.write("Enter friend Name : ");
  String? name= stdin.readLineSync();
   double? spi=a[name];
   if(spi==null){
    print("Data not Found 404");
   }
   else{
    print("SPI = $spi");
   }
}