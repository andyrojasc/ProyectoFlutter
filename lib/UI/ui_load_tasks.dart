//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/color_picker.dart';
import 'package:login_itmapp/UI/detail_Task.dart';
//importacion del metodo de detalles del contacto
import 'package:login_itmapp/UI/detail_contact.dart';
//importacion del widget agregar contacto
import 'package:login_itmapp/UI/ui_add_contact.dart';
import 'package:login_itmapp/UI/ui_add_task.dart';
import 'package:login_itmapp/UI/ui_login.dart';
import 'package:login_itmapp/bottom_dashboard/bottom_dashboard.dart';
import 'package:login_itmapp/dark_theme/theme.dart';
//importacion del metodo obtener contactos
import 'package:login_itmapp/model/get_contacts.dart';
import 'package:login_itmapp/model/get_tasks.dart';

//Widget de estado obtener contactos
class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}
// clase obtener contactos
class _TasksState extends State<Tasks> {
  @override
  //widget obtener contactos
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add Tarea Principal');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CrearTarea()));
         },
        backgroundColor: SelectorColor.currentColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.person_add),
        elevation: 3.0,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: !Uilogin.menuSelected ? 30 : 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: FutureBuilder(
                    future: getTasks(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.data == null) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                right: 60,
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Center(
                                    child: Text("No existen tareas pendientes..."),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int id) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                                  color: colorIconSelec(BottomNavBar.colr),
                                      
                                ),
                                      child: Center(
                                      child:Text(
                                      snapshot.data[id].fechaActividad,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight:FontWeight.bold,
                                        ),
                                      )
                                      ),
                                      
                                     width: 90.0,
                                    height: 100.0,
                                    ),
                                    InkWell(
                                        onTap: (){
                                          print('Press');
                                         Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailTaskPage(snapshot.data[id])));
      
                                          },
                                               child: Container(
                                        
                                      decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                                  color: SelectorColor.currentColor,
                                        
                                ),
                                 
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top:15.0),
                                                
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left:15.0),
                                                  child: Text(
                                                  
                                                  snapshot.data[id].nombreTarea,
                                                  textAlign: TextAlign.start,
                                                  textDirection: TextDirection.ltr,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16.0,
                                                    fontWeight:FontWeight.bold,
                                                    
                                                    ),
                                                  ),
                                                ),
                                              ),
                                               Padding(
                                                 padding: const EdgeInsets.only(top:8.0,left:15.0,right: 15.0),
                                                 child: Text(
                                              snapshot.data[id].descripcion,
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 16.0,
                                                  fontWeight:FontWeight.w600,
                                                  ),
                                              ),
                                               ),
                                              
                                            ],
                                            
                                          ),
                                          
                                 
                                      width: !Uilogin.menuSelected ? 240 : 280.0,
                                        height: 100.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                            
                            // ListTile(
                            //   // leading: CircleAvatar(
                            //   //   backgroundColor: Color(0xFF29a0a8),
                            //   //   child: Text(
                            //   //     snapshot.data[id].nombreContacto[0],
                            //   //     style: TextStyle(color: Colors.white),
                            //   //   ),
                            //   // ),
                            //   title: Text(snapshot.data[id].nombreTarea),
                            //   subtitle: Text(snapshot.data[id].fechaActividad),
                            //   onTap: () {
                             
                            //     print('Pagina subtareas');
                            //     // Navigator.push(
                            //     //     context,
                            //     //     new MaterialPageRoute(
                            //     //         builder: (context) =>
                            //     //             DetailPage(snapshot.data[id])));
                            //   },
                            // );
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
