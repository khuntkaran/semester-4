import "package:intl/intl.dart";

void main(List<String> args) {
 
  // for create dart project = "dart create -t console project_name"
  // for package add ="flutter pub add intl"
  
  DateTime now = new DateTime.now();
  print("======================");
  print(now);
  print(DateFormat("dd/MM/yyyy").format(now));
  print(DateFormat("dd-MM-yyyy").format(now));
  print(DateFormat("dd-MMM-yyyy").format(now));
  print(DateFormat("dd-MM-yy").format(now));
  print(DateFormat("dd MMM yy").format(now));
}