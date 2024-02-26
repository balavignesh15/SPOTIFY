
import 'dart:math';

import 'package:flutter/material.dart';

class calcu extends StatefulWidget {
  const calcu({super.key});

  @override
  State<calcu> createState() => _calcuState();
}

class _calcuState extends State<calcu> {

  final TextEditingController calls=TextEditingController();

  String first1="",second2="",ope="";
  bool clk=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Calculator",style: TextStyle(fontSize: 30),)),
      ),
      body:  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          TextFormField(textAlign: TextAlign.right,
            keyboardType: TextInputType.none,
            controller: calls,
            style: TextStyle(
              fontSize: 35,
              height: 3,
            ),
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder(),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  calls.text="";
                  first1 = "";
                  second2 = "";
                  ope="";
                  clk=false;

                });

              },
                child: Text("AC",style: TextStyle(
                    fontSize: 25,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                ),
              ),

              ElevatedButton(onPressed: (){
                setState(() {
                  calls.text="mod";
                  ope="mod";
                  clk = true;
                });

              },
                child: Text("mod",style: TextStyle(
                    fontSize: 25,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(onPressed: (){
                  calls.text="%";
                  ope="%";
                  clk=true;

              },
                child: Text("%",style: TextStyle(
                    fontSize: 30,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(onPressed: (){
                calls.text=calls.text.substring(0,calls.text.length - 1);
                // calls.text="";
                // clk=true;

              },
                child: Icon(Icons.backspace_outlined,size: 30,color: Colors.black,),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(32),
                ),
              ),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  calls.text="^";
                  ope="^";
                  clk=true;

                });

              },
                child: Text("^",style: TextStyle(
                    fontSize: 25,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(onPressed: (){
                calls.text="√";
                ope="√";
                clk=true;

              },
                child: Text("√",style: TextStyle(
                    fontSize: 30,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(onPressed: (){
                calls.text="/";
                ope="/";
                clk=true;
              },
                child: Text("/",style: TextStyle(
                    fontSize: 30,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(34),
                ),
              ),
            ],
          ),

          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){

                    if(clk == false)
                      {
                        second2+= "7";
                        calls.text = second2;

                      }
                    else
                    {
                      first1+= "7";
                      calls.text = first1;
                    }


                  },
                    child: Text("7",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        second2+="8";
                        calls.text=second2;

                      }
                    else{
                      first1+="8";
                      calls.text=first1;
                    }
                  },
                    child: Text("8",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="9";
                      calls.text=second2;
                    }
                    else{
                      first1+="9";
                      calls.text=first1;
                    }
                  },
                    child: Text("9",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    calls.text="*";
                    ope="*";
                    clk=true;
                  },
                    child: Text("*",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(33),
                    ),
                  ),


                ],
              ),

            ],

          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="4";
                      calls.text=second2;
                    }
                    else{
                      first1+="4";
                      calls.text=first1;
                    }

                    },
                    child: Text("4",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="5";
                      calls.text=second2;
                    }
                    else{
                      first1+="5";
                      calls.text=first1;
                    }

                  },
                    child: Text("5",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="6";
                      calls.text=second2;
                    }
                    else{
                      first1+="6";
                      calls.text=first1;
                    }

                  },
                    child: Text("6",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    calls.text="-";
                    ope="-";
                    clk=true;
                  },
                    child: Text("-",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),


                ],
              ),

            ],

          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                      {
                        second2+="1";
                        calls.text=second2;
                      }
                    else{
                      first1+="1";
                      calls.text=first1;
                    }
                  },
                    child: Text("1",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="2";
                      calls.text=second2;
                    }
                    else{
                      first1+="2";
                      calls.text=first1;
                    }
                  },
                    child: Text("2",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="3";
                      calls.text=second2;
                    }
                    else{
                      first1+="3";
                      calls.text=first1;
                    }
                  },
                    child: Text("3",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(29),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    calls.text = "+";
                    ope = "+";
                    clk =true;
                  },
                    child: Text("+",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),


                ],
              ),

            ],

          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="00";
                      calls.text=second2;
                    }
                    else{
                      first1+="00";
                      calls.text=first1;
                    }
                  },
                    child: Text("00",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+="0";
                      calls.text=second2;
                    }
                    else{
                      first1+="0";
                      calls.text=first1;
                    }
                  },
                    child: Text("0",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    if(clk==false)
                    {
                      second2+=".";
                      calls.text=second2;
                    }
                    else{
                      first1+=".";
                      calls.text=first1;
                    }
                  },
                    child: Text(".",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(36),
                    ),
                  ),
                  ElevatedButton(onPressed: (
                      ){
                    if(ope=="+")
                    {
                      double a = double.parse(first1);
                      double b = double.parse(second2);

                      double res=a+b;
                      calls.text=res.toString();
                    }


                    if(ope=="-")
                    {
                      double b= double.parse(first1);
                      double a= double.parse(second2);

                      double res=a-b;
                      calls.text=res.toString();

                    }


                      if(ope=="*")
                      {
                        double a =  double.parse(first1);
                        double b =  double.parse(second2);

                        double res=a*b;
                        calls.text=res.toString();
                      }

                      if(ope=="/")
                      {
                        double  b = double .parse(first1);
                        double a =double .parse(second2);

                        double  res = a / b;

                        calls.text=res.toString();
                      }

                      if(ope=="%")
                        {
                          double a =double.parse(first1);
                          double b =double.parse(second2);

                          double res = a*b/100;
                          calls.text=res.toString();
                        }

                    if(ope=="^")
                    {
                      double a =double.parse(first1);
                      double b =double.parse(second2);

                      num res = pow(a,b);
                      calls.text=res.toString();
                    }

                    if(ope=="√")
                    {

                      double a =double.parse(second2);
                      num res = sqrt(a);
                      calls.text=res.toString();
                    }


                    if(ope=="mod")
                    {
                      double b =double.parse(first1);
                      double a =double.parse(second2);
                      double res = a % b;
                      calls.text=res.toString();
                    }






                  },


                    child: Text("=",style: TextStyle(
                        fontSize: 30,color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(30),
                    ),
                  ),


                ],
              ),

            ],

          ),
        ],
      ),
    );
  }
}
