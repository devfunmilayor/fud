import 'package:flutter/material.dart';
import 'package:fud/widget/cart_search.dart';
import 'package:fud/widget/close_btn.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
    this.appTitile,
  }) : super(key: key);
  final String appTitile;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomCloseButton(
          onClose: () {},
          closeBtn: 'Explore',
        ),
        SerachAndAvat(
          cartCheck: () {},
          searchData: () {},
        )
      ],
    );
  }
}
