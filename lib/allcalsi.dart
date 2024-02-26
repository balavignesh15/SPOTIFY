import 'package:flutter/material.dart';

import 'bmicalcul.dart';
import 'cal2.dart';
import 'calculator.dart';
import 'calsi.dart';
import 'gstcal.dart';

class callses extends StatefulWidget {
  const callses({super.key});

  @override
  State<callses> createState() => _callsesState();
}

class _callsesState extends State<callses> {

  int _index=0;

  final files=[
    calcu(),
    calsi2(),
    gst(),
    bmi(),
  ];


  void onpress(index)
  {
    setState(() {
      _index=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: files[_index],
     bottomNavigationBar:  BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.calculate),label:"calculator",backgroundColor: Colors.black54 ),
       BottomNavigationBarItem(icon: Icon(Icons.calculate),label:"List",backgroundColor: Colors.black54 ),
       BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "Gst",backgroundColor: Colors.black54),
       BottomNavigationBarItem(icon: Icon(Icons.monitor_weight),label: "Bmi",backgroundColor: Colors.black54)
     ],
       currentIndex: _index,
       onTap: onpress,

     ),
    );
  }
}
