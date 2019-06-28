//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//import 'package:login_itmapp/model/fieldFocusNode.dart';
//import 'package:login_itmapp/model/fieldFocusNodeContact.dart';
//Clase de REgistrar contacto
class RegisterContact extends StatelessWidget {
  //variables para obtener el valor de los inputs
  TextEditingController nameController;
  TextEditingController phoneController;
  TextEditingController emailController;
  TextEditingController areaController;
  TextEditingController workController;
  TextEditingController descriptionController;
  //Variables para enfocar o desenfocar los inpusts
  final FocusNode nameContact = new FocusNode();
  final FocusNode phoneContact = new FocusNode();
  final FocusNode emailContact = new FocusNode();
  final FocusNode area = new FocusNode();
  final FocusNode work = new FocusNode();
  final FocusNode description = new FocusNode();
//Constructor del registrar contactos
  RegisterContact(
      this.nameController,
      this.phoneController,
      this.emailController,
      this.areaController,
      this.workController,
      this.descriptionController);
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
                          focusNode: FocusNode(),

//
                          onFieldSubmitted: (term) {
//                                if(!nameContact.hasFocus){

                            _fieldFocusChangeContact(
                                context, nameContact, phoneContact);

//                                }
                            print("a desenfocar: " +
                                nameContact.toString() +
                                " a enfocar: " +
                                phoneContact.toString());
                          },
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nombre de Contacto',
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
                          Icons.phone,
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
                            focusNode: phoneContact,
                            onFieldSubmitted: (term) {
                              _fieldFocusChangeContact(
                                  context, phoneContact, emailContact);
                            },
                            controller: phoneController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Numero de Contacto',
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
          Container(
            width: 310,
            child: Padding(
              padding: const EdgeInsets.only(top: 180.0),
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
                          Icons.email,
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
                            focusNode: emailContact,
                            onFieldSubmitted: (term) {
                              _fieldFocusChangeContact(
                                  context, emailContact, area);
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Correo de Contacto',
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
          Container(
            width: 310,
            child: Padding(
              padding: const EdgeInsets.only(top: 270.0),
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
                          Icons.work,
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
                            focusNode: area,
                            onFieldSubmitted: (term) {
                              _fieldFocusChangeContact(context, area, work);
                            },
                            controller: areaController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Area en la que trabaja',
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
          Container(
            width: 310,
            child: Padding(
              padding: const EdgeInsets.only(top: 360.0),
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
                          Icons.business,
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
                            focusNode: work,
                            onFieldSubmitted: (term) {
                              _fieldFocusChangeContact(
                                  context, work, description);
                            },
                            controller: workController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Empresa a la que pertenece',
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
          Container(
            width: 310,
            child: Padding(
              padding: const EdgeInsets.only(top: 450.0),
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
                            controller: descriptionController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Descripcion de Contacto',
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
