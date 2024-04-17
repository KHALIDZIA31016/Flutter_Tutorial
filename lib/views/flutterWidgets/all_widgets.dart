import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:widget_flutter/homeScreen/home_Screen.dart';

import '../../Widgets/widgets_container.dart';


class AllWidgetsScreen extends StatefulWidget {
  const AllWidgetsScreen({super.key});

  @override
  State<AllWidgetsScreen> createState() => _AllWidgetsScreenState();
}

class _AllWidgetsScreenState extends State<AllWidgetsScreen> {
  List<String> subTitle = [
    ' 1',
    ' 2',
    ' 3',
    ' 4',
    ' 5',
  ];
  List<String> myTitle = [
    'Flutter Widgets',
    'Firebase CLI',
    'Firebase Manual',
    'API\'s Integration',
    ' API\'s Creation'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complete Flutter widgets',
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: (){
                  showDialog(context: context, builder: (context) => AlertDialog(
                    title: Text('Start the lecture '),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }, child: Text('Continue')),
                      ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel'))
                    ],
                  ));
                },
                child: WidgetsContainer(myTitle: 'Circle Avator',myIndex: 1,)),
            WidgetsContainer(myTitle: 'TextForm Field',myIndex: 2,),
            WidgetsContainer(myTitle: 'validations',myIndex: 3,),
            WidgetsContainer(myTitle: 'reset password', myIndex: 4,),
            WidgetsContainer(myTitle: 'phone number field', myIndex: 5,),
            WidgetsContainer(myTitle: 'bottom sheet',myIndex: 6,),
            WidgetsContainer(myTitle: 'alert dialog',myIndex: 7,),
          ],
        ),
      )
    );
  }
}

