import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Item.dart';
import 'NavBar.dart';
import 'RateUs.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle fixestyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/start.jpg'),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                ' "TODAY IS GOOD MOOD',
                style: fixestyle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'I SPONSERD',
                style: fixestyle,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                ' BY COFFEE',
                style: fixestyle,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => NavBar(), ),);
            },
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF4C121)),
              child: Text(
                'GET START',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
