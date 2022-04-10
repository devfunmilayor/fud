import 'package:flutter/material.dart';

class WD extends StatelessWidget {
  const WD({
    Key key, this.width,
  }) : super(key: key);

 final double width;

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: MediaQuery.of(context).size.width*width,
    );
  }
}
