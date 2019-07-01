//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del widget de editar contactos
import 'package:login_itmapp/UI/ui_edit_contact.dart';
//importacion del tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
//importacion del metodo de contactos
import 'package:login_itmapp/model/contact.dart';
import 'package:login_itmapp/model/edit_contact.dart';
//importacion del metodo de realizar llamada
import 'package:login_itmapp/model/launch_call.dart';
//importacion del metodo de enviar mensaje
import 'package:login_itmapp/model/launch_message.dart';
import 'package:login_itmapp/model/task.dart';

//Clase Detalle de contacto
class DetailTaskPage extends StatelessWidget {
  //variable para obtener el nombre del contacto
  final Task task;
  //constructor del detalle de contacto
  DetailTaskPage(this.task);
  @override
  Widget build(BuildContext context) {
    //Variable card con los datos del contacto
    return Scaffold(
      appBar: AppBar(
        title: Text(task.nombreTarea),
      ),
    );
  }
}
