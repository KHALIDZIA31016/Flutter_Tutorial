import 'package:flutter/material.dart';


class FirebaseCLI extends StatefulWidget {
  const FirebaseCLI({super.key});

  @override
  State<FirebaseCLI> createState() => _FirebaseCLIState();
}

class _FirebaseCLIState extends State<FirebaseCLI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Firebase Using CLI',
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
