import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fud/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wd.dart';

class ContactR extends StatelessWidget {
  const ContactR({Key key, this.phone, this.imgData}) : super(key: key);

  final String phone, imgData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imgData),
        WD(
          width: 0.02.w,
        ),
        Text(
          phone ?? '',
          style: GoogleFonts.montserrat(
             color: AppColor.randTextColor,
              fontSize: 10.sp, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
