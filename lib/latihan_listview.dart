// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/main.dart';

class LatihanListView extends StatelessWidget {
  List androidVers = [
    {'name': 'Ummi', 'desc': 'Saya pengguna Whatsapp', 'date': '20/08/2022'},
    {'name': 'Bapak', 'desc': 'sini by1 deck', 'date': '20/08/2022'},
    {'name': 'Android 3', 'desc': 'Pala bapa kao pecah', 'date': '20/08/2022'},
    {'name': 'Rolandd', 'desc': 'pal pale pla pal pale', 'date': '20/08/2022'},
    {'name': 'Mulya', 'desc': 'Bebas lepas...', 'date': '20/08/2022'},
    {'name': 'Android 6', 'desc': 'sedang bekerja', 'date': '20/08/2022'},
    {'name': 'Zenathan HvH', 'desc': 'jaya jaya jaya', 'date': '20/08/2022'},
    {'name': 'エヴァン [HvH]', 'desc': 'awik wok', 'date': '20/08/2022'},
    {'name': 'Fahmi', 'desc': 'butuh teman', 'date': '20/08/2022'},
    {'name': 'Mimah', 'desc': 'hooooooh', 'date': '20/08/2022'},
    {'name': 'Bang Sammmm', 'desc': 'lorem', 'date': '20/08/2022'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('WhatsApp'),
          actions: [
            Container(
              child: Icon(Icons.search),
            ),
            Container(
                margin: EdgeInsets.only(right: 15, left: 10),
                child: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_outlined),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
                child: ListView.separated(
              itemCount: androidVers.length,
              itemBuilder: (context, index) {
                return dataList(androidVers[index]['name'],
                    androidVers[index]['desc'], androidVers[index]['date']);
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
