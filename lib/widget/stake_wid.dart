import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/app/app_string.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/hd.dart';
import 'package:google_fonts/google_fonts.dart';

class StakeWid extends StatelessWidget {
  const StakeWid({Key key, this.globalStakeData, this.amount})
      : super(key: key);
  final String globalStakeData, amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                globalStakeData ?? AppString.globalStake,
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  amount ?? '',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          HD(
            height: 0.01.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.globalStakeSubtitle,
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColor.appColor),
                child: Text(
                  'Add to cart',
                  style: GoogleFonts.montserrat(
                    fontSize: 9.5.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          HD(
            height: 0.02.h,
          ),
          Divider(
            height: 1,
            thickness: 1.1,
          )
        ],
      ),
    );
  }
}
