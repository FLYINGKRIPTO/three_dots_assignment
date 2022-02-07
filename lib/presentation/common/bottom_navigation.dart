

import 'package:flutter/material.dart';
import 'package:three_dots_assignment/presentation/common/tab_item.dart';
import 'package:three_dots_assignment/utils/constants.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kPrimaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(TabItem.crypto),
        _buildItem(TabItem.stocks),
        _buildItem(TabItem.messages),
        _buildItem(TabItem.profile),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
      selectedItemColor: Colors.black,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: const  Icon(
        Icons.money,
        color: Colors.black,
      ),
      label: tabName[tabItem],
    );
  }
}