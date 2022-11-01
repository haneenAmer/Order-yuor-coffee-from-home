import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    TextStyle FixedStyle4=TextStyle(
      color: Colors.black,fontSize: 20
    );
    return Scaffold(
      backgroundColor: Color(0xff291F15),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 30,
                    ),

                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,height: 550,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0,
                                  top: 12),
                              child: Row(
                                children: [
                                  Icon(Icons.settings,color: Color(0xffF4C121),
                                  size: 30,),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 28.0),
                                    child: Icon(Icons.edit_note_outlined,color: Color(0xffF4C121),
                                      size: 35,),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: 80,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Tabark Hameed',
                                  style: TextStyle(color: Colors.black,
                                  fontSize: 25),),
                                SizedBox(height: 40,),
                                Divider(color: Color(0xff291F15),thickness:1,),
                                SizedBox(height: 30,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Row(
                                    children: [
                                      Text('Phone Number ',style: FixedStyle4,),
                                      SizedBox(width: 90,),
                                      Text('07715607833',style: FixedStyle4,)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40,), Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Row(
                                    children: [
                                      Text('Location ',style: FixedStyle4,),
                                      SizedBox(width: 130,),
                                      Text('Karadah Khareg',style: FixedStyle4,)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40,), Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Row(
                                    children: [
                                      Text('Nearest point ',style: FixedStyle4,),
                                      SizedBox(width: 120,),
                                      Text('The Station',style: FixedStyle4,)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40,),

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                  top: 60,
                  left: 110,
                  child: Container(
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        image: DecorationImage
                          (fit: BoxFit.fill,
                            image: AssetImage('images/ta.jpg'))
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
