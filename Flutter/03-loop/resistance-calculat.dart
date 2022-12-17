import 'dart:io';

void main(List<String> args) {
  List<int> c=[];
  for(int i=0;i<4;i++){
    if(i==3){
      stdout.write("1=gold\t2=silver\t3=none\nEnter no : ");
    }else{
      stdout.write("0=black\t\t1=brown\t\t2=red\t\t3=orange\t4=yellow\n5=geen\t\t6=blue\t\t7=violet\t8=grey\t\t9=white\nEnter no : ");
    }
    c.add(int.parse(stdin.readLineSync()!));
  }
  int x = (c[3]==1)?(5):((c[3]==2)?(10):(20));
  print("Resistance of Resistor = ${c[0]}${c[1]}x10^${c[2]} Ω ${x}%");
}
