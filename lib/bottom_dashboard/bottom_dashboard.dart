import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:login_itmapp/UI/color_picker.dart';
import 'package:login_itmapp/UI/ui_load_contacts.dart';
import 'package:login_itmapp/UI/ui_load_tasks.dart';
import 'package:login_itmapp/UI/ui_register_user.dart';
import 'package:login_itmapp/UI/ui_settings.dart';
import 'package:login_itmapp/dark_theme/theme.dart';




import '../pageload.dart';

class BottomNavBar extends StatefulWidget {
   
static var colr = "dark";
  @override
  
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 
Tasks one;
  Page2 two;
  Contacts three;
  UI_Settings five;
  Ui_Register register;
  
  List<Widget> pages;
  Widget currentPage;
  List<String> listAppBarTitle;
  String apptitle;
  String colorTheme;
  int _page = 0;
  
 
  @override
  
  initState(){
    super.initState();
      one = Tasks();
    two = Page2('PAge2');
    three = Contacts();
    five = UI_Settings();
    register = Ui_Register();
 colorTheme = UI_Settings.selectedColor;

    pages = [one, two, three, register, five];
    currentPage = one;
    listAppBarTitle = [
      "Bitacora",
      "Recordatorios",
      "Contactos",
      "Agregar Ususario",
      "Configuración de Usuario"
    ];
    apptitle = "Bitacora";
    
  }
 
//     void color(){
//  setState(() {
//  themeColor = UI_Settings.selectedColor;
//  });
// }
  
  Widget build(BuildContext context) {

    return Scaffold( 

         appBar: AppBar(
           backgroundColor: SelectorColor.currentColor,
        title: Text(apptitle,
        style: TextStyle(color: Colors.white),
        ),
      
      ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.library_books, size: 30,color: _page == 0 ? colorIconSelec(BottomNavBar.colr) :  colorIconNoSelec(BottomNavBar.colr)),
            Icon(Icons.alarm, size: 30,color: _page == 1 ? colorIconSelec(BottomNavBar.colr) :  colorIconNoSelec(BottomNavBar.colr)),
            Icon(Icons.contacts, size: 30,color: _page == 2 ? colorIconSelec(BottomNavBar.colr):  colorIconNoSelec(BottomNavBar.colr)),
            Icon(Icons.person_add, size: 30,color: _page == 3 ? colorIconSelec(BottomNavBar.colr):  colorIconNoSelec(BottomNavBar.colr)),
            Icon(Icons.settings, size: 30,color: _page == 4 ?colorIconSelec(BottomNavBar.colr) :  colorIconNoSelec(BottomNavBar.colr)),
          ],
          color:SelectorColor.currentColor,
          
           
          buttonBackgroundColor:SelectorColor.currentColor,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          
          onTap: (index) {
            setState(() {
              apptitle = listAppBarTitle[index];
              currentPage = pages[index];
              _page = index;
              
            });
          },
        ),
        body: currentPage
        );
  }
}
