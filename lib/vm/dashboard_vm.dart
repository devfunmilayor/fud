import 'package:flutter/cupertino.dart';
import 'package:fud/ui/explore.dart';
import 'package:fud/ui/profile.dart';

class DashBoardModel extends ChangeNotifier {
  ///current index of the bottom nav-bar
  int _currentIndex = 1;

  int get currentIndex => _currentIndex;

  ///children of the bottom Nav
  final List<Widget> _children = [Explore(), Profile()];

  List<Widget> get children => _children;

  ///updates the current index of the bottom nav
  updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
