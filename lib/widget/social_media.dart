import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaR extends StatelessWidget {
  const SocialMediaR({
    Key key,
    this.socialMediaLinks,
  }) : super(key: key);
  final String socialMediaLinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SvgPicture.asset(socialMediaLinks),
    );
  }
}
