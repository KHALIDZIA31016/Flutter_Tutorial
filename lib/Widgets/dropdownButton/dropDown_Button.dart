import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/codeButton.dart';
class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {
  final Uri _url = Uri.parse('https://flutter.dev');
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  int indexedStep = 0;



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text(
          'Dropdown Button Code',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.list,
                      size: 16,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'Select Item',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 160,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Colors.redAccent,
                  ),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.yellow,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.redAccent,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all(6),
                    thumbVisibility: MaterialStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Steps to follow', style: TextStyle(
                    color: Colors.blueGrey.withOpacity(.9), fontSize: 20,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(.7),
                         offset: const Offset(0.2, 0.5),
                        blurRadius: 0.2
                      ),
                    ]
                  ),),
                ),
                Stepper(
                  controller: ScrollController(debugLabel: 'now happening',
                  keepScrollOffset: true,
                  ),

                  currentStep: indexedStep,
                  onStepTapped: (steps){
                    setState(() {
                      indexedStep  = steps;
                    });
                  },
                  steps: [
                  const Step(
                    title: Text('Fisrt Step'),
                      subtitle:  Text('Add dependecy using CLI'),
                      // label: Text('FLutter puba add dropdown_button2'),
                    isActive: true,
                     content:  Text('FLutter puba add "dropdown_button2"'),
                    state: StepState.indexed,
                  ),
                    const Step(
                      title: Text('Second Step'),
                      subtitle:  Text('Write a code for DropDown button'),
                      // label: Text('FLutter puba add dropdown_button2'),
                      isActive: true,
                      content:  CodeButton(),
                      state: StepState.indexed,
                    ),

                    Step(
                      title: const Text('Third Step'),
                      subtitle:  const Text('Available source of this package'),
                      // label: Text('FLutter puba add dropdown_button2'),
                      isActive: true,

                      content:  TextButton(
                        child: const Text('https://pub.dev/packages/dropdown_button2',),
                        autofocus: true,
                        isSemanticButton: mounted,
                        statesController: MaterialStatesController(),
                        onPressed: (){}
                      ),

                      state: StepState.indexed,
                    ),

                ]),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
