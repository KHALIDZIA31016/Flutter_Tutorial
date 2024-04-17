
import 'package:flutter/material.dart';

import 'codeText.dart';

class CodeButton extends StatelessWidget {
  const CodeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      clipBehavior: Clip.hardEdge,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(horizontal: 86.0, vertical: 10.0),
          ),
        ),
        onPressed: (){
      showDialog(context: context, builder: (context)
      => AlertDialog(


        icon: Icon(Icons.flutter_dash_rounded, color: Colors.blue,),
        title: Text('See the code of drop down button', style: TextStyle(
          color: Colors.grey,
          fontSize: 16
        ),),
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                CodeText()));
          }, child: Text('Continue')),
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel'))
        ],
      ));
    }, child: Text('Code'));
  }
}

