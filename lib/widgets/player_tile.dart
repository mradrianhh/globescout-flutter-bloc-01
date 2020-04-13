import 'package:flutter/material.dart';

import '../color_palette.dart';
import 'player_header.dart';

class PlayerTile extends StatelessWidget {
  //final Function(DismissDirection) onDismissed;

  const PlayerTile({Key key}) : super(key: key);

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
                    Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.white,
                    ),
                    Divider(
                      thickness: 4.0,
                      color: Colors.white,
                    ),
                    PlayerHeader(),
                  ],
                ))));
  }
}