//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//Pagina 1 de Prueba para los elementos del dashboard
class Page1 extends StatelessWidget {
  //Variable del titulo del AppBar
  final String appbar;
  //Constructor de la pagina 1
  Page1(this.appbar);
//Widget Constructor de la pagina 1
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Container(color: Colors.white),
        ),
//        CollapsingNavigationDrawer()
      ],
    );
  }
}
//Pagina 2 de Prueba para los elementos del dashboard
class Page2 extends StatelessWidget {
  //Variable del titulo del AppBar
  final String appbart;
  //Constructor de la pagina 2
  Page2(this.appbart);
  @override
  //Widget Constructor de la pagina 1
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white),
    );
  }
}
