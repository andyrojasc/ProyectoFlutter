import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/ui_settings.dart';
//Clase encargada de temear las paginas de manera custom dark
TextStyle listTitleDefaultTextStyle = TextStyle(
    color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600);
TextStyle listTitleSelectedTextStyle =
    TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600);

Color selectedColor = Color(0xFF4AC8EA);
Color selectedColorITM = Colors.white;
Color noSelectedColorITM = Colors.white70;
Color noSelectedColor =  Colors.white30;
Color drawerBackgroundColor = Color(0xFF272D34);
Color colorGreen = Colors.green;
Color colorOrange = Colors.orange;
Color colorBlue= Colors.blue;
Color colorIconSelected = selectedColor;
Color colorIconNoSelected = noSelectedColor;
Color colorSelected = drawerBackgroundColor;

Color color(color){
  if(color == "green"){
  colorSelected = colorGreen;
  return colorSelected;
  }else if (color == "dark"){
 colorSelected = drawerBackgroundColor;
 return colorSelected;
  }
  else if (color == "orange"){
 colorSelected = colorOrange;
 return colorSelected;
  }
  else{
 colorSelected = colorBlue;
 return colorSelected;
  }
}
Color colorIconSelec(color){
  if(color == "dark"){
  return colorIconSelected = selectedColor;
  }
  else{
    return colorIconSelected = selectedColorITM;
  }
}
Color colorIconNoSelec(color){
  if(color == "dark"){
 return colorIconNoSelected = noSelectedColor;
  }
  else{
   return  colorIconSelected = noSelectedColorITM;
  }
}



