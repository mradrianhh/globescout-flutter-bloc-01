import 'package:flutter/material.dart';

import '../color_palette.dart';

class ScoutingHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "7",
          style: TextStyle(
            fontSize: 82.0,
            color: ColorPalette.secondaryDarkColor,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Adrian Hardy Hansen",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Kvalsund IL - Hif/Stein",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}