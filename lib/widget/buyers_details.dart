import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fud/app/assets_name.dart';
import 'package:fud/widget/hd.dart';
import 'package:fud/widget/social_media.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyerDetails extends StatelessWidget {
  const BuyerDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(SvgDataAssets.profile),
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Text(
            'Buyer',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 10.sp,
            ),
          ),
        ),
        Text(
          'Semedo Dapaah',
          style: GoogleFonts.nunito(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        HD(
          height: 0.012.h,
        ),
        Text(
          'Head Cook /  Marina, Lagos',
          style: GoogleFonts.nunito(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
        HD(
          height: 0.01.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialMediaR(
              socialMediaLinks: SvgDataAssets.fb,
            ),
            SocialMediaR(
              socialMediaLinks: SvgDataAssets.twitter,
            ),
            SocialMediaR(
              socialMediaLinks: SvgDataAssets.insta,
            ),
            SocialMediaR(
              socialMediaLinks: SvgDataAssets.linkedIn,
            ),
          ],
        )
      ],
    );
  }
}
