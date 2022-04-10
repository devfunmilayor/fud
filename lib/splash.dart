import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fud/app/route_name.dart';
import 'package:fud/util/constant.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fud/app/route_name.dart';

class SplashTx extends StatefulWidget {
  const SplashTx({Key key}) : super(key: key);

  @override
  _SplashTxState createState() => _SplashTxState();
}

class _SplashTxState extends State<SplashTx> {
  Timer _timer;
  bool hasCompleteSplash = false;

  void splashTimer() {
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(AppRouteName.dashBoard);
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      splashTimer();
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(
              itemBuilder: (BuildContext context, int index) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                      color: AppColor.rollupColor,
                      borderRadius: BorderRadius.circular(6.r)),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.02.h,
            ),
            Text(
              'TRUQ Test',
              style: GoogleFonts.montserrat(
                  fontSize: 12.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
