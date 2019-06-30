//Importacion de paquetes para peticiones http
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_itmapp/UI/ui_login.dart';
//Metodo que agrega contactos a la base de datos
Future<Map<String, dynamic>> editarContacto(
    idContacto,
    nombreContacto,
    correoContacto,
    telefonoContacto,
    areaContacto,
    empresaContacto,
    descripcionContacto) async {
print("ID: "+ idContacto.toString());
  print("nombre: " + nombreContacto);
  print("Telefono : " + telefonoContacto);
  print("correo : " + correoContacto);
  print("area : " + areaContacto);
  print("empresa : " + empresaContacto);
  print("descriptcion : " + descripcionContacto);
  String ip = Uilogin.localhost;
  String id = idContacto.toString();
  http.Response response = await http.get(
      Uri.encodeFull(
          "http://$ip/LaravelAPI/public/modificarContacto/$id/$nombreContacto/$correoContacto/$telefonoContacto/$areaContacto/$empresaContacto/$descripcionContacto"),
      headers: {"Accept": "application/json"});
  Map<String, dynamic> data = json.decode(response.body);
  print(data["status"]);

  return data;
}
