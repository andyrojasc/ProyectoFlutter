//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//Metodo para enfocar o desenfocar inputs
fieldFocusChangeContact(
    BuildContext context, FocusNode actual, FocusNode next) {
  FocusScope.of(context).requestFocus(actual);
  actual.unfocus();
  FocusScope.of(context).requestFocus(next);
}
