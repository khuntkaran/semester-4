import 'dart:convert';
import 'package:http/http.dart' as http;
class MYAPI{
  String apiurl = "https://62e7ab1e0e5d74566af96c99.mockapi.io/SuperCar";
  Future<List> getDataFromUsersAPI() async {
    http.Response users = await http.get(Uri.parse(apiurl));
    return jsonDecode(users.body.toString());
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