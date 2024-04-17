import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:widget_flutter/views/flutterWidgets/all_widgets.dart';



import '../views/APIS_Creation/create_APIS.dart';
import '../views/APIS_Integration/Initegrate_APIS.dart';
import '../views/firebaseCLI/firebase_CLI.dart';
import '../views/firebaseManual/firebase_Manually.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? index;
  List<String> subTitle = [
    'class 1',
    'class 2',
    'class 3',
    'class 4',
    'class 5'
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
            'Flutter Complete guide 2024',
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                shadows: [
                  Shadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(1.0, 2.7))
                ]),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          toolbarHeight: 70,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: subTitle.length & myTitle.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AllWidgetsScreen()));
                        } else if (index == 1) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FirebaseCLI()));
                        }  else if (index == 2) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ManualFirebase()));
                        } else if (index == 3) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => APISIntegration()));
                        } else if (index == 4) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAPIS()));
                        }
                      },
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Colors.blueGrey, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(0.3),
                          child: ListTile(
                            dense: true,
                            tileColor: Colors.blueGrey,
                            title: Text(
                              '${myTitle[index]}',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  shadows: [
                                    Shadow(
                                        color: Colors.grey,
                                        blurRadius: 10,
                                        offset: Offset(1.0, 2.7))
                                  ]),
                            ),
                            subtitle: Text(
                              '${subTitle[index]}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            trailing: RatingBar.builder(
                              itemSize: 25,
                              initialRating: 2.5,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
