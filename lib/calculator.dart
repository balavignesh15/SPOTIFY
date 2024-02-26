import 'package:flutter/material.dart';

class Calsi extends StatefulWidget {
  const Calsi({super.key});

  @override
  State<Calsi> createState() => _CalsiState();
}

class _CalsiState extends State<Calsi> {

  final TextEditingController call=TextEditingController();

  String num1="",num2="",optr="";
   bool clk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Calculator",style: TextStyle(fontSize: 30),)),
      ),
      body:  Column(
        children: [
          SizedBox(height: 100,),

          TextFormField(controller: call,),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

                if(clk==false)
                  {
                    num2= "1";
                    call.text = num2;
                  }
                else
                  {
                    num1= "1";
                    call.text = num1;
                  }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){
                if(clk==false)
                {
                  num2= "2";
                  call.text = num2;
                }
                else
                {
                  num1= "2";
                  call.text = num1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                call.text = "+";
                optr = "+";
                clk =true;


              }, child: Text("+")),
              ElevatedButton(onPressed: (){

                if(optr == "+")
                  {
                    int a = int.parse(num1);
                    int b = int.parse(num2);

                    int res = a+b;

                    call.text = res.toString();
                  }
              }, child: Text("=")),
            ],
          )
        ],
      )


    );
  }
}
