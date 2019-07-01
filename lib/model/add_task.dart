//Importacion de paquetes para peticiones http
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_itmapp/UI/ui_login.dart';
//Metodo que agrega contactos a la base de datos
Future<Map<String, dynamic>> agregarTarea(
    fechaActividad,
    nombreActividad,
    descripcion,
    ) async {

  String ip = Uilogin.localhost;
  print(fechaActividad);
  print(nombreActividad);
  print(descripcion);
  // var date = fechaActividad.toString();
  http.Response response = await http.get(
      Uri.encodeFull(
          "http://$ip/LaravelAPI/public/crearTareaPrincipal/$fechaActividad/$nombreActividad/$descripcion"),
      headers: {"Accept": "application/json"});
  Map<String, dynamic> data = json.decode(response.body);
  print(data["status"]);

  return data;
}
