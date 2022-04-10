import 'package:flutter/foundation.dart';
import 'package:fud/model/food_model.dart';
import 'package:fud/services/api_manager.dart';
import 'package:fud/services/api_response.dart';

class FoodViewModel extends ChangeNotifier {
  FoodViewModel() {
    getFoodData();
  }

  UserError _userError;
  UserError get userError => _userError;
  bool _loading = false;
  FoodBankResp foodBankResp;
  List<FoodData> _foodListData = [];
  List<FoodData> get foodListData => _foodListData;
  bool get loading => _loading;

  setFoodData(List<FoodData> food) {
    _foodListData = food;
    notifyListeners();
  }

  setLoadingData(bool isLoading) {
    _loading = isLoading;
    notifyListeners();
  }

  setUserError(UserError errorDataResponse) {
    _userError = errorDataResponse;
    notifyListeners();
  }

  getFoodData() async {
    setLoadingData(true);
    var faqResp = await FoodService.getAllFood();
    if (faqResp is Success) {
      foodBankResp = faqResp.successResponse;
      if (kDebugMode) {
        print('foodBankResp: ${foodBankResp.data}');
      }
      setFoodData(foodBankResp.data);
    } else if (faqResp is Error) {
      UserError userError = UserError(
          code: faqResp.code, userErrorResponse: faqResp.errorResponse);
      setUserError(userError);
    }
    setLoadingData(false);
  }
}
