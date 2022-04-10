import 'package:flutter/material.dart';
import 'package:fud/app/route_name.dart';
import 'package:fud/ui/dashboard.dart';
import 'package:fud/ui/explore.dart';
import 'package:fud/ui/profile.dart';
import 'package:fud/splash.dart';
import 'package:page_transition/page_transition.dart';
import 'package:universal_platform/universal_platform.dart';

class RouterGenerator {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.app:
        return _pageRoute(settings: settings, widget: SplashTx());
        break;
      case AppRouteName.dashBoard:
        return _pageRoute(settings: settings, widget: DashBoard());
        break;

      case AppRouteName.profile:
        return _pageRoute(settings: settings, widget: Profile());
        break;

      case AppRouteName.explore:
        return _pageRoute(settings: settings, widget: Explore());
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Column(
                    children: [
                      Center(
                        child: Text('No route defined for ${settings.name}'),
                      ),
                      TextButton(onPressed: () {}, child: Text('Close'))
                    ],
                  ),
                ));
    }
  }
}

PageRoute _pageRoute(
    {@required RouteSettings settings, @required Widget widget}) {
  if (UniversalPlatform.isAndroid) {
    return PageTransition(
        settings: settings,
        child: widget,
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 100));
  } else if (UniversalPlatform.isIOS) {
    // return CupertinoPageRoute(settings: settings, builder: (_) => widget);
    return PageTransition(
        settings: settings,
        child: widget,
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 100));
  } else {
    // return MaterialPageRoute(settings: settings, builder: (_) => widget);

    return PageTransition(
        settings: settings,
        child: widget,
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 100));
  }
}
