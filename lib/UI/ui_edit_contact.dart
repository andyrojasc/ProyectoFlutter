//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion del widget de editar contactos
import 'package:login_itmapp/UI/ui_edit_contact.dart';
//importacion del tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
//importacion del metodo de contactos
import 'package:login_itmapp/model/contact.dart';
import 'package:login_itmapp/model/edit_contact.dart';
import 'package:login_itmapp/model/get_contacts.dart';
//importacion del metodo de realizar llamada
import 'package:login_itmapp/model/launch_call.dart';
//importacion del metodo de enviar mensaje
import 'package:login_itmapp/model/launch_message.dart';

import 'detail_contact.dart';

//Clase Detalle de contacto
class EditarContacto extends StatelessWidget {
  //variable para obtener el nombre del contacto
  final Contact contactName;
  final nombreController = TextEditingController();
  final numeroController = TextEditingController();
  final correoController = TextEditingController();
  final areaController = TextEditingController();
  final empresaController = TextEditingController();
  final descripcionController = TextEditingController();
  //constructor del detalle de contacto
  EditarContacto(this.contactName);
  @override
  Widget build(BuildContext context) {
    //Variable card con los datos del contacto
    var card = new Card(
      child: new Column(
        children: <Widget>[
          new ListTile(
            // leading: Padding(
            //   padding: const EdgeInsets.only(top: 12.0),
            //   child: new IconButton(
            //     icon: Icon(
            //       Icons.phone,
            //       color: Color(0xFF29a0a8),
            //       size: 35.0,
            //     ),
            //     onPressed: () {
            //       launchcaller(contactName.numeroTelefono.toString());
            //     },
            //   ),
            // ),
            title: Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child:
              new TextFormField(
                controller: numeroController,
                decoration: InputDecoration(
                  hintText: contactName.numeroTelefono.toString(),
                  border: InputBorder.none,
                ),
              ),
            ),
            subtitle: new Text("Móvil"),
            // trailing: Padding(
            //   padding: const EdgeInsets.only(top: 9.0),
            //   child: IconButton(
            //     icon: Icon(
            //       Icons.message,
            //       color: Color(0xFF29a0a8),
            //       size: 35,
            //     ),
            //     onPressed: () {
            //       launchMessage(contactName.numeroTelefono.toString());
            //     },
            //   ),
            // ),
          ),
          new Divider(
            color: Color(0xFF29a0a8),
            
          ),
          new ListTile(
            // leading: new IconButton(
            //   icon: Icon(Icons.email, color: Color(0xFF29a0a8), size: 35.0),
            //   onPressed: () {
            //     print("email");
            //   },
            // ),
            title: 
            TextFormField(
              controller: correoController,
                decoration: InputDecoration(
                  hintText: contactName.correo,
                  border: InputBorder.none,
                ),
              ),
            
            subtitle: new Text("Correo"),
          ),
          Stack(
            textDirection: TextDirection.ltr,
            children: <Widget>[
              Container(
                  child: Stack(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF29a0a8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                            child: Text(
                              "Área",
                              style: TextStyle(color: Colors.white, fontSize: 17.0),
                              textAlign: TextAlign.start,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                              child: 
                               TextFormField(
                                 controller: areaController,
                                 style: TextStyle(
                                    color: Colors.black87, fontSize: 17.0),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr, 
                decoration: InputDecoration(
                  hintText: contactName.area,
                  border: InputBorder.none,
                  
                ),
              ),
                              // Text(
                              //   contactName.area,
                              //   style: TextStyle(
                              //       color: Colors.black87, fontSize: 17.0),
                              //   textAlign: TextAlign.start,
                              //   textDirection: TextDirection.ltr,
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF29a0a8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                              child: Text(
                                "Empresa",
                                style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                                child: 
                                TextFormField(
                                 controller: empresaController,
                                 style: TextStyle(
                                    color: Colors.black87, fontSize: 17.0),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr, 
                decoration: InputDecoration(
                  hintText: contactName.empresa,
                  border: InputBorder.none,
                  
                ),
              ),
                                
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Container(
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF29a0a8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                              child: Text(
                                "Descripción",
                                style:
                                TextStyle(color: Colors.white, fontSize: 17.0),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4.0, left: 6.0),
                                child: TextFormField(
                                 controller: descripcionController,
                                 style: TextStyle(
                                    color: Colors.black87, fontSize: 17.0),
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.ltr, 
                decoration: InputDecoration(
                  hintText: contactName.descripcion,
                  border: InputBorder.none,
                  
                ),
              ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
    return new Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: nombreController,
          style: TextStyle(color: Colors.white,fontSize: 20.0) ,
decoration: InputDecoration(
  hintText: contactName.nombreContacto,
  hintStyle: TextStyle(color: Colors.white),
  
  border: InputBorder.none,
),
          
          ),
        backgroundColor: drawerBackgroundColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () {
              print("Save");
               editar(
                              contactName,
                              nombreController.value.text,
                              numeroController.value.text,
                              correoController.value.text,
                              areaController.value.text,
                              empresaController.value.text,
                              descripcionController.value.text);
                              contactName.nombreContacto = nombreController.value.text;
                             Navigator.pushReplacement(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(contactName)));
//              Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => EditarContacto(contactName)));
            },
          ),

        ],
        leading: new IconButton(
          icon: new Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(null),
        ),
      ),
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
         child: card,
      )
     
    );
  }
}
void editar(contactName, nombreController, numeroController,correoController,areaController,empresaController,descripcionController){
  if(nombreController == ""){
    nombreController = contactName.nombreContacto;
  }
  else if(numeroController== ""){
numeroController = contactName.numeroTelefono;
  }
  else if(correoController ==""){
correoController = contactName.correo;
  }
  else if (areaController ==""){
areaController = contactName.area;
  }
  else if(empresaController ==""){
    empresaController = contactName.empresa;

  }
  else if(descripcionController == ""){
descripcionController = contactName.descripcion;
  }

if(nombreController != "" && correoController != "" && numeroController!="" && areaController !=""
&& empresaController!="" && descripcionController != ""){
 editarContacto(contactName.id,nombreController,correoController,numeroController,
    areaController,empresaController,descripcionController);
    
}
else{
  editar(contactName, nombreController, numeroController,correoController,areaController,empresaController,descripcionController);

}
   
                               
}