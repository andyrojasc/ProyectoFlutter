//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//importacion del metodo agregar contacto
import 'package:login_itmapp/model/add_contact.dart';
import 'package:login_itmapp/model/add_task.dart';
//importacion de los inputs del agregar contacto
import 'package:login_itmapp/model/inputfields_register_contact.dart';
//importacion del tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
import 'package:login_itmapp/model/inputfields_register_task.dart';
import 'package:intl/intl.dart';


//widget de estado crear contacto
class CrearTarea extends StatefulWidget {
  @override
  _CrearTareaState createState() => _CrearTareaState();
}
//clase crear contacto
class _CrearTareaState extends State<CrearTarea> {
  //variables para obtener el valor de los inputs
  final fechaActividad = TextEditingController();
  final nombreActividad = TextEditingController();
  final descripcion = TextEditingController();
  static var dateTask = new DateTime.now();
   DateTime selected = new DateTime.now();
   
    _showDateTimePicker() async {
      
    selected = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2050),
    );
dateTask =  selected;
    setState(() {});
  }
  @override
  //widget crear contacto
  Widget build(BuildContext context) {
     var dateFormat_1 = new Row(
      children: <Widget>[
        IconButton(
                       icon: Icon(Icons.date_range,color: Color(0xFF29a0a8),),
                         iconSize: 40.0,
                     onPressed: () {
                        
                       _showDateTimePicker();
                   },
                     ),
        selected != null
            ? new Text(
             
             
                new DateFormat("d MMMM").format(selected),
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              )
            : new SizedBox(
                width: 0.0,
                height: 0.0,
              ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
          title: Text("Agregar Tarea"),
          backgroundColor: drawerBackgroundColor),
      body: SingleChildScrollView(
        physics: ScrollPhysics(parent: ClampingScrollPhysics()),
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height + 100,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 10.0,
                  child: Center(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height + 150,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 15.0, top: 20),
                            child: Text(
                              'Agregue la tarea',
                              style: TextStyle(
                                color: Color(0xFF29a0a8),
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RegisterTask(
                            fechaActividad,
                              nombreActividad,
                              descripcion,
                              ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: 235,
                            height: 60,
                            child: dateFormat_1

                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            width: 235,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RaisedButton(
                                onPressed: () {
                                  
                                  agregarTarea(
                                      dateTask,
                                      nombreActividad.value.text,
                                      descripcion.value.text);
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                color: Color(0xFF29a0a8),
                                textColor: Colors.white,
                                child: Text(
                                  'AGREGAR TAREA',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ],
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
