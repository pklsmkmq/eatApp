// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:tugas_my_eat/latihan_listview.dart';
import 'package:tugas_my_eat/model/foodsdata.dart';
import 'package:tugas_my_eat/myeat.dart';
import 'package:tugas_my_eat/myeat_Detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'List View',
      debugShowCheckedModeBanner: false,
      // home: MyEat(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyEat(),
        '/detailEat': (context) =>
            MyEatDetail(data: ModalRoute.of(context)?.settings.arguments as Foods)
      },
    );
  }
}

Widget dataList(String textData, String descData, String dateData) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.black,
      backgroundImage: NetworkImage(
          'https://smkmadinatulquran.sch.id/wp-content/uploads/2021/04/logo-SMK-MQ.png'),
    ),
    title: Text(textData),
    subtitle: Text(descData),
    trailing: Text(dateData),
  );
}

Widget myEatList(String ingredientData, String amountData) {
  return ListTile(
    leading: Text(ingredientData),
    trailing: Text(amountData),
  );
}
