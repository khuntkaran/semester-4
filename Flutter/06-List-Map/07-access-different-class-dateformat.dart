import "package:intl/intl.dart";

void main(List<String> args){

    // for create dart project = "dart create -t console project_name"
    // for package add ="flutter pub add intl"

    DateTime now = new DateTime.now();
    Util newDate = Util();
    newDate.date_format(now);
}

class Util{
  void date_format(DateTime a){
      print(DateFormat("dd-MM-yyyy").format(a));
  }
}