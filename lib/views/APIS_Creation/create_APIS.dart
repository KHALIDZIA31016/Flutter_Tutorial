import 'package:flutter/material.dart';


class CreateAPIS extends StatefulWidget {
  const CreateAPIS({super.key});

  @override
  State<CreateAPIS> createState() => _CreateAPISState();
}

class _CreateAPISState extends State<CreateAPIS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'APIs creation Tutorial',
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              shadows: [
                Shadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(1.0, 2.7))
              ]),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 100,
      ),
    );
  }
}
