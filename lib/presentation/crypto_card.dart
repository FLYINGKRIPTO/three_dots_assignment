import 'package:flutter/material.dart';
import 'package:three_dots_assignment/core/app_constants.dart';
import 'package:three_dots_assignment/models/crypto_api_response.dart';
import 'package:three_dots_assignment/utils/constants.dart';


class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key? key,
     required this.crypto,
  }) : super(key: key);

  final Coin crypto;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 130,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kGreyColor,
              boxShadow: const [kDefaultShadow],
            ),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 100,
              width: 150,
              child: Image.network(
                "${Constants.baseUrl}${crypto.CoinInfo?.ImageUrl}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 96,
              width: size.width - 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding),
                    child: Text(
                      crypto.CoinInfo?.FullName ?? "",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  // it use the available space
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5, // 30 padding
                      vertical: kDefaultPadding / 4, // 5 top and bottom
                    ),
                    decoration: const BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),
                    ),
                    child: Text(
                      "\$${crypto.RAW?.USD?.PRICE}",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}