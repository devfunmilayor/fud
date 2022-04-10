import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fud/app/assets_name.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/hd.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wd.dart';

class SteakR extends StatelessWidget {
  const SteakR({
    Key key,
    this.imgUrl,
    this.title,
    this.addToCart,
    this.amount,
  }) : super(key: key);

  final String imgUrl, title, amount;
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: s.width * 0.23.w,
            height: s.height * 0.09.h,
            decoration: BoxDecoration(
              // color: Colors.grey,
              borderRadius: BorderRadius.circular(15.r),
              // image: DecorationImage(
              //     image: AssetImage(SvgDataAssets.spicy), fit: BoxFit.fill),
            ),
            child: CachedNetworkImage(
              width: s.width * 0.23.w,
              height: s.height * 0.09.h,
              fit: BoxFit.cover,
              imageUrl: imgUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return SpinKitFadingCircle(
                  size: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  },
                );
              },
              errorWidget: (context, url, error) => Image.asset(
                SvgDataAssets.spicy,
                fit: BoxFit.fill,
              ),
            ),
          ),
          HD(
            height: 0.01.h,
          ),
          Text(
            title ?? 'Steak Burger',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 9.2.sp, fontWeight: FontWeight.w500),
          ),
          Container(
            // width: s.width * 0.25.w,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 12.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.5.r),
              color: AppColor.appColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add to cart',
                  style: GoogleFonts.montserrat(
                    fontSize: 7.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                WD(
                  width: 0.02.w,
                ),
                Text(
                  '\$$amount' ?? '\$10',
                  style: GoogleFonts.montserrat(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
