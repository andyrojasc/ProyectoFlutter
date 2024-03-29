//Paquete de Material Design Utilizado para cargar widgets
import 'package:flutter/material.dart';
//Importacion de tema custom dark
import 'package:login_itmapp/dark_theme/theme.dart';
//Widget encargado de generar los tiles o elementos del dashboard lateral
class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;
  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animationController,
      this.isSelected = false,
      this.onTap});
  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation = Tween<double>(begin: 70.0, end: 220.0)
        .animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 0, end: 10).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            color: widget.isSelected
                ? Colors.transparent.withOpacity(0.3)
                : Colors.transparent),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Container(),
            Icon(
              widget.icon,
              color: widget.isSelected ? selectedColor : Colors.white30,
              size: 25.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 220)
                ? Text(widget.title,
                    style: widget.isSelected
                        ? listTitleSelectedTextStyle
                        : listTitleDefaultTextStyle)
                : Container()
          ],
        ),
      ),
    );
  }
}
