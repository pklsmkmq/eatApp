// ignore_for_file: prefer_const_constructors, file_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/main.dart';
import 'myeat.dart';

class MyEatDetail extends StatelessWidget {
  final String gambar;
  final String makanan;
  final String avatar;
  final String chef;

  MyEatDetail({
    required this.gambar,
    required this.makanan,
    required this.avatar,
    required this.chef,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 480,
                      height: 300,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.blueGrey, Colors.indigo],
                              stops: [0.5, 0.9]),
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(gambar),
                              fit: BoxFit.fill,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstOut))),
                      child: SafeArea(
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                45, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Icon(
                                            Icons.arrow_back_rounded,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Food Preview",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 410, top: 10),
                                        child: Icon(
                                          Icons.bookmark_border,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 140),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(avatar),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        chef,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 480,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            makanan,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Container(
                            width: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber,
                                  size: 35,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30),
                            width: 440,
                            height: 80,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255, 82, 95, 120),
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("50",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    Text("Kcal")
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("21",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    Text("Gram")
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("30",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                    Text("Minutes")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 440,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Ingredient",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5 Items",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 82, 95, 120),
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 440,
                            // height: 500,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Meat",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "1 Kg",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 440,
                            // height: 500,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Soy Sauce",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "1 Pc",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 440,
                            // height: 500,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Peanut",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "1 Kg",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 440,
                            // height: 500,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Skewers",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "2 Pc",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 35),
                            width: 440,
                            // height: 500,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Fried Onion",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "2 Pc",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 82, 95, 120),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 82, 95, 120),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.mode_comment_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 355,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 82, 95, 120),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Start Cooking',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
