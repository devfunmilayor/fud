import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fud/util/constant.dart';
import 'package:fud/vm/dashboard_vm.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return BottomNav();
  }
}

class BottomNav extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final model = context.watch<DashBoardModel>();
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: Container(
        height: size.height * 0.09.h,
        //padding: EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r), topLeft: Radius.circular(10.r)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.06),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          
        borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r), topLeft: Radius.circular(10.r)),
          child: BottomNavigationBar(
            unselectedItemColor: AppColor.unSelectBarTextColor,
              onTap: (index) => model.updateIndex(index),
              type: BottomNavigationBarType.fixed,
              elevation: 1,
              showSelectedLabels: true,
              selectedItemColor: Colors.black,
              selectedLabelStyle: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400),
              unselectedLabelStyle: GoogleFonts.montserrat(
                  color: AppColor.unSelectBarTextColor,
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400),
              backgroundColor: Colors.white,
              currentIndex: model.currentIndex,
              items: userBottomTabItems(context)),
        ),
      ),
      body: IndexedStack(index: model.currentIndex, children: model.children),
    );
  }

  userBottomTabItems(BuildContext context) {
    return [
      BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          'assets/icons/selectExplore.svg',
          height: 12.h,
          width: 12.w,
        ),
        icon: SvgPicture.asset(
          'assets/icons/explore.svg',
          // color: App.unSelectBarTextColor,
          height: 12.h,
          width: 12.w,
        ),
        label: "Explore",
      ),
      BottomNavigationBarItem(
        activeIcon: SvgPicture.asset(
          'assets/icons/profilVector.svg',
          // color: App.unSelectBarTextColor,
          height: 12.h,
          width: 12.w,
        ),
        icon: SvgPicture.asset(
          'assets/icons/unselect-Profile.svg',
          height: 12.h,
          width: 12.w,
        ),
        label: "Profile",
      )
    ];
  }
}
