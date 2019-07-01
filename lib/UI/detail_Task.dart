//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del widget de editar contactos
import 'package:login_itmapp/UI/ui_edit_contact.dart';
import 'package:login_itmapp/UI/ui_load_tasks.dart';
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
    var card = new Card(
      child: new Column(
        children: <Widget>[
          Stack(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                  child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF29a0a8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                        child: Text(
                          "Fecha de la tarea",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                          child: Text(
                            task.fechaActividad.toString(),
                            style: TextStyle(
                                color: Colors.black87, fontSize: 17.0),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                    child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF29a0a8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                          child: Text(
                            "Descripción",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                            child: Text(
                              task.descripcion,
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 17.0),
                              textAlign: TextAlign.start,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ),      
              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Container(
                    child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF29a0a8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                          child: Text(
                            "Sub-Tareas",
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top:50.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          // width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height-300,
                          child: Tasks(),
                        ),
                      ),
                    )
                        
                        
                      
                   
                  ],
                )),
              ),        
            ],
          )
        ],
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: Text(task.nombreTarea),
        backgroundColor: drawerBackgroundColor,
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(null),
        ),
      ),
      body: card,
    );
  }
}
