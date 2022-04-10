import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../vm/food_vm.dart';
import 'steak_r.dart';

class SteakWidget extends StatefulWidget {
  const SteakWidget({Key key, this.controller}) : super(key: key);
  final TabController controller;

  @override
  State<SteakWidget> createState() => _SteakWidgetState();
}

class _SteakWidgetState extends State<SteakWidget> {
  @override
  Widget build(BuildContext context) {
    final foodModel = context.watch<FoodViewModel>();
    return foodModel.loading
        ? SpinKitFadingCircle(
            size: 15,
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            },
          )
        : GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            childAspectRatio: 6.0 / 9.0,
            children: foodModel.foodListData
                .asMap()
                .entries
                .map((e) => SteakR(
                      addToCart: () {},
                      amount: e.value.price ?? '',
                      imgUrl: e.value.image ?? '',
                      title: e.value.title ?? '',
                    ))
                .toList(),
          );
  }
}

class StakesData {
  List<String> stakeD = ['Steaks', 'Veg', 'Beef', 'Chicken', 'Veg', 'Beef'];
}
