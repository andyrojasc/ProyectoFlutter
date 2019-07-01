//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';

//import 'package:login_itmapp/model/fieldFocusNode.dart';
//import 'package:login_itmapp/model/fieldFocusNodeContact.dart';
//Clase de REgistrar contacto
class RegisterTask extends StatelessWidget {
  //variables para obtener el valor de los inputs
  TextEditingController fechaActividadController;
  TextEditingController nombreActividadController;
  TextEditingController descripcionController;
  
  //Variables para enfocar o desenfocar los inpusts
  final FocusNode fechaActividad = new FocusNode();
  final FocusNode nombreActividad = new FocusNode();
  final FocusNode description = new FocusNode();
//Constructor del registrar contactos
  RegisterTask(
    this.fechaActividadController,
    this.nombreActividadController,
    this.descripcionController,
      );
//Widget registrar contacto
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: 310,
            child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xFF29a0a8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))),
                      width: 265,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
//                            autofocus: true,
                          focusNode: nombreActividad,

//
                          onFieldSubmitted: (term) {
//                                if(!nameContact.hasFocus){

                            _fieldFocusChangeContact(
                                context, nombreActividad, description);

//                                }
                           
                          },
                          controller: nombreActividadController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nombre de la tarea',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
         
          Container(
            width: 310,
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xFF29a0a8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.description,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        width: 265,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            focusNode: description,
                            onFieldSubmitted: (term) {
                              description.unfocus();
                            },
//                              obscureText: true,
                            controller: descripcionController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Descripcion de la tarea',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

_fieldFocusChangeContact(
    BuildContext context, FocusNode actual, FocusNode next) {
  actual.unfocus();
  FocusScope.of(context).requestFocus(next);
}
