//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del metodo agregar contacto
import 'package:login_itmapp/model/add_contact.dart';
//importacion de los inputs del agregar contacto
import 'package:login_itmapp/model/inputfields_register_contact.dart';
//importacion del tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
//widget de estado crear contacto
class CrearContacto extends StatefulWidget {
  @override
  _CrearContactoState createState() => _CrearContactoState();
}
//clase crear contacto
class _CrearContactoState extends State<CrearContacto> {
  //variables para obtener el valor de los inputs
  final nombreController = TextEditingController();
  final numeroController = TextEditingController();
  final correoController = TextEditingController();
  final areaController = TextEditingController();
  final empresaController = TextEditingController();
  final descripcionController = TextEditingController();

  @override
  //widget crear contacto
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Agregar Contacto"),
          backgroundColor: drawerBackgroundColor),
      body: SingleChildScrollView(
        physics: ScrollPhysics(parent: ClampingScrollPhysics()),
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height + 100,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 10.0,
                  child: Center(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height + 150,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 15.0, top: 20),
                            child: Text(
                              'Registre el contacto',
                              style: TextStyle(
                                color: Color(0xFF29a0a8),
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RegisterContact(
                              nombreController,
                              numeroController,
                              correoController,
                              areaController,
                              empresaController,
                              descripcionController),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: 235,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RaisedButton(
                                onPressed: () {
                                  agregarContacto(
                                      nombreController.value.text,
                                      correoController.value.text,
                                      numeroController.value.text,
                                      areaController.value.text,
                                      empresaController.value.text,
                                      descripcionController.value.text);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                color: Color(0xFF29a0a8),
                                textColor: Colors.white,
                                child: Text(
                                  'REGISTRAR CONTACTO',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
