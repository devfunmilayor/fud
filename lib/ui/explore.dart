import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fud/app/assets_name.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/vm/food_vm.dart';
import 'package:fud/widget/custom_bar.dart';
import 'package:fud/widget/grid_container.dart';
import 'package:fud/widget/hd.dart';
import 'package:fud/widget/stake_wid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

enum _Tab { one, two, three, four }

class Explore extends StatefulWidget {
  const Explore({Key key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  TabController controller;

  _Tab _selectedTab = _Tab.one;
  bool initialized = false;

  @override
  Widget build(BuildContext context) {
    final foodModel = context.watch<FoodViewModel>();
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: foodModel.foodListData ==null || foodModel.loading ? Center(
          child: SpinKitFadingCircle(
            size: 15,
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              );
            },
          ),
        ): ListView(
          scrollDirection: Axis.vertical,
          children: [
            CustomAppBar(),
            Container(
              margin: EdgeInsets.only(top: 25.h),
              height: s.height * 0.16.h,
              width: 0.9.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                //color: Colors.black,
                //   image: DecorationImage(
                //     fit: BoxFit.fill,
                //     image: AssetImage(SvgDataAssets.stake),
                //   ),
              ),
              child: CachedNetworkImage(
                width: s.width * 0.23.w,
                height: s.height * 0.09.h,
                fit: BoxFit.cover,
                imageUrl: foodModel.foodBankResp.data.first.image,
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
                errorWidget: (context, url, error) =>
                    Image.asset(SvgDataAssets.stake , fit: BoxFit.fill,),
              ),
            ),
            HD(
              height: 0.03.h,
            ),
            StakeWid(
              amount: '\$${foodModel.foodBankResp.data.first.price}',
              globalStakeData: foodModel.foodBankResp.data.first.title,
            ),
            Column(
              children: [
                SizedBox(
                  // margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05.h,
                  child: CupertinoSlidingSegmentedControl<_Tab>(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40.w, vertical: 10),
                      children: {
                        _Tab.one: Text(
                          'Steaks',
                          style: GoogleFonts.montserrat(
                              fontSize: 8.5.sp, fontWeight: FontWeight.w300),
                        ),
                        _Tab.two: Text(
                          'Veg',
                          style: GoogleFonts.montserrat(
                              fontSize: 8.5.sp, fontWeight: FontWeight.w300),
                        ),
                        _Tab.three: Text(
                          'Beef',
                          style: GoogleFonts.montserrat(
                              fontSize: 8.5.sp, fontWeight: FontWeight.w300),
                        ),
                        _Tab.four: Text(
                          'Chicken',
                          style: GoogleFonts.montserrat(
                              fontSize: 8.5.sp, fontWeight: FontWeight.w300),
                        ),
                      },
                      backgroundColor: Colors.transparent,
                      thumbColor: AppColor.appColor,
                      groupValue: _selectedTab,
                      onValueChanged: (val) {
                        setState(() {
                          _selectedTab = val;
                        });
                      }),
                ),
              ],
            ),

            //SteakR(),

            Builder(
              // ignore: missing_return
              builder: (context) {
                switch (_selectedTab) {
                  case _Tab.one:
                    return SteakWidget(
                      controller: controller,
                    );
                  case _Tab.two:
                    return SteakWidget(
                      controller: controller,
                    );
                  case _Tab.three:
                    return SteakWidget(
                      controller: controller,
                    );
                    break;
                  case _Tab.four:
                    return SteakWidget(
                      controller: controller,
                    );
                    break;
                }
              },
            ),
          ],
        ) 
      ),
    );
  }
}
