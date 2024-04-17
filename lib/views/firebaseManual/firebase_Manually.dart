import 'package:flutter/material.dart';


class ManualFirebase extends StatefulWidget {
  const ManualFirebase({super.key});

  @override
  State<ManualFirebase> createState() => _ManualFirebaseState();
}

class _ManualFirebaseState extends State<ManualFirebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Firebase Manual integration',
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
