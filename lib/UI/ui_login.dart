//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/menu_selector.dart';
import 'package:login_itmapp/bottom_dashboard/bottom_dashboard.dart';
//Importacion de los inputs del login
import 'package:login_itmapp/model/inputfields_login.dart';
//importacion del dashboard lateral
import 'package:login_itmapp/left_dashboard/collapsing_navigation_drawer.dart';
//importacion del metodo login con API
import 'package:login_itmapp/model/login_API.dart';

//Widget de estado del Login
class Uilogin extends StatefulWidget {
  static bool menuSelected;
  static String localhost = "192.168.0.10";
  // static bool themeSelected = true;
  static String usrname;
  @override
  _UiloginState createState() => _UiloginState();
}
//Clase del login
class _UiloginState extends State<Uilogin> {
  //variables para obtener valor de los inputs
  final myController = TextEditingController();

  final myController2 = TextEditingController();
  
//Widget Login
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomPadding: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Stack(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Container(
                    width: 350,
                    height: 500,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/logo.png',
                          width: 250,
                          height: 250,
                        ),
                        CustomInputField(
                          Icon(Icons.person, color: Colors.white),
                          'Usuario',
                          myController,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomInputField(Icon(Icons.lock, color: Colors.white),
                            'Contraseña', myController2),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 250,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {
//                              // print();
                              loginAPI(myController.text, myController2.text)
                                  .then((res) {
                                print(res);
                                if (res["status"] == "login" &&
                                    res["status"] != null) {
                                  print(res["usuario"]);
                                Uilogin.usrname = res["usuario"];
                                var menuConfig = res["configMenu"];
                                  // if(Uilogin.menuSelected){
                                  
                                       Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (context) =>
                                      // Nav(Uilogin.usrname)));
                                      SelectorMenu(Uilogin.usrname,menuConfig)));
                                          // CollapsingNavigationDrawer(
                                          //     usuario: usrname)));
                               
                                  // }
                                  // else{
                                  //    Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         BottomNavBar()));
                                  // }
                                  } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: new Text("Login"),
                                        content: new Text(
                                            "Usuario o contraseña incorrectos"),
                                        actions: <Widget>[
                                          new FlatButton(
                                            child: new Text("Cerrar"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }).catchError((e) {
                                print(e);
                              });
//
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            color: Color(0xFF29a0a8),
                            textColor: Colors.white,
                            child: Text(
                              'INICIAR SESIÓN',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0.0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Center(
                      child: FlatButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: new Text("Contraseña"),
                                content: new Text("Su contraseña es: 1234"),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text("Close"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: new Text('Olvidé la contraseña',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
