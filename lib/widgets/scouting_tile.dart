import 'package:flutter/material.dart';

import '../color_palette.dart';
import 'player_header.dart';

class ScoutingTile extends StatelessWidget {
  final Function(DismissDirection) onDismissed;

  const ScoutingTile({Key key, @required this.onDismissed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        onDismissed: onDismissed,
        direction: DismissDirection.up,
        child: Card(
            color: ColorPalette.primaryColor,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    PlayerHeader(),
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
