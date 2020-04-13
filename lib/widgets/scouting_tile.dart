import 'package:flutter/material.dart';

import '../color_palette.dart';
import 'scouting_header.dart';

class ScoutingTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.up,
        child: Card(
            color: ColorPalette.primaryColor,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ScoutingHeader(),
                    Divider(
                      thickness: 4.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.people,
                      size: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.white,
                    )
                  ],
                ))));
  }
}
