import 'package:flutter/material.dart';

enum TabItem { crypto, stocks, messages, profile }

const Map<TabItem, String> tabName = {
  TabItem.crypto: 'Crypto',
  TabItem.stocks: 'Stocks',
  TabItem.messages: 'Messages',
  TabItem.profile : 'Profile'
};
