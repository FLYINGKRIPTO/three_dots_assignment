import 'package:flutter/material.dart';
import 'package:three_dots_assignment/presentation/pages/crypto_list_page.dart';
import 'package:three_dots_assignment/presentation/pages/stocks_list_page.dart';

import 'common/tab_item.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  const TabNavigator({Key? key, required this.navigatorKey, required this.tabItem}) : super(key: key);
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            routeBuilders[TabNavigatorRoutes.detail]!(context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) {
        switch(tabItem){
          case TabItem.crypto:
            return  CryptoListPage(
              tabItem: tabItem,
              onPush: (materialIndex) =>
                  _push(context),
            );
          case TabItem.stocks:
            return  StocksListPage(tabItem: tabItem);
          case TabItem.messages:
            return  Container();
          case TabItem.profile:
            return  Container();
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}