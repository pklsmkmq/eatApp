// To parse this JSON data, do
//
//     final dataFoods = dataFoodsFromJson(jsonString);

import 'dart:convert';

DataFoods dataFoodsFromJson(String str) => DataFoods.fromJson(json.decode(str));

String dataFoodsToJson(DataFoods data) => json.encode(data.toJson());

class DataFoods {
    DataFoods({
        required this.status,
        required this.message,
        required this.data,
    });

    int status;
    String message;
    List<Foods> data;

    factory DataFoods.fromJson(Map<String, dynamic> json) => DataFoods(
        status: json["status"],
        message: json["message"],
        data: List<Foods>.from(json["data"].map((x) => Foods.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Foods {
    Foods({
        required this.idFoods,
        required this.nameFoods,
        required this.imageFoods,
        required this.kcalFoods,
        required this.ratingFoods,
        required this.weightFoods,
        required this.timeFoods,
        required this.recipeMakerFoods,
        required this.ingredientFoods,
    });

    int idFoods;
    String nameFoods;
    String imageFoods;
    int kcalFoods;
    double ratingFoods;
    double weightFoods;
    int timeFoods;
    String recipeMakerFoods;
    List<IngredientFood> ingredientFoods;

    factory Foods.fromJson(Map<String, dynamic> json) => Foods(
        idFoods: json["id_foods"],
        nameFoods: json["name_foods"],
        imageFoods: json["image_foods"],
        kcalFoods: json["kcal_foods"],
        ratingFoods: json["rating_foods"].toDouble(),
        weightFoods: json["weight_foods"].toDouble(),
        timeFoods: json["time_foods"],
        recipeMakerFoods: json["recipe_maker_foods"],
        ingredientFoods: List<IngredientFood>.from(json["ingredient_foods"].map((x) => IngredientFood.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id_foods": idFoods,
        "name_foods": nameFoods,
        "image_foods": imageFoods,
        "kcal_foods": kcalFoods,
        "rating_foods": ratingFoods,
        "weight_foods": weightFoods,
        "time_foods": timeFoods,
        "recipe_maker_foods": recipeMakerFoods,
        "ingredient_foods": List<dynamic>.from(ingredientFoods.map((x) => x.toJson())),
    };
}

class IngredientFood {
    IngredientFood({
        required this.nameIngredientFoods,
        required this.weightIngredientFoods,
    });

    String nameIngredientFoods;
    String weightIngredientFoods;

    factory IngredientFood.fromJson(Map<String, dynamic> json) => IngredientFood(
        nameIngredientFoods: json["name_ingredient_foods"],
        weightIngredientFoods: json["weight_ingredient_foods"],
    );

    Map<String, dynamic> toJson() => {
        "name_ingredient_foods": nameIngredientFoods,
        "weight_ingredient_foods": weightIngredientFoods,
    };
}