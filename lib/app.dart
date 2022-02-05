import 'package:flutter/material.dart';
import 'package:three_dots_assignment/presentation/common/bottom_navigation.dart';
import 'package:three_dots_assignment/presentation/common/tab_item.dart';
import 'package:three_dots_assignment/presentation/tab_navigator.dart';

class ThreeDotsApp extends StatefulWidget {
  const ThreeDotsApp({Key? key}) : super(key: key);

  @override
  _ThreeDotsAppState createState() => _ThreeDotsAppState();
}

class _ThreeDotsAppState extends State<ThreeDotsApp> {

  var _currentTab = TabItem.crypto;

  final _navigatorKeys = {
    TabItem.crypto: GlobalKey<NavigatorState>(),
    TabItem.green: GlobalKey<NavigatorState>(),
    TabItem.blue: GlobalKey<NavigatorState>(),
    TabItem.yellow: GlobalKey<NavigatorState>()
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.crypto) {
            // select 'main' tab
            _selectTab(TabItem.crypto);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.crypto),
          _buildOffstageNavigator(TabItem.green),
          _buildOffstageNavigator(TabItem.blue),
          _buildOffstageNavigator(TabItem.yellow),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
