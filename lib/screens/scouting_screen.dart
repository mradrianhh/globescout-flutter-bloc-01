import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';
import 'package:globescout_bloc_01/widgets/scouting_details.dart';
import 'package:globescout_bloc_01/widgets/scouting_header.dart';

class ScoutingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Card(
              color: ColorPalette.primaryColor,
              child: ScoutingHeader(),
            ),
            Card(
              color: ColorPalette.primaryColor,
              child: ScoutingDetails(),
            ),
          ],
        ),
      ),
    );
  }
}