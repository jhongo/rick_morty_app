import 'package:flutter/material.dart';

class NavBarService extends ChangeNotifier {
  
  int _opcMenu = 0;
  PageController _pageController = PageController();

  int get opcMenuGet{
    return _opcMenu;
  }
  PageController get pageControllerGet{
    return _pageController;
  }

  set opcMenuSet(int value){
     _opcMenu = value;
     _pageController.animateToPage(value, duration: Duration(milliseconds: 250), curve: Curves.easeIn);
     notifyListeners();
  }

}