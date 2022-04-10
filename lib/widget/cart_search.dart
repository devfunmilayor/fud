
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fud/app/assets_name.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/wd.dart';

class SerachAndAvat extends StatelessWidget {
  const SerachAndAvat({
    Key key,
    this.cartCheck,
    this.searchData,
  }) : super(key: key);

  final Function cartCheck, searchData;

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Row(
      children: [
        InkWell(
          onTap: searchData,
          child: Icon(
            Icons.search,
            size: 18,
            color: AppColor.exploreColor,
          ),
        ),
        WD(
          width: 0.02.w,
        ),
        Stack(
          children: [
            InkResponse(
              onTap: cartCheck,
              child: CircleAvatar(
                backgroundColor: AppColor.exploreColor,
                child: SvgPicture.asset(SvgDataAssets.cart),
              ),
            ),
            Positioned(
                right: 2,
                top: -10,
                child: Container(
                  height: s.height * 0.025.h,
                  width: s.width * 0.025.w,
                  decoration: BoxDecoration(
                      color: AppColor.defaultNotificationColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ))
          ],
        )
      ],
    );
  }
}
