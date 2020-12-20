import 'package:flutter/material.dart';
import 'hotel/hotel_page.dart';
import 'gift/gift_page.dart';
import 'account/account_page.dart';

import 'tab_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> screens = [
    HotelPage(),
    GiftPage(),
    AccountPage(),
  ];

  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.hotel: GlobalKey<NavigatorState>(),
    TabItem.gift: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };
  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.black),

        //fixedColor: Colors.yellowAccent,
        selectedItemColor: Colors.redAccent,
        //unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: [
          _buildItem(TabItem.hotel),
          _buildItem(TabItem.gift),
          _buildItem(TabItem.account),
        ],
        currentIndex: _selectedIndex,
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(itemData.icon),
      label: itemData.label,
    );
  }
}
