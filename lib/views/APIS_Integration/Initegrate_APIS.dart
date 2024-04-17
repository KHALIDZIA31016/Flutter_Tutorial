import 'package:flutter/material.dart';


class APISIntegration extends StatefulWidget {
  const APISIntegration({super.key});

  @override
  State<APISIntegration> createState() => _APISIntegrationState();
}

class _APISIntegrationState extends State<APISIntegration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'APIs integration Tutorial',
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
