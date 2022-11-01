
import 'package:flutter/material.dart';

Container Caffee(
    String sh_image,
    String sh_name,
    )
{
  return Container(
      child:
      Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [

                  BoxShadow(
                    color: Color(0xffe8e9eb),
                    spreadRadius: 1,
                    blurRadius: 1.0,

                  ),
                ]),
            height: 700,
            width: 225,
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,

                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                    image: AssetImage(sh_image),
                    fit: BoxFit.fill
                  )),

                ),
                SizedBox(height: 1,),

                Column(
                  children: [
                    Text(
                      sh_name,
                      style: TextStyle(
                           fontSize: 15),
                    ),
                    Text('with white chocolate'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
Text('5,000 IQD',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 22,),
                        Icon(Icons.add_box,color: Color(0xffF4C121),
                        size: 30,),


                      ],
                    ),


                  ],

                ),



              ],
            ),
          ),
        ),
      ])

  );
}

