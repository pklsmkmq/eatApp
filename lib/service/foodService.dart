// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/services.dart';
import 'package:tugas_my_eat/model/foodsdata.dart';

class FoodService {
  getData() async {
    //proses membaca json menjadi string
    final String response =
        await rootBundle.loadString('assets/json/foods.json');

    // merubah string menjadi variable dataFoods
    DataFoods data = dataFoodsFromJson(response);

    //mengirim data list food yang spesifik
    return data.data;
  }
}
