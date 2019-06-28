//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//Paquete clase login API
import 'package:login_itmapp/UI/ui_login.dart';
//Paquete tema dark de la app
import 'package:login_itmapp/dark_theme/background.dart';

import 'UI/color_picker.dart';
import 'bottom_dashboard/bottom_dashboard.dart';
//Metodo Principal de la app
void main() {
  //Widget que corre un material app
  runApp(MaterialApp(
    //Propiedad para eliminar barra de debug
    debugShowCheckedModeBanner: false,
    //Propiedad de titulo del material app
    title: 'Login',
    //propiedad Home que ejecuta la clase principal
     home: LoginPage(),
    // home: UI_Color(),
  ));
}
// widget de estado de Login
class LoginPage extends StatefulWidget {
  @override
  //Creacion del estado
  _LoginPage createState() => _LoginPage();
}
// Clase Login
class _LoginPage extends State<LoginPage> {
  @override
  //Widget Login
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[Background(), Uilogin()],
    );
  }
}
