import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fud/model/food_model.dart';
import 'package:fud/services/api_response.dart';
import 'package:fud/services/base_api.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/util/shared_res.dart';
import 'package:http/http.dart' as http;
// class ApiManager extends BaseAPi {
//   Future<FoodBankResp> getAllFoodResp(BuildContext context) async {
//     String route = apiUrl;

//     var dio = Dio();

//     dio.options.headers = {
//       'Accept': 'application/json',
//       'Content-Type': 'application/json',
//     };

//     return dio
//         .get(
//       route,
//       cancelToken: BaseAPi.cancelToken,
//       options: Options(
//         followRedirects: false,
//         validateStatus: (status) {
//           return status <= 500;
//         },
//       ),
//     )
//         .timeout(Duration(seconds: 60), onTimeout: () {
//       SharedOperations.showMessage("Operations timed out", Colors.red, context);
//       return null;
//     }).then((response) {
//       if (response != null) {
//         if (kDebugMode) {
//           print(response.data);
//           print(response.statusCode);
//         }
//         if (response.statusCode == 200 &&
//             response.data["status"] == "success") {
//           return FoodBankResp.fromJson(response.data);
//         } else if (response.statusCode == 401) {
//           SharedOperations.showMessage(
//               response.data["message"], Colors.red, context);
//           return null;
//         }
//         SharedOperations.showMessage(
//             response.data["message"], Colors.red, context);
//         return null;
//       }
//       SharedOperations.showMessage(
//           "An error occured, please try again later", Colors.red, context);
//       return null;
//     }).catchError((error) {
//       if (kDebugMode) {
//         print('error data check $error');
//       }
//     });
//   }
// }


class FoodService{

    static Future<Object> getAllFood() async {
    try {
      var url = Uri.parse(apiUrl);
      var responseData = await http.get(url);
      if (responseData.statusCode == 200) {
        return Success(
            code: 200, successResponse: foodBankRespFromJson(responseData.body));
      } else {
        return Error(code: 100, errorResponse: 'Invalid Response Data');
      }
    } on HttpException {
      return Error(code: 101, errorResponse: 'No Internet');
    } on FormatException {
      return Error(code: 102, errorResponse: 'Invalid Format');
    } catch (e) {
      return Error(code: 100, errorResponse: 'Unknown Error');
    }
  }
}