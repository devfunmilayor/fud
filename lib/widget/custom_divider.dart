
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical:8.0 , horizontal: 12),
      child: Divider(
        color: Color(0xffD5D5E0),
        thickness: 1,
        height: 0.5,
      ),
    );
  }
}
