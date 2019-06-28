import 'package:flutter/material.dart';
import 'package:login_itmapp/UI/ui_load_contacts.dart';
import 'package:login_itmapp/UI/ui_register_user.dart';
import 'package:login_itmapp/UI/ui_settings.dart';
import 'package:login_itmapp/left_dashboard/collapsing_list_tile.dart';
import 'package:login_itmapp/model/navigation_model.dart';
import 'package:login_itmapp/pageload.dart';
import 'package:login_itmapp/dark_theme/theme.dart';

//Widget ebcargado de toda la funcionalidad del dashboard lateral
class CollapsingNavigationDrawer extends StatefulWidget {
  final String usuario;
  CollapsingNavigationDrawer({Key key, this.usuario}) : super(key: key);

  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  String usr;
  double maxWidth = 220;
  double minWidth = 57;
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;
  Page1 one;
  Page2 two;
  Contacts three;
  UI_Settings five;
  Ui_Register register;
  List<Widget> pages;
  Widget currentPage;
  List<String> listAppBarTitle;
  String apptitle;

  @override
  void initState() {
    usr = widget.usuario;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    widthAnimation = Tween<double>(begin: minWidth, end: maxWidth)
        .animate(_animationController);
    one = Page1('Page1');
    two = Page2('PAge2');
    three = Contacts();
    five = UI_Settings();
    register = Ui_Register();

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: drawerBackgroundColor,
            title: Text(apptitle),
          ),
          body: Container(
            child: Stack(
              children: <Widget>[
                currentPage,
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, widget) => getWidget(context, widget),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            CollapsingListTile(
              title: usr,
              icon: Icons.person,
              animationController: _animationController,
            ),
            Divider(
              color: Colors.grey,
              height: 40.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(
                    height: 12.0,
                  );
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                        currentPage = pages[counter];
                        apptitle = listAppBarTitle[counter];
//
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.reverse()
                      : _animationController.forward();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animationController,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
