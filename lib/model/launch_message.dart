//importacion paquete url_launcher para activar la app de mensaje
import 'package:url_launcher/url_launcher.dart';

//metodo para enviar mensajes
launchMessage(String phonenumber) async {
  var url = "sms:$phonenumber";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
