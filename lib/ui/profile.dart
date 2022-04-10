import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/widget/buyers_details.dart';
import 'package:fud/widget/comment_wid.dart';
import 'package:fud/widget/hd.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.rollupColor,
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.passthrough,
        children: [
          Positioned(
            top: 50,
            left: 30,
            child: SvgPicture.asset('assets/icons/trophy.svg'),
          ),
          Positioned(
            top: 120,
            right: 60,
            child: SvgPicture.asset('assets/icons/pad.svg'),
          ),
          Positioned(
            top: 270,
            left: 0,
            child: SvgPicture.asset('assets/icons/headset.svg'),
          ),
          Positioned(
            top: 270,
            right: 0,
            child: SvgPicture.asset('assets/icons/plane.svg'),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 80,
            child: SvgPicture.asset('assets/icons/notification.svg'),
          ),
          Container(
            padding: EdgeInsets.only(top: 25.h),
            child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              dragStartBehavior: DragStartBehavior.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                BuyerDetails(),
                HD(
                  height: 0.05.h,
                ),
                CommentsAndOrder()
              ],
            ),
          )
        ],
      ),
    );
  }
}
