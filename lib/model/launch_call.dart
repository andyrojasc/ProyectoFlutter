//importacion paquete para realizar llamadas
import 'package:url_launcher/url_launcher.dart';
//Metodo para realizar llamadas
launchcaller(String phonenumber) async {
  var url = "tel:$phonenumber";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
