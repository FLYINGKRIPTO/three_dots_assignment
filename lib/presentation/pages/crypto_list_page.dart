import 'package:flutter/material.dart';
import 'package:three_dots_assignment/presentation/common/tab_item.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({Key? key, this.onPush, required this.tabItem})
      : super(key: key);
  final TabItem tabItem;
  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            children: [
              RichText(
                text: const TextSpan(
                    text: "three",
                    style: TextStyle(color: Colors.black, fontSize: 24,letterSpacing: 0.7),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'dots',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold))
                    ]),

              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: TabContent(
            tabItem: tabItem,
          ),
        ));
  }
}

class TabContent extends StatelessWidget {
  final TabItem tabItem;

  const TabContent({Key? key, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Crypto List");
  }
}
