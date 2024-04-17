
import 'package:flutter/material.dart';

class WidgetsContainer extends StatefulWidget {

  final String myTitle ;
  final int myIndex;


  WidgetsContainer({
    super.key,
    required this.myTitle,
    required this.myIndex,
  });

  @override
  State<WidgetsContainer> createState() => _WidgetsContainerState();
}

class _WidgetsContainerState extends State<WidgetsContainer> {

  final bool startLecture = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 90, width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.indigo),
                    color: Colors.blueGrey.shade300
                ),
                child:  ListTile(
                  title: Text(widget.myTitle),
                  subtitle: Text('----', style: TextStyle(fontSize: 25, color: Colors.white),),
                  leading: Text(widget.myIndex.toString(), style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.8)),),
                  trailing:  Icon(Icons.read_more_rounded, color: Colors.white,),
                ),
              ),
              const SizedBox(width: 15,),
              Column(
                children: [
                  Container(
                      height: 50, width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2),

                      ),
                      child: const Icon(Icons.adjust_sharp, color: Colors.grey, weight: 100, size: 25,)),
                  const SizedBox(height: 5,),
                  startLecture
                      ? Text('Start')
                      : Text('peding')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}