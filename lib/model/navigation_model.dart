//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';

//Clase para crear los items del dashboard lateral

class NavigationModel {
  String title;
  IconData icon;
  NavigationModel({this.title, this.icon});
}
//array de tipo Navigation para almacenar los items
List<NavigationModel> navigationItems = [
  NavigationModel(title: 'Bitacora', icon: Icons.assignment),
  // NavigationModel(title: 'Recordatorios', icon: Icons.access_time),
  NavigationModel(title: 'Contactos', icon: Icons.contacts),
  NavigationModel(title: 'Agregar Usuario', icon: Icons.person_add),
  NavigationModel(title: 'Configuración', icon: Icons.settings),
];
