import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tab_item.dart';
import 'package:long_stay_hotel/constants/keys.dart';
import 'package:long_stay_hotel/routing/cupertino_tab_view_router.dart';

@immutable
class CupertinoHomeScaffold extends StatelessWidget {
  const CupertinoHomeScaffold({
    Key key,
    @required this.currentTab,
    @required this.onSelectTab,
    @required this.widgetBuilders,
    @required this.navigatorKeys,
  }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.redAccent,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        key: const Key(Keys.tabBar),
        items: [
          _buildItem(TabItem.hotel),
          _buildItem(TabItem.gift),
          _buildItem(TabItem.account),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          navigatorKey: navigatorKeys[item],
          builder: (context) => widgetBuilders[item](context),
          onGenerateRoute: CupertinoTabViewRouter.generateRoute,
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Colors.redAccent : Colors.grey;
    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
      ),
      label: itemData.label,
    );
  }
}
