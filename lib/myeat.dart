// ignore_for_file: file_names, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_new, unused_import, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/model/foodsdata.dart';
import 'package:tugas_my_eat/myEat_detail.dart';
import 'package:tugas_my_eat/service/foodService.dart';

class MyEat extends StatefulWidget {
  const MyEat({Key? key}) : super(key: key);

  @override
  State<MyEat> createState() => _MyEatState();
}

class _MyEatState extends State<MyEat> {
  List<Foods> dataFoods = [];

  void getFoodsData() {
    FoodService().getData().then((value) {
      setState(() {
        dataFoods = value;
      });
    });
  }

  @override
  void initState() {
    getFoodsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 10),
                        width: 350,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.grey[500],
                              ),
                            ),
                            Text(
                              'Search...',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[500],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 82, 95, 120),
                        ),
                        child: Icon(
                          Icons.notifications_none_rounded,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Kategori("Populer"),
                    Kategori("Lunch"),
                    Kategori("Dinner"),
                    Kategori("Populer"),
                    Kategori("Beverage"),
                    Kategori("Breakfast"),
                  ],
                ),
              ),
              Wrap(
                  spacing: MediaQuery.of(context).size.width * 0.05,
                  children: List.generate(dataFoods.length, (index) {
                    return FoodList(context, dataFoods[index]);
                  })),
            ],
          ),
        ),
      )),
    );
  }
}

Widget Kategori(String kata) {
  return Column(
    children: [
      Container(
        width: 120,
        height: 35,
        margin: EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 82, 95, 120),
        ),
        child: Center(
            child: Text(
          kata,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        )),
      ),
    ],
  );
}

Widget FoodList(context, Foods data) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detailEat', arguments: data);
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, bottom: 10),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blueGrey, Colors.indigo],
                stops: [0.5, 0.9]),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(
                  data.imageFoods,
                ),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstOut)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7, left: 10, right: 5),
                        child: Icon(
                          Icons.restaurant_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          '${data.kcalFoods} Kcal',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 7, left: 25, right: 3),
                        child: Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          '${data.ratingFoods}',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 13, top: 110, bottom: 3),
                        child: Text(
                          data.nameFoods,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10, right: 5),
                          child: Icon(
                            Icons.access_time_rounded,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text(
                          data.timeFoods.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(data.imageFoods),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  data.recipeMakerFoods,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}
