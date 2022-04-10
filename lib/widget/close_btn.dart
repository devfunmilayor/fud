import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/wd.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({Key key, this.closeBtn, this.onClose}) : super(key: key);
  final String closeBtn;
  final Function onClose;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onClose,
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: AppColor.exploreColor,
          ),
          WD(
            width: 0.02.w,
          ),
          Text(
            closeBtn ?? '',
            style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                color: AppColor.exploreColor,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
