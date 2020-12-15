import 'package:flutter/material.dart';
import 'package:long_stay_hotel/constants/keys.dart';
import 'package:long_stay_hotel/constants/strings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

enum TabItem { hotel, gift, account }

class TabItemData {
  const TabItemData({
    @required this.key,
    @required this.label,
    @required this.icon,
  });

  final String key;
  final String label;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.hotel: TabItemData(
      key: Keys.hotelTab,
      label: Strings.hotel,
      icon: LineAwesomeIcons.hotel,
    ),
    TabItem.gift: TabItemData(
      key: Keys.giftTab,
      label: Strings.gift,
      icon: LineAwesomeIcons.gift,
    ),
    TabItem.account: TabItemData(
      key: Keys.accountTab,
      label: Strings.account,
      icon: FontAwesomeIcons.hotel,
    ),
  };
}
