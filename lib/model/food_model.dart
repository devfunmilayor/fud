import 'dart:convert';

FoodBankResp foodBankRespFromJson(String str) => FoodBankResp.fromJson(json.decode(str));

String foodBankRespToJson(FoodBankResp data) => json.encode(data.toJson());

class FoodBankResp {
    FoodBankResp({
        this.status,
        this.message,
        this.data,
    });

    final String status;
    final String message;
    final List<FoodData> data;

    factory FoodBankResp.fromJson(Map<String, dynamic> json) => FoodBankResp(
        status: json['status'],
        message: json['message'],
        data: json['data'] == null ? null : List<FoodData>.from(json['data'].map((x) => FoodData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class FoodData {
    FoodData({
        this.title,
        this.price,
        this.image,
    });

    final String title;
    final String price;
    final String image;

    factory FoodData.fromJson(Map<String, dynamic> json) => FoodData(
        title: json['title'],
        price: json['price'],
        image: json['image'],
    );

    Map<String, dynamic> toJson() => {
        'title': title,
        'price': price,
        'image': image,
    };
}
