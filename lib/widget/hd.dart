import 'package:flutter/material.dart';

class HD extends StatelessWidget {
  const HD({
    Key key, this.height,
  }) : super(key: key);

 final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*height,
    );
  }
}
