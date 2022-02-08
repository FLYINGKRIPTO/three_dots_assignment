import 'package:flutter/material.dart';
import 'package:three_dots_assignment/utils/constants.dart';

class HeaderWidget extends StatelessWidget {
  final bool searchBar;
  const HeaderWidget({Key? key, this.searchBar = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Shivanshu',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Image.asset("assets/threedots.png")
              ],
            ),
          ),
         if(searchBar) Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -15),
                    blurRadius: 20,
                    color: kGreyColor.withOpacity(0.6),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      enabled: false,
                      decoration: const InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(Icons.search)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
