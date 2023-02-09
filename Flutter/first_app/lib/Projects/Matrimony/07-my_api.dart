import 'dart:convert';
import 'package:http/http.dart' as http;
class MYAPI{
  String apiurl = "https://63de106ef1af41051b0d0a4c.mockapi.io/users";
  Future<List> getDataFromUsersAPI() async {
    http.Response users = await http.get(Uri.parse(apiurl));
    print("data ::: ${users.body}");
    List<dynamic> temp=jsonDecode(users.body.toString());
    return temp;
  }

  Future<void> deleteDataFromUserAPI(int a) async {
    await http.delete(Uri.parse(apiurl+'/$a'));
  }

  Future<void> insertDataFromUserAPI(Map<String,dynamic> a) async {
    await http.post(Uri.parse(apiurl),body: a);
  }

  Future<void> updateDataFromUsersAPI(Map<String,dynamic> a,int x) async {
    await http.put(Uri.parse(apiurl+'/$x'),body: a);
  }
}