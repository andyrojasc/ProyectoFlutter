import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_itmapp/UI/color_picker.dart';
import 'package:login_itmapp/UI/ui_login.dart';
import 'package:login_itmapp/bottom_dashboard/bottom_dashboard.dart';
import 'package:login_itmapp/bottom_dashboard/bottom_dashboard.dart' as prefix0;
import 'package:login_itmapp/dark_theme/theme.dart';
import 'package:login_itmapp/dark_theme/theme.dart' as prefix1;
import 'package:login_itmapp/pageload.dart';

import 'menu_selector.dart';

class UI_Settings extends StatefulWidget {
  static bool nav1Selector = true;
  static bool nav2Selector = false;
  // bool isSelectedColor;
  static var selectedColor = "dark";
 
  var themeSelected = "orange";
  @override
  _UI_SettingsState createState() => _UI_SettingsState();
}

class _UI_SettingsState extends State<UI_Settings> {
  
  bool themeSelector = true;
  String menuSelect;

  
  @override
  Widget build(BuildContext context) {
    return
    Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: !Uilogin.menuSelected ? 50 : 0,
                child: Container(
                  height: !Uilogin.menuSelected ? MediaQuery.of(context).size.height-100 :  MediaQuery.of(context).size.height -160 ,
                  width: !Uilogin.menuSelected ? MediaQuery.of(context).size.width-50 : MediaQuery.of(context).size.width ,
                  child:      DefaultTabController(
       length: 2,
            child: Scaffold(
              appBar: new PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: new Container(
              color: SelectorColor.currentColor,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    new Expanded(child: new Container()),
                    TabBar(
              tabs: [
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.person))
              ],
            ),
                  ],
                ),
              ),
            ),
          ),



              
          
        backgroundColor: Colors.white,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom:8.0),
          child: FloatingActionButton(
            backgroundColor: SelectorColor.currentColor,
            foregroundColor: Colors.white,
            child: Icon(Icons.save),
            elevation: 3.0,
            onPressed: (){
               Navigator.of(context).pushReplacement(MaterialPageRoute(
                                                builder: (context) =>
                                                 SelectorMenu(Uilogin.usrname,menuSelect)));
            }
            ,
            
          ),
        ),
        body: TabBarView(
          children: <Widget>[
             Container(
        
              child: Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            width: !Uilogin.menuSelected ? MediaQuery.of(context).size.width-135 : MediaQuery.of(context).size.width-90,
                            child: Row(
                              children: <Widget>[
                               Icon(Icons.more_vert,color: Colors.blueAccent,),
                                Text("DashBoard Lateral",style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black87
                                ),),
                              ],
                            ),
                          ),
                        ),
                        Switch(
            value: UI_Settings.nav1Selector,
            onChanged: (value) {
                    setState(() {
                      print("Value: "+value.toString());
                      // print("NavSelected: "+Nav.navSelected.toString());
                      UI_Settings.nav1Selector = value;
                      UI_Settings.nav2Selector = !value;
                    
                     if (Uilogin.menuSelected){
                       menuSelect = "MenuLeft";
                     }else{
                       menuSelect = "MenuBottom";
                     }
                    
                      
                      // BottomNavBar();
                    //  print(Uilogin.menuSelected);
                    });
            },
            activeTrackColor: Color(0xFF1b7b7f),
            activeColor: Color(0xFF29a0a8),
            inactiveTrackColor:Colors.red,
            inactiveThumbColor: Colors.redAccent,
          ),
          
          
                      ],
                    ),
               
                 Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Container(
                            width: !Uilogin.menuSelected ? MediaQuery.of(context).size.width-135 :MediaQuery.of(context).size.width-90,
                            child: Row(
                              children: <Widget>[
                               Icon(Icons.more_horiz,color: Colors.blueAccent,),
                                Text("DashBoard Inferior",style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black87
                                ),),
                              ],
                            ),
                          ),
                        ),
                        Switch(
            value: UI_Settings.nav2Selector,
            onChanged: (value) {
                    setState(() {
                      print("Value: "+value.toString());
                      // print("NavSelected: "+Nav.navSelected.toString());
                      UI_Settings.nav1Selector = !value;
                      UI_Settings.nav2Selector = value;
                    
                     if (Uilogin.menuSelected){
                       menuSelect = "MenuLeft";
                     }else{
                       menuSelect = "MenuBottom";
                     }
                      
                         
                      
                      // BottomNavBar();
                    //  print(Uilogin.menuSelected);
                    });
            },
            activeTrackColor: Color(0xFF1b7b7f),
            activeColor: Color(0xFF29a0a8),
            inactiveTrackColor:Colors.red,
            inactiveThumbColor: Colors.redAccent,
          ),
          
          
                      ],
                    ),
                
                  Divider(
                   height: 15.0,
                   color: Colors.blue,
                   
                 ),

                 ListTile(
                   title: Container(
                     child: Row(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(left:1.0),
                           child: Icon(Icons.color_lens,color: Colors.black87,),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:8.0),
                           child: Container (
                            width: 250,
                             child: Text("Seleccione un Color de Tema",style: TextStyle(fontSize: 18),),
                           ),
                         ),
                         Container(
                     width: 30,
                     height: 30,
                     child: new FlatButton(
                       child: new Text(""),

                     color: SelectorColor.currentColor,
                    //  UI_Settings.selectedColor == "orange" ? Colors.orange : Colors.orange[100],
                     onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SelectorColor()));
                      //  setState(() {
                      //    UI_Settings.selectedColor  = "orange";
                      //    BottomNavBar.colr = "orange";
                        
                      //  });
                     },
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0))
                ),
                   ),
                         
                       ],
                     ),
                   ),
                 ),
            //      Container(
                  
            //        width: MediaQuery.of(context).size.width/2,
            //        height: 50,
                   
            //          child: Row(
            //            mainAxisAlignment: MainAxisAlignment.spaceAround,
                       
            //           children: <Widget>[
            //                Container(
            //          width: 30,
            //          height: 30,
            //          child: new FlatButton(
            //            child: new Text(""),

            //          color: UI_Settings.selectedColor == "orange" ? Colors.orange : Colors.orange[100],
            //          onPressed: (){
                       
            //            setState(() {
            //              UI_Settings.selectedColor  = "orange";
            //              BottomNavBar.colr = "orange";
                        
            //            });
            //          },
            // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0))
            //     ),
            //        ),
            //        Container(
            //          width: 30,
            //          height: 30,
            //          child: new FlatButton(
            //            child: new Text(""),

            //          color: UI_Settings.selectedColor  == "blue" ? Colors.blue : Colors.blue[100],
            //          onPressed: (){
                       
            //            setState(() {
                      
            //             UI_Settings.selectedColor  = "blue";
            //             BottomNavBar.colr = "blue";
                        
            //            });
                     
            //          },
            // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0))
            //     ),
            //        ),
            //          Container(
            //          width: 30,
            //          height: 30,
            //          child: new FlatButton(
            //            child: new Text(""),

            //          color: UI_Settings.selectedColor  == "green" ? Colors.green : Colors.green[100],
            //          onPressed: (){
                       
            //            setState(() {
                       
            //              UI_Settings.selectedColor  = "green";
            //            BottomNavBar.colr = "green";
                   
            //            });
                       
            //          },
            // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0))
            //     ),
            //        ),
            //          Container(
            //          width: 30,
            //          height: 30,
            //          child: new FlatButton(
            //            child: new Text(""),

            //          color: UI_Settings.selectedColor  == "dark" ? Colors.grey : Colors.grey[100],
                    
            //          onPressed: (){
                     
            //            setState(() {
                       
            //              UI_Settings.selectedColor  = "dark";
            //              BottomNavBar.colr = "dark";
            //            });
            //          },
            // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(100.0))
            //     ),
            //        )
                    
                    
                     
            //           ],
            //          ),
                  
            //      ),
              
                 
                  ],
                ),
              ),
         
        ),
              Page1("ConfigUser")
          ],
        )
       
    ),
     )
,
                )
              )
            ]
          )
    );

  }
}


//  class TabMenuSettings extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//    return  MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.settings)),
//                 Tab(icon: Icon(Icons.person))
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//             UI_Settings(),
//              Page1("Pagina user settings")
//             ],
//           ),
//         ),
//       ),
//     );
//    }
//  }
