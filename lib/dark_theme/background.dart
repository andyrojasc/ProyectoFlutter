import 'package:flutter/material.dart';
//Widget encargado del color de fondo del login
class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[
        new GradientBack(),
        new Positioned(
            bottom: 0.0,
            child: new Container(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                decoration: new BoxDecoration(
                  color: Color(0xFF29a0a8),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xFF1b7b7f),
                      offset: new Offset(0, -1),
                      blurRadius: 2.0,
                    )
                  ],
                )))
      ],
    );
  }
}

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
    );
  }
}
