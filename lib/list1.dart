import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

  final TextEditingController con =TextEditingController();
  List<int> l1= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
              controller: con,
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
          ElevatedButton(onPressed: (){}, child: Text("Ok")
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
                itemCount: l1.length,
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()
                    ),
                    child: Text(l1[index].toString()),

                  );
                }
            ),
          ),

        ],
      ),
    );
  }
}


