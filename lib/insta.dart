import 'package:flutter/material.dart';

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 480,
                  pinned: true,
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sun News"),
                  ),
                  leading: Icon(Icons.arrow_back),
                  actions: [
                    Icon(Icons.notifications),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.more_vert_rounded),
                    SizedBox(
                      width: 20,
                    )
                  ],
                  centerTitle: false,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /// profile image

                            Container(
                              height: 100,
                              width: 100,
                              //color: Colors.cyan,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                ),
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/img_4.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),

                            /// post

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "100K",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "post",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),

                            /// follwers

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2.7M",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),

                            /// follwing

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "25",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Text(
                                "Sun News Tamil",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Text(
                                "News & media Website",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 45,
                              width: 150,
                              
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(width: 5,),
                                    Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 150,

                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Message",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 70,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ), child:Center(child: Icon(Icons.person_add,color: Colors.white,)),

                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 120,
                          // color: Colors.black54,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(

                                              image: DecorationImage(
                                                image: AssetImage("assets/img_5.png"),
                                                fit: BoxFit.fill,

                                              ),
                                              shape: BoxShape.circle,
                                            ),

                                          ),
                                        ),
                                        Text("Highlight",style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  );
                            },
                          ),

                        ),

                      ],
                    ),
                  ),
                  bottom: TabBar(
                    tabs: [
                      Icon(Icons.indeterminate_check_box),
                      Icon(Icons.movie_creation),
                      Icon(Icons.contact_page_rounded),

                    ],
                  ),
                ),
              ];

            },
            body: TabBarView(
            children: [
                Container(
                   height: 300,
                       child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                          mainAxisSpacing: 1,
                           crossAxisSpacing: 1,
                         ),
                         itemCount: 18,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                            decoration: BoxDecoration(
                            image: DecorationImage(
                             image: AssetImage("assets/img_5.png"),
                              fit: BoxFit.fill,
                                                            )),
                                                          );
                               }),
                                ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                    itemCount: 18,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img_5.png"),
                              fit: BoxFit.fill,
                            )),
                      );
                    }),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                    ),
                    itemCount: 18,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/img_5.png"),
                              fit: BoxFit.fill,
                            )),
                      );
                    }),
              ),

            ],
            ),
          ),
        ),
      ));
  }
}
