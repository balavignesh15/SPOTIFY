import 'package:flutter/material.dart';

class ccontroller extends StatefulWidget {
  const ccontroller({super.key});

  @override
  State<ccontroller> createState() => _ccontrollerState();
}

class _ccontrollerState extends State<ccontroller> {
  
  final TextEditingController clname=TextEditingController();
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller:clname ,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              clname.text = "1";
            });

          }, child: Text("1"), )
        ],
      ),
    );
  }
}
