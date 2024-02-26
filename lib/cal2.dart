import 'package:flutter/material.dart';

class calsi2 extends StatefulWidget {
  const calsi2({super.key});

  @override
  State<calsi2> createState() => _calsi2State();
}

class _calsi2State extends State<calsi2> {




  final TextEditingController ctrl1 =TextEditingController();
  List<int> listName = [];






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("List",style: TextStyle(
          fontSize: 28
        ),)),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextFormField(
              controller: ctrl1,
              decoration:InputDecoration(
                labelText: "Enter value",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(12),
                )
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    listName.add(int.parse(ctrl1.text));
                  });
                },
                child: Text("Ok",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
                ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    ctrl1.clear();

                  });
                },
                child: Text("clear",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
                ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(28),
                ),
              ),

            ],
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: listName.length,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(listName[index].toString())),
                      ),
                    );
                  }
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                var s= listName.reduce((curr, next) => curr < next ? curr: next);
               ctrl1.text = s.toString();
               print(s);
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context)
                    {
                      return Container(
                        height: 200,
                        width: 350,
                        color: Colors.black,
                        child: Center(
                          child: Text(ctrl1.text,style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                          ),),
                        ),
                             );
                            }
                          );
                        },
                     child: Text("Min",
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold),),
                   style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15),
                     ),
                     padding: EdgeInsets.all(28)
                   ),
                 ),
              ElevatedButton(
                onPressed: (){
                  var s= listName.reduce((curr, next) => curr > next ? curr: next);
                  ctrl1.text = s.toString();
                  print(s);
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context)
                      {
                        return Container(
                          height: 200,
                          width: 350,
                          color: Colors.black,
                          child: Center(
                            child: Text(ctrl1.text,style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),),
                          ),
                        );
                      }
                  );
                },
                child: Text("Max",
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  padding: EdgeInsets.all(28)
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  setState(() {
                   listName =List.from(listName)..sort((a,b)=>a.compareTo(b));
                  });
                },
                child: Text("ascending",style: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.bold
                ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(28),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    listName =List.from(listName)..sort((a,b)=>b.compareTo(a));
                  });
                },
                child: Text("decending",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
                ),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(28),
                ),
              ),
            ],
          ),





        ],
      ),

    );
  }
}


