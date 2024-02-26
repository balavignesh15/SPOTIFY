import 'package:flutter/material.dart';

import 'class.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         backgroundColor: Colors.black87,
          body: NestedScrollView(
            headerSliverBuilder: (
                BuildContext context, bool innerBoxIsScrolled) {
            return[
              SliverAppBar(
                leading: Icon(
                  Icons.arrow_back,
                  color: Color(0xfffffff9),
                ),
                pinned:true,
                expandedHeight: 500,
                stretch: true,
                 titleSpacing: 10,
                backgroundColor: Colors.black,
                title: Text("Enthaara Enthaara"
                ,style: TextStyle(color: Colors.white),),
                flexibleSpace:
                Container(decoration:
                BoxDecoration(
                gradient: LinearGradient(colors: [
                 Color(0xff1f005c),
                 Color(0xf191414),
                 ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                ),
                  child: FlexibleSpaceBar(
                    centerTitle: false,
                    background: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 300,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: Color(0xfffffff9),
                                        ),
                                        hintText: "Find on the page",
                                        hintStyle: TextStyle(
                                          color: Color(0xfffffff9),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            color: Colors.white.withOpacity(
                                              (0.2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      height: 50,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.white.withOpacity(0.2),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Sort",
                                          style: TextStyle(
                                            color: Color(0xfffffff9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 300,
                              width: 300,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(right: 40, top: 180),
                                child: Center(
                                  child: Text(
                                    "Anirudh Mix",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img_1.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Anirudh Ravichander,Vivek-mervin,G.V prakash and more",
                                        style: TextStyle(
                                            color: Color(0xff9d9e9a),
                                            fontSize: 14)),
                                  ),
                                  // Text("A.R. Rahman",
                                  //     style: TextStyle(color: Color(0xff9d9e9a))),
                                  // Text("and more",
                                  //     style: TextStyle(
                                  //         color: Color(0xff9d9e9a), fontSize: 15))
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/img_2.png"),
                                    ),
                                  ),
                                ),
                                Text("Made for ",
                                    style: TextStyle(
                                        color: Color(0xff9d9e9a),
                                        fontSize: 15)),
                                Text("Balavignesh Ramlingam",
                                  style: TextStyle(
                                      color: Color(0xff9d9e9a),
                                      fontSize: 14),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              )
              )];
          },
      
      
      
            /// listview details
      
      
      
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_outline_outlined,size: 28,color: Colors.white60),
                          SizedBox(width: 20,),
                          Icon(Icons.download_for_offline_outlined,size: 28,color: Colors.white60),
                          SizedBox(width: 30,),
                          Icon(Icons.share,size: 28,color: Colors.white60),
                          SizedBox(width: 30,),
                          Icon(Icons.more_vert_outlined,size: 28,color: Colors.white60),
                          SizedBox(width: 95,),
                          Icon(Icons.shuffle,size: 28,color: Colors.green,),
                          SizedBox(width: 15,),
                          Container(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              child: Icon(Icons.play_arrow,
                                size: 25,
                                color:Colors.green ,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder
                      (itemCount: 20,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index)=>Card(
                        child: SingleChildScrollView(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/img_1.png"),),
                            title: Text("Enthara Enthara"),
                            subtitle: Text("Anirudh ravichandar"),
                            trailing: Icon(Icons.more_vert_rounded),
                            // title: Text(""),style: TextStyle(color: Color(0xff121212)),
                            // subtitle: Text(i1[index],style: TextStyle(color: Color(0xff9c9c9c)),),
                            // trailing: Icon(Icons.arrow_forward,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
          ),
        ),
    );
    
  }
}











