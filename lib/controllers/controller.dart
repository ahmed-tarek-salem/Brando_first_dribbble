import 'package:flutter/cupertino.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;
  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }
}
