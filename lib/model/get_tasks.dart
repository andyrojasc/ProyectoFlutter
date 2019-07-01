//Importacion del metodo del contacto
import 'package:login_itmapp/UI/ui_login.dart';
import 'package:login_itmapp/model/contact.dart';
//Importacion de paquete para peticiones http
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_itmapp/model/task.dart';

//Metodo para obtener los contactos
Future<List<Task>> getTasks() async {
  String ip = Uilogin.localhost;
  var data =
      await http.get("http://$ip/LaravelAPI/public/selectTareaPrincipal");

  List jsonData = json.decode(data.body);
  List<Task> tasks = [];
  var num = 0;
  while (num < jsonData.length) {
    Task task = Task.fromJson(jsonData[num]);
    tasks.add(task);
     print(num);
    num++;
  }
 
  return tasks;
}
