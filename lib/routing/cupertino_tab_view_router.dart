import 'package:flutter/cupertino.dart';

import 'package:long_stay_hotel/app/home/hotel/hotel_page.dart';

class CupertinoTabViewRoutes {
  static const homePage = '/home-page';
}

class CupertinoTabViewRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CupertinoTabViewRoutes.homePage:
        return CupertinoPageRoute(
          builder: (_) => HotelPage(),
          settings: settings,
          fullscreenDialog: false,
        );
    }
    return null;
  }
}
