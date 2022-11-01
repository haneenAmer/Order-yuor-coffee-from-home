import 'package:cafeni/NavBar.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    int SelectIndex = 0;
    TextStyle fixedstyle2 = TextStyle(
        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25);
    return SafeArea(
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:
                (context)=>NavBar()));
          },
          child: Scaffold(
              body: Stack(children: [
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/start.jpg'),
          )),
      ),
      Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 120),
            child: Column(children: [
              Text(
                'Thanks for your order',
                style: fixedstyle2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please Rate Us ',
                style: fixedstyle2,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            setState(() {
                              SelectIndex = index;
                            });
                          },
                          child: Icon(Icons.star,
                              color: SelectIndex == index
                                  ? Color(0xffF4C121)
                                  : Colors.grey,size: 30,));
                    },
                  ),
                ),
              ),
            ]))
    ])),
        ));
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Icon(Icons.star,color: Color(0xffF4C121),size: 35,),
    //     SizedBox(width: 12,),
    //     Icon(Icons.star,color: Color(0xffF4C121),size: 35,),
    //     SizedBox(width: 12,),
    //     Icon(Icons.star,color: Color(0xffF4C121),size: 35,),
    //     SizedBox(width: 12,), Icon(Icons.star,color: Color(0xffF4C121),size: 35,),
    //     SizedBox(width: 12,), Icon(Icons.star,color: Color(0xffF4C121),size: 35,),
    //     SizedBox(width: 12,),
    //   ],
    // )

  }
}
