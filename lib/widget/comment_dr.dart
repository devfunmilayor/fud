
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/app/app_string.dart';
import 'package:fud/app/assets_name.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/contacts_r.dart';
import 'package:fud/widget/hd.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWid extends StatelessWidget {
  const ContactWid({
    Key key,
    this.phone,
    this.email,
  }) : super(key: key);
  final String phone, email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppString.contacts,
              style: GoogleFonts.montserrat(
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColor.randTextColor),
            ),
          ),
          HD(
            height: 0.02.h,
          ),
          ContactR(
            phone: phone,
            imgData: SvgDataAssets.phoneIc,
          ),
          HD(
            height: 0.02.h,
          ),
          ContactR(
            phone: email,
            imgData: SvgDataAssets.emailIc,
          ),
        ],
      ),
    );
  }
}
