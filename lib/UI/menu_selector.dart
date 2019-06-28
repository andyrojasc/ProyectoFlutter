import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/ui_login.dart';
import 'package:login_itmapp/UI/ui_settings.dart';
import 'package:login_itmapp/bottom_dashboard/bottom_dashboard.dart';
import 'package:login_itmapp/left_dashboard/collapsing_navigation_drawer.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
Widget SelectorMenu(String userName,String menuconfig){
 if (menuconfig == "MenuLeft") {
   UI_Settings.nav1Selector = true;
   UI_Settings.nav2Selector = false;
   Uilogin.menuSelected = false;
  return  CollapsingNavigationDrawer(usuario: userName);
} 
else {
  UI_Settings.nav1Selector = false;
   UI_Settings.nav2Selector = true;
  Uilogin.menuSelected = true;
  return BottomNavBar();
}



//   print(Uilogin.menuSelected);
// if(Uilogin.menuSelected){
//   Uilogin.menuSelected = false;
//  return  CollapsingNavigationDrawer(usuario: userName);
// }
// else{
//   Uilogin.menuSelected = true;
//  return BottomNavBar();
// }
}





Future<String> getMenuConfig() async {
  var data =
      await http.get("http://10.62.18.42/LaravelAPI/public/listaUsuarios");

  String menu = json.decode(data.body);
  return menu;
}
// Future setMenuConfig(bool menu) async {
//   var menuConfig;
//    if (menu){
//       menuConfig = "MenuLeft";
//   }else{
//     menuConfig = "MenuBottom";
//   }
  
// }
Future<Map<String, dynamic>> setMenuConfig(menu) async {
   var menuConfig;
   if (menu){
      menuConfig = "MenuLeft";
  }else{
    menuConfig = "MenuBottom";
  }
  http.Response response = await http.get(
      Uri.encodeFull(
          "http://192.168.0.6/LaravelAPI/public/menuConfig/$menuConfig"),
      headers: {"Accept": "application/json"});
  Map<String, dynamic> data = json.decode(response.body);
  print(data["status"]);

  return data;
}




