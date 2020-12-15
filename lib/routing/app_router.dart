import 'package:flutter/material.dart';
import 'package:long_stay_hotel/app/home/account/account_page.dart';
import 'package:long_stay_hotel/app/home/gift/gift_page.dart';
import 'package:long_stay_hotel/app/home/hotel/hotel_page.dart';

class AppRoutes {
  static const homePage = '/home-page';
  static const giftPage = '/gift-page';
  static const accountPage = '/account-page';
}

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HotelPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.giftPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => GiftPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.accountPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AccountPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
        return null;
    }
  }
}
