import 'package:flutter/material.dart';
import 'package:tugas_my_eat/latihan_listview.dart';
import 'package:tugas_my_eat/myeat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      debugShowCheckedModeBanner: false,
      home: MyEat(),
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
