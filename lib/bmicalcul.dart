import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController _weight =TextEditingController();
  final TextEditingController _height =TextEditingController();
  String bmi="";
  double result = 0;
  Color dialogcolor=Colors.red;

  final _fromkey=GlobalKey<FormState>() ;

  void _calculateBmi() {
    setState(() {
      result = double.parse(_weight.text)/
          (double.parse(_height.text)* double.parse(_height.text))*10000;
      if (result < 18.5) {
        bmi = "Underweight";
        dialogcolor=Colors.yellow;
      }
      else if(result >= 18.5 && result < 24.9){
        bmi="normal weight";
        dialogcolor=Colors.green;
      }
      else if(result >= 24.9 && result < 29.9){
        bmi="over weight";
        dialogcolor=Colors.red;
      }
      else {
        bmi="obesity";
        dialogcolor=Colors.orange;
      }

    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("BMI Calculator")),
        backgroundColor: Colors.cyan,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _fromkey,
              child: TextFormField(
               controller: _height,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "height in cm"
                ),
                validator: (value){
                 if (value!.isEmpty ||
                     !RegExp(r'^[+]*+[(]{0,1}[0-9]{0,4}+[-\s\./0-9]$').hasMatch(value!)) {
                   return "Enter correct number";
                 }else{
                   return null;
                 }
                }
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: TextFormField(
                key: _fromkey,
                controller: _weight,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "weight in kg"
                ),
                // validator: (value){
                //   if(value!.isEmpty ||
                //   !RegExp(r'^[+]*+[(]{0,1}[0-9]{0,4}+[-\s\./0-9]$').hasMatch(value!))
                //     {
                //       return "Enter mumber";
                //     }
                //   else{
                //     return null;
                //   }
                // }

              ),
            ),
          ),
          ElevatedButton

            (style: ElevatedButton.styleFrom(
              minimumSize: Size(130, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),


            onPressed: (){
              // if (_fromkey.currentState!.validate())
              //  {
              //    return;
              //  }
              //   else{
              //     return null;
              // };
            _calculateBmi();
            print(bmi);


          // if (bmi == "Underweight") {
          //
          //      dialogcolor = Colors.blue;
          //
          //
          // }
          // else if (bmi == 'Normal weight') {
          //   print("abcd");
          //
          //   dialogcolor = Colors.yellow;
          //
          // }
          // else if (bmi == 'Overweight') {
          //   dialogcolor = Colors.green;
          // }
          // else if (bmi == 'obesity') {
          //   dialogcolor = Colors.red;
          // }


              showModalBottomSheet(
                  backgroundColor:dialogcolor,
                  context: context,
                  builder:(BuildContext context )
                 {
                return Container(

                  width: 450,
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text(
                      "BMI:$result",
                      style: TextStyle(
                          fontSize: 25, fontWeight:
                      FontWeight.bold),),
                    Text(
                      "Weight Status:$bmi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )],
                    ),
                  ) ,
                );
            }
            );
          },

              child: Text("Calculate",style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold
              ),),),
        ],
      ),
    );
  }
}
