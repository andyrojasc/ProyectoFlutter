//Importacion del metodo del contacto
import 'package:login_itmapp/UI/ui_login.dart';
import 'package:login_itmapp/model/contact.dart';
//Importacion de paquete para peticiones http
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

//Metodo para obtener los contactos
Future<List<Contact>> getContacts() async {
  String ip = Uilogin.localhost;
  var data =
      await http.get("http://$ip/LaravelAPI/public/listaUsuarios");

  List jsonData = json.decode(data.body);
  List<Contact> contacts = [];
  var num = 0;
  while (num < jsonData.length) {
    Contact contact = Contact.fromJson(jsonData[num]);
    contacts.add(contact);
    num++;
  }
  return contacts;
}
