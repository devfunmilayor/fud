import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/app/app_string.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/comment_dr.dart';
import 'package:fud/widget/comment_r.dart';
import 'package:fud/widget/custom_divider.dart';
import 'package:fud/widget/hd.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentsAndOrder extends StatelessWidget {
  const CommentsAndOrder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding:
          EdgeInsets.only(top: 15.h, right: 15.w, left: 15.w, bottom: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Column(
        children: [
          CommentDataR(
            comments: '11',
            orders: '86',
          ),
          HD(
            height: 0.005.h,
          ),
          CustomDivider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            title: Text(
              AppString.about,
              style: GoogleFonts.montserrat(
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColor.randTextColor),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 10),
              child: Text(
                AppString.aboutSubtitle,
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColor.randTextColor),
              ),
            ),
          ),
          CustomDivider(),
          HD(
            height: 0.005.h,
          ),
          ContactWid(
            phone: AppString.phoneNumber,
            email: AppString.emailData,
          ),
          HD(
            height: 0.005.h,
          ),
          CustomDivider(),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 25,
            color: Color(0xffDADADA),
          )
        ],
      ),
    );
  }
}
