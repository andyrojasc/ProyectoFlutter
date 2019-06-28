//Importacion de paquetes para peticiones hhtp
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_itmapp/UI/ui_login.dart';

//Metodo para realizar login desde un API custom

Future<Map<String, dynamic>> loginAPI(usr, pwd) async {
  String ip = Uilogin.localhost;
  http.Response response = await http.get(
      Uri.encodeFull(
          "http://$ip/LaravelAPI/public/api/login/$usr/$pwd"),
      headers: {"Accept": "application/json"});
  Map<String, dynamic> data = json.decode(response.body);
  if (data["status"] == "login") {
    print(data["status"]);
    return data;
  } else {
    if (data["status"] == "Invalid") {
      return data;
    }
  }
}
