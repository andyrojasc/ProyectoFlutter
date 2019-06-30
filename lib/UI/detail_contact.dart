//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del widget de editar contactos
import 'package:login_itmapp/UI/ui_edit_contact.dart';
//importacion del tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
//importacion del metodo de contactos
import 'package:login_itmapp/model/contact.dart';
//importacion del metodo de realizar llamada
import 'package:login_itmapp/model/launch_call.dart';
//importacion del metodo de enviar mensaje
import 'package:login_itmapp/model/launch_message.dart';

//Clase Detalle de contacto
class DetailPage extends StatelessWidget {
  //variable para obtener el nombre del contacto
  final Contact contactName;
  //constructor del detalle de contacto
  DetailPage(this.contactName);
  @override
  Widget build(BuildContext context) {
    //Variable card con los datos del contacto
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: new IconButton(
                icon: Icon(
                  Icons.phone,
                  color: Color(0xFF29a0a8),
                  size: 35.0,
                ),
                onPressed: () {
                  launchcaller(contactName.numeroTelefono.toString());
                },
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: new Text(contactName.numeroTelefono.toString()),
            ),
            subtitle: new Text("Móvil"),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 9.0),
              child: IconButton(
                icon: Icon(
                  Icons.message,
                  color: Color(0xFF29a0a8),
                  size: 35,
                ),
                onPressed: () {
                  launchMessage(contactName.numeroTelefono.toString());
                },
              ),
            ),
          ),
          new Divider(
            color: Color(0xFF29a0a8),
            indent: 78,
          ),
          new ListTile(
            leading: new IconButton(
              icon: Icon(Icons.email, color: Color(0xFF29a0a8), size: 35.0),
              onPressed: () {
                print("email");
              },
            ),
            title: new Text(contactName.correo),
            subtitle: new Text("Correo"),
          ),
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
                          "Área",
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
                            contactName.area,
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
                            "Empresa",
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
                              contactName.empresa,
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
                              contactName.descripcion,
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
            ],
          )
        ],
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: Text(contactName.nombreContacto),
        backgroundColor: drawerBackgroundColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => EditarContacto(contactName)));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: () {
              print("delete");
            },
          ),
        ],
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(null),
        ),
      ),
      body: card,
    );
  }
}
