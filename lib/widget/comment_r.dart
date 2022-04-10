import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wd.dart';

class CommentDataR extends StatelessWidget {
  const CommentDataR({
    Key key,
    this.orders,
    this.comments,
  }) : super(key: key);
  final String orders, comments;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Commentaries',
              style: GoogleFonts.montserrat(
                fontSize: 10.5.sp,
                fontWeight: FontWeight.w300,
                color: AppColor.randTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                comments ?? '',
                style: GoogleFonts.montserrat(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff333333),
                ),
              ),
            ),
          ],
        ),
        WD(
          width: 0.1.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Orders',
              style: GoogleFonts.montserrat(
                fontSize: 10.5.sp,
                fontWeight: FontWeight.w300,
                color: AppColor.randTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                orders ?? '',
                style: GoogleFonts.montserrat(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff333333),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
