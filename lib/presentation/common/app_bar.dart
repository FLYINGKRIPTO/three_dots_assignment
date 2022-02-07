
import 'package:flutter/material.dart';
import 'package:three_dots_assignment/utils/constants.dart';

AppBar buildAppBar(){
  return AppBar(
    elevation: 0,
    backgroundColor: kPrimaryColor,
    title: Row(
      children: [
        Image.asset(
          "assets/threedots.png",
          fit: BoxFit.cover,
          height: 36,
          width: 36,
        ),
        RichText(
          text: const TextSpan(
              text: "three",
              style: TextStyle(color: Colors.black, fontSize: 24,letterSpacing: 0.6),
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
  );
}