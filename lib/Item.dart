import 'package:flutter/material.dart';

import 'ShoppingCard.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  int index=1;
  void incremnt(){
    setState((){
      index++;
    });
  }
  void decrement(){
    setState((){
      if (index>1){ index--;}
      else { print('1');}
    });
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: Stack(
      children: [
        Scaffold(
          body: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/caffee.jpg'))),
          ),
        ),
        Positioned(
          top: 250,
          width: 395,
          height: 600,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff291F15),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Turkish Coffee',
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffF4C121)),
                        child: Text(
                          'Coffee',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffB37832),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffB37832),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffB37832),
                          ),
                          SizedBox(
                            width: 12,
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
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'About',
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'We’re closing the gap between ',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.grey,
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'and food lovers to recreate a more',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.grey,
                                    fontSize: 13),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('compassionate, trustworthy, ',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontSize: 13)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('compassionate, trustworthy, ',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontSize: 13)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('and respectable supply chain that',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.grey,
                                      fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>ShoppingCard()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 190,
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
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '5,000 IQD',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 340,
                bottom: 240,
                height: 140,
                width: 40,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff82470B),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(60),
                          bottom: Radius.circular(60),
                        )),
                  ),
                  Positioned(
                      height: 27,
                      width: 27,
                      top: 10,
                      left: 7,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF4C121),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            incremnt();
                          },
                          child: Icon(
                            Icons.add,
                            color: Color(0xff82470B),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 55,
                      left: 10,
                      child: Text(
                        '$index',

                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      width: 27,
                      height: 225,
                      left: 7,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff62321A),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            decrement();
                          },
                          child: Icon(
                            Icons.remove,
                            color: Color(0xff82470B),
                          ),
                        ),
                      ))
                ]),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
