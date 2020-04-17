import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';
import 'package:globescout_bloc_01/widgets/player_details.dart';
import 'package:globescout_bloc_01/widgets/player_header.dart';

class PlayerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details"
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.check,
              color: ColorPalette.secondaryColor,
            ),
            onPressed: () => Navigator.of(context).popUntil(ModalRoute.withName("/")),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Card(
              color: ColorPalette.primaryColor,
              child: PlayerHeader(),
            ),
            Card(
              color: ColorPalette.primaryColor,
              child: PlayerDetails(),
            )
          ],
        ),
      ),
    );
  }
}