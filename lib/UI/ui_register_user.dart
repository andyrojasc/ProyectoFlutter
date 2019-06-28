////Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/ui_login.dart';
//Paquete que carga los inputs de registrar usuario
import 'package:login_itmapp/model/inputfields_register_user.dart';
//Importacion del metodo de registrar ususario
import 'package:login_itmapp/model/register_user.dart';
// Widget de estado registrar Usuario
class Ui_Register extends StatefulWidget {
  @override
  _Ui_RegisterState createState() => _Ui_RegisterState();
}
//Clase Registrar Usuario
class _Ui_RegisterState extends State<Ui_Register> {
  //Variables EditingController para obtener el valor de los inputs
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();
  //Array de tipo usuario
  var _tipoUsuario = ["Coordinador", "Asistente"];
  //Variable usuario por defecto
  var _defaultUser = 'Asistente';
  bool reverse = true;

  @override
  //Widget Registrar usuario
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        physics: ScrollPhysics(parent: ClampingScrollPhysics()),
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  left: !Uilogin.menuSelected ? 30 : 0 ,
                  top: MediaQuery.of(context).size.height / 5,
                  child: Center(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 25.0),
                            child: Text(
                              'Registre su usuario',
                              style: TextStyle(
                                color: Color(0xFF29a0a8),
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          DropdownButton<String>(
                            items:
                                _tipoUsuario.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(
                                  dropDownStringItem,
                                  style: TextStyle(color: Color(0xFF29a0a8)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected) {
                              setState(() {
                                this._defaultUser = newValueSelected;
                              });
                            },
                            value: _defaultUser,
                          ),
                          RegisterInput(
                              myController, myController2, myController3),
                          SizedBox(
                            height: 35.0,
                          ),
                          Container(
                            width: 225,
                            height: 50,
                            child: RaisedButton(
                              onPressed: () {
                                registrarUsuario(
                                    myController.value.text,
                                    myController2.value.text,
                                    myController3.value.text,
                                    _defaultUser);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              color: Color(0xFF29a0a8),
                              textColor: Colors.white,
                              child: Text(
                                'REGISTRAR USUARIO',
                                style: TextStyle(fontSize: 18.0),
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
