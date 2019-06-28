//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//Metodo para enfocar o desenfocar inputs
fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();

  FocusScope.of(context).requestFocus(nextFocus);
}
