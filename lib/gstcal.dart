import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  final TextEditingController cntl =TextEditingController();
  final TextEditingController cntl1 =TextEditingController();
  double calgst=0;
  double sgst=0;
  double cgst=0;
  double actual=0;
  double total=0;
  
   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("GST Calculator")),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
                controller: cntl,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  labelText: "Bill amount"
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
                controller: cntl1,
                decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Gst %"
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    actual=double.parse(cntl.text)*100/
                        (double.parse(cntl1.text)+100);
                    calgst=double.parse(cntl.text)-actual;
                    sgst=calgst/2;
                    cgst=calgst/2;
                    total=actual+calgst;
                    double.parse(cntl.text)*double.parse(cntl1.text)/100;
                    total=double.parse(cntl.text)+calgst;
                  });
                  showDialog(
                    context: context,
                      builder:(BuildContext context) {
                        return AlertDialog(
                          content: Container(
                            height: 150,
                            width: 300,
                            child: Column(
                              children: [
                                Text(
                                  "ACTUAL:$actual",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                Text(
                                  "GST:$calgst",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "SGST:$sgst",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "CGST:$sgst",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),

                                )],
                            ),
                          ),
                        );
                      }
                    
                  );
                  
                },
                child: Text("Including Gst",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
                ),),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    calgst = double.parse(cntl.text) * double.parse(cntl1.text) / 100;
                    sgst = calgst / 2;
                    sgst = calgst / 2;
                    total = double.parse(cntl.text) + calgst;
                  });
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Container(
                            height: 300,
                            width: 350,
                            child: Column(
                              children: [
                                Text(
                                  "GST:$calgst",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "SGST:$sgst",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                Text(
                                  "CGST:$sgst",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "TOTAL:$total",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text("Excluding Gst",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
                ),),
              ),



            ],
          ),
        ],
      ),
    );
  }
}
