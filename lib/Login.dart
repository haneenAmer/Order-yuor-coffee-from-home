import 'package:cafeni/RateUs.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome !',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Enter your information !',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(60),
                                  topLeft: Radius.circular(60))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 138.0, left: 25, right: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      hintStyle: TextStyle(color: Colors.white),
                                      hintText: "Enter your name",
                                      fillColor: Color(0xffF4C121)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      hintStyle: TextStyle(color: Colors.white),
                                      hintText: "Enter your Phone number",
                                      fillColor: Color(0xffF4C121)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      hintStyle: TextStyle(color: Colors.white),
                                      hintText: "Enter your location",
                                      fillColor: Color(0xffF4C121)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: BorderSide.none),
                                      filled: true,
                                      hintStyle: TextStyle(color: Colors.white),
                                      hintText: "Enter nearest popular point",
                                      fillColor: Color(0xffF4C121)),
                                ),
                                SizedBox(
                                  height: 50,
                                ),


                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder:
                                            (context)=>RateUs()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 40,width: 120,
                                    decoration: BoxDecoration(
                                      color: Color(0xff291F15),
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Text('Done',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                                SizedBox(height: 40,)


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                    top: 200,
                    left: 100,
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        image: DecorationImage
                          (image: AssetImage('images/add.png'))
                          ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
