// ignore_for_file: file_names, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_new, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/myEat_detail.dart';

class MyEat extends StatelessWidget {
  const MyEat({Key? key}) : super(key: key);

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
                    Column(
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
                            'Populer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 35,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 95, 120),
                                  width: 1.5)),
                          child: Center(
                            child: Text(
                              'Breakfast',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 35,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 95, 120),
                                  width: 1.5)),
                          child: Center(
                            child: Text(
                              'Lunch',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 35,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 95, 120),
                                  width: 1.5)),
                          child: Center(
                            child: Text(
                              'Dinner',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 35,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 82, 95, 120),
                                  width: 1.5)),
                          child: Center(
                            child: Text(
                              'Beverage',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                          //     makanan: "Satay",
                          //     avatar:
                          //         "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                          //     chef: "Chef Juna",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                  'https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Satay',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Juna',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://cdn1-production-images-kly.akamaized.net/KxuztQKl3tnUN0Fw5iAwKsnX_u0=/0x148:1920x1230/640x360/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3093328/original/069244600_1585909700-fried-2509089_1920.jpg",
                          //     makanan: "Fried Rice",
                          //     avatar:
                          //         "https://img.celebrities.id/okz/700/V74bn3/master_p2c323IUs1_1875_biodata_chef_arnold.jpg",
                          //     chef: "Chef Arnold",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                  'https://cdn1-production-images-kly.akamaized.net/KxuztQKl3tnUN0Fw5iAwKsnX_u0=/0x148:1920x1230/640x360/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3093328/original/069244600_1585909700-fried-2509089_1920.jpg',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Fried Rice',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://img.celebrities.id/okz/700/V74bn3/master_p2c323IUs1_1875_biodata_chef_arnold.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Arnold',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://asset.kompas.com/crops/WBLvTBboX-lKFj3ehPXJpmMULYY=/0x298:750x798/780x390/data/photo/2020/09/25/5f6da653c1860.jpg",
                          //     makanan: "Fried Chicken",
                          //     avatar:
                          //         "https://media.suara.com/pictures/653x366/2021/08/21/65045-galih-ginanjar-youtubecom.jpg",
                          //     chef: "Chef Galih",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                  'https://asset.kompas.com/crops/WBLvTBboX-lKFj3ehPXJpmMULYY=/0x298:750x798/780x390/data/photo/2020/09/25/5f6da653c1860.jpg',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Fried Chicken',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://media.suara.com/pictures/653x366/2021/08/21/65045-galih-ginanjar-youtubecom.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Galih',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://cdn0-production-images-kly.akamaized.net/UqZEUwWxSbN5XxvjSwT9nRfRtek=/1459x0:3990x3376/469x625/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2761430/original/062937300_1553588238-shutterstock_1287553195.JPG",
                          //     makanan: "Bakwan",
                          //     avatar:
                          //         "https://asset.kompas.com/crops/IjmmRwybxe-4tZrGRN5eMrq_po8=/0x32:700x382/750x500/data/photo/2020/01/09/5e16811892fc7.jpg",
                          //     chef: "Chef Renatta",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                  'https://cdn0-production-images-kly.akamaized.net/UqZEUwWxSbN5XxvjSwT9nRfRtek=/1459x0:3990x3376/469x625/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2761430/original/062937300_1553588238-shutterstock_1287553195.JPG',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Bakwan',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://asset.kompas.com/crops/IjmmRwybxe-4tZrGRN5eMrq_po8=/0x32:700x382/750x500/data/photo/2020/01/09/5e16811892fc7.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Renatta',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/09/24/tempe-gorengjpg-20210924014738.jpg",
                          //     makanan: "Tempe",
                          //     avatar:
                          //         "https://statik.tempo.co/data/2011/07/15/id_83813/83813_620.jpg",
                          //     chef: "Chef Bambang",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                    'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/09/24/tempe-gorengjpg-20210924014738.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Tempe',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://statik.tempo.co/data/2011/07/15/id_83813/83813_620.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Bambang',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MyEatDetail(
                          //     gambar:
                          //         "https://cdn0-production-images-kly.akamaized.net/k-8T2_IXluILxIDDBwJvGuzAtkE=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg",
                          //     makanan: "Rendang",
                          //     avatar:
                          //         "https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2018/08/29/2997583815.jpg",
                          //     chef: "Chef Gordon",
                          //   );
                          // }));
                          Navigator.pushNamed(context, '/detailEat',
                              arguments: {
                                "gambar":
                                    "https://img.inews.co.id/media/620/files/inews_new/2020/09/04/sate_ayam.jpg",
                                "makanan": "Satay",
                                "avatar":
                                    "https://asset.kompas.com/crops/TZvXDrCNKfQvoijJUwvEwRW4xA8=/67x45:1000x667/750x500/data/photo/2017/06/22/163250620170622-042902-3586-chef.juna-.atau-.junior-.rorimpandey-.jpg",
                                "chef": "Chef Juna",
                              });
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
                                  'https://cdn0-production-images-kly.akamaized.net/k-8T2_IXluILxIDDBwJvGuzAtkE=/0x120:3000x1811/1200x675/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3282059/original/075075700_1604028408-shutterstock_1788721670.jpg',
                                ),
                                fit: BoxFit.cover,
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.dstOut)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 10, right: 5),
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
                                          '50 Kcal',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 7, left: 25, right: 3),
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
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                        margin: EdgeInsets.only(
                                            left: 13, top: 110, bottom: 3),
                                        child: Text(
                                          'Rendang',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                          margin: EdgeInsets.only(
                                              left: 10, right: 5),
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
                                          '30 Minutes',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
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
                                    backgroundImage: NetworkImage(
                                        'https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2018/08/29/2997583815.jpg'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Chef Gordon',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
