import 'package:flutter/material.dart';
import 'package:three_dots_assignment/presentation/common/app_bar.dart';
import 'package:three_dots_assignment/presentation/common/tab_item.dart';
import 'package:three_dots_assignment/utils/constants.dart';

import '../header_widget.dart';

class StocksListPage extends StatelessWidget {
  final TabItem tabItem;

  const StocksListPage({Key? key, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: TabContent(tabItem: tabItem),
    );
  }
}

class TabContent extends StatelessWidget {
  final TabItem tabItem;

  const TabContent({Key? key, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWidget(
          searchBar: false,
        ),
        Page1()
      ],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: TextButton(
          child: const Text(
            "Go To Next Page",
            style: TextStyle(color: kTextLightColor),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page2(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: TextButton(
        child: const Text(" <---- Noting here Go back!! "),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
