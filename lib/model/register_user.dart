//importacion de paquetes para peticiones http
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_itmapp/UI/ui_login.dart';

//Metodo para registrar usuarios

Future<Map<String, dynamic>> registrarUsuario(
    usr, correo, pwd, tipoUsuario) async {
      String ip = Uilogin.localhost;
      String menuDefault  = "MenuLeft";
      String themeDeaful = "Dark";
  http.Response response = await http.get(
      Uri.encodeFull(
          "http://$ip/LaravelAPI/public/crearUsu/$usr/$correo/$pwd/$tipoUsuario/$menuDefault/$themeDeaful"),
      headers: {"Accept": "application/json"});
  Map<String, dynamic> data = json.decode(response.body);
  print(data["status"]);

  return data;
}
