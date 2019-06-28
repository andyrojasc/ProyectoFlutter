import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/block_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_colorpicker/material_picker.dart';




class SelectorColor extends StatefulWidget {
 static Color pickerColor = Color(0xff443a49);
static Color  currentColor = Color(0xff443a49);
  @override
  _SelectorColorState createState() => _SelectorColorState();
}

class _SelectorColorState extends State<SelectorColor> {
  // create some value
  List<Color> colors = [
        Color(0xFF29a0a8),
        Color(0xFFf18613),
        Color(0xFFa1a422),
        Color(0xFF295279),
         Color(0xFF272D34)
    ];

ValueChanged<Color> onColorChanged;
// bind some values with [ValueChanged<Color>] callback
changeColor(Color color) {
  setState(() => SelectorColor.pickerColor = color);
}
  @override
  Widget build(BuildContext context) {

      return
         Container(
           color: Colors.white,
           height: MediaQuery.of(context).size.height,
           child: AlertDialog(

            title: const Text("Seleccione un color"),
            content: SingleChildScrollView(
             child: BlockPicker(
               availableColors: colors,
        pickerColor: SelectorColor.currentColor,
        onColorChanged: changeColor,
      ),
            ),
             actions: <Widget>[
      FlatButton(
        child: IconButton(
          icon: Icon(Icons.check_circle,color: SelectorColor.currentColor,size: 40,)
        
        ,),
        onPressed: () {
            setState(() => SelectorColor.currentColor = SelectorColor.pickerColor);
            Navigator.of(context).pop();
        },
      ),
    ],
        ),
         );
      
    
  }
}



// // raise the [showDialog] widget
// showDialog(
//   context: context,
//   child: AlertDialog(
//     title: const Text('Pick a color!'),
//     content: SingleChildScrollView(
//       child: ColorPicker(
//         pickerColor: pickerColor,
//         onColorChanged: changeColor,
//         enableLabel: true,
//         pickerAreaHeightPercent: 0.8,
//       ),
//       // Use Material color picker
//       // child: MaterialPicker(
//       //   pickerColor: pickerColor,
//       //   onColorChanged: changeColor,
//       //   enableLabel: true, // only on portrait mode
//       // ),
//       //
//       // Use Block color picker
//       // child: BlockPicker(
//       //   pickerColor: currentColor,
//       //   onColorChanged: changeColor,
//       // ),
//     ),
//     actions: <Widget>[
//       FlatButton(
//         child: Text('Got it'),
//         onPressed: () {
//           setState(() => currentColor = pickerColor);
//           Navigator.of(context).pop();
//         },
//       ),
//     ],
//   ),
// )
class UI_Color extends StatefulWidget {
  @override
  _UI_ColorState createState() => _UI_ColorState();
}

class _UI_ColorState extends State<UI_Color> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlatButton(
          color: Colors.lightBlueAccent,
          child: Text("Seleccione un color"),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SelectorColor()));
          },
        ),
      ),
    );
  }
}