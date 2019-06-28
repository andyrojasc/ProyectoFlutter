//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del metodo de detalles del contacto
import 'package:login_itmapp/UI/detail_contact.dart';
//importacion del widget agregar contacto
import 'package:login_itmapp/UI/ui_add_contact.dart';
import 'package:login_itmapp/UI/ui_login.dart';
//importacion del metodo obtener contactos
import 'package:login_itmapp/model/get_contacts.dart';

//Widget de estado obtener contactos
class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}
// clase obtener contactos
class _ContactsState extends State<Contacts> {
  @override
  //widget obtener contactos
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CrearContacto()));
        },
        backgroundColor: Color(0xFF29a0a8),
        foregroundColor: Colors.white,
        child: Icon(Icons.person_add),
        elevation: 3.0,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: !Uilogin.menuSelected ? 60 : 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder(
                    future: getContacts(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data == null) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                right: 40,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text("Cargando..."),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int id) {
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xFF29a0a8),
                                child: Text(
                                  snapshot.data[id].nombreContacto[0],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              title: Text(snapshot.data[id].nombreContacto),
                              subtitle: Text(snapshot.data[id].correo),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(snapshot.data[id])));
                              },
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
