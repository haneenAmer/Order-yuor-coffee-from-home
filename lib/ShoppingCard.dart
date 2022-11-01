import 'package:cafeni/Login.dart';
import 'package:cafeni/RateUs.dart';
import 'package:flutter/material.dart';

class ShoppingCard extends StatefulWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  Widget build(BuildContext context) {
    TextStyle fixedStyle3=TextStyle(fontSize: 10,color: Colors.white);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff291F15),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 150,width: 500,
                    decoration: BoxDecoration(
                        color: Color(0xff82490D),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children:  [
                            Container(
                                height:300,width:150,
                                decoration:BoxDecoration(
                                    image:DecorationImage(
                                        fit:BoxFit.fill,
                                        image:AssetImage('images/coffeew.png')
                                    ))),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Coffee',style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),),
                                      SizedBox(width: 18,),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,size: 15,
                                            color: Color(0xffB37832),
                                          ),
                                          Icon(
                                            Icons.star,size: 15,
                                            color: Color(0xffB37832),
                                          ),
                                          Icon(
                                            Icons.star,size: 15,
                                            color: Color(0xffB37832),
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            '1.3k viwes',
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 5),
                                  Text('We’re closing the gap',style:fixedStyle3 ,),
                                  Text('between farmers',style:fixedStyle3 ,),
                                  Text('and food lovers to recreate ',style:fixedStyle3 ,),
                                  SizedBox(height: 20,),
                                  Text('5,000 IQD',style: TextStyle(
                                      fontSize: 17,fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),

                          ],
                        ),

                      ],

                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 600,
              left: 70,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffF4C121)),
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.none,
                        color: Colors.black),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
