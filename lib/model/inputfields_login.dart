//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';

//Clase de inpusts del login
class CustomInputField extends StatelessWidget {
  //Variable de icono del input
  Icon fieldIcon;
  //Variable de placeholder del input
  String hintText;
  //Varaible para obtener el valor del input
  TextEditingController myController;
//Constructor de inputs del login
  CustomInputField(this.fieldIcon, this.hintText, this.myController);

  @override
  //Widget del login
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Color(0xFF29a0a8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: fieldIcon,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
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
    );
  }
}
