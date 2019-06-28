//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//importacion de metodo para enfocar inputs
import 'package:login_itmapp/model/fieldFocusNode.dart';
//Clase de registrar usuario
class RegisterInput extends StatelessWidget {
  //Variables para obtener el valor de  los inputs
  TextEditingController userController;
  TextEditingController emailController;
  TextEditingController passwordController;
  //variables de enfoque de nodo para enfocar o desenfocar inputs
  final FocusNode _userFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passFocus = FocusNode();
//Constructor de registrar usuario
  RegisterInput(
      this.userController, this.emailController, this.passwordController);
//Widget de Registrar usuario
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: 250,
            child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Color(0xFF29a0a8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0))),
                      width: 210,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          focusNode: _userFocus,
                          onFieldSubmitted: (term) {
                            print("quita user y pasa a email de: " +
                                _userFocus.toString() +
                                " a: " +
                                _emailFocus.toString());
                            fieldFocusChange(context, _userFocus, _emailFocus);
                          },
                          controller: userController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nombre de Usuario',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Container(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xFF29a0a8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        width: 210,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            focusNode: _emailFocus,
                            onFieldSubmitted: (term) {
                              fieldFocusChange(
                                  context, _emailFocus, _passFocus);
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Correo',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xFF29a0a8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0))),
                        width: 210,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            focusNode: _passFocus,
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Contraseña',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            onFieldSubmitted: (term) {
                              _passFocus.unfocus();
                            },
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
