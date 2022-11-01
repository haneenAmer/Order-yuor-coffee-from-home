import 'package:cafeni/ShoppingCard.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Coffee.dart';
import 'Item.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    List shimagelist = [
      'images/aldo.jpg',
      'images/sh2.png',
      'images/sh3.png',
      'images/sh4.png',
      'images/sh5.png',
      'images/sh6.png',
    ];
    TabController  _tabcontroller;
    _tabcontroller=TabController(length: 4, vsync:this, initialIndex: 0);
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color(0xff291F15),
            body: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Text(
                        'Location',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: Text(
                        'Baghdad - Karadah',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xffF4C121)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'Searh for Caffee',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          Stack(
                            children: [
                              Container(
                                  width: double.infinity,
                                  height: 700,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(60),
                                        topLeft: Radius.circular(60)),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 130.0),
                                    child: ListView(
                                      children: [
                                        Column(
                                          children: [
                                            ///1stcintainer to TabBar
                                            Container(
                                              height: 50,width: double.infinity,
                                              child: TabBar(

                                                indicatorWeight: 5,
                                                labelStyle: TextStyle(fontSize: 18),
                                                isScrollable: true,
                                                indicatorColor: Color(0xffF4C121),

                                                unselectedLabelColor: Colors.black54,
                                                labelColor: Color(0xffF4C121),
                                                controller: _tabcontroller,
                                                tabs: [
                                                  Tab(
                                                    child: Text('Coffee '),
                                                    // GestureDetector(
                                                    //     onTap: (){
                                                    //
                                                    //       showModalBottomSheet(context: context,
                                                    //         shape: RoundedRectangleBorder(
                                                    //             borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                                    //         ),
                                                    //         builder: (context)=>ShoppingCard(),
                                                    //         //isScrollControlled: true,
                                                    //       );
                                                    //     },
                                                    //     child: ( Icon(Icons.reorder_outlined)))
                                                  ),

                                                  Tab(  child: Text('Nescafe'),),
                                                  Tab(  child: Text('Latte'),),
                                                  Tab(  child: Text('Spanish Lattee'),),
                                                ],
                                              ),
                                            ),
                                            /// 2end container to TabBarView

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 1000,width:double.maxFinite,
                                                child: TabBarView(
                                                  controller: _tabcontroller,
                                                  children: [
                                                    ListView(
                                                      children: [

                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              height: 500,width: double.infinity,
                                                              child: GridView(
                                                                children: [
                                                                  GestureDetector(
                                                                    onTap: (){
                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Item()));
                                                                    },
                                                                      child: Caffee('images/caffee.jpg', 'Turkish Coffee')),
                                                                  Caffee('images/c2.jpg', 'white moca'),
                                                                  Caffee('images/c3.jpg', 'coffe'),
                                                                  Caffee('images/c1.jpg', 'cpffee'),
                                                                  Caffee('images/c1.jpg', 'coffee'),

                                                                ],
                                                                gridDelegate:
                                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
                                                              ),
                                                            ),

                                                            SizedBox(height: 25,),

                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ListView(
                                                      children: [

                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                              height: 500,width: double.infinity,
                                                              child: GridView(
                                                                children: [

                                                                  Caffee('images/caffee.jpg', 'Coffee'),
                                                                  Caffee('images/c2.jpg', 'white moca'),
                                                                  Caffee('images/c3.jpg', 'coffe'),
                                                                  Caffee('images/c1.jpg', 'cpffee'),
                                                                  Caffee('images/c1.jpg', 'coffee'),

                                                                ],
                                                                gridDelegate:
                                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
                                                              ),
                                                            ),

                                                            SizedBox(height: 25,),

                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Text('3'),
                                                    Text('3'),
                                                  ],
                                                ),
                                              ),
                                            )

                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 150,
              left: 40,
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage('images/home.jpg')),
                    borderRadius: BorderRadius.circular(20)),
              ))
        ],
      ),
    );
  }
}
