import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/widgets/add_tile.dart';
import 'package:globescout_bloc_01/widgets/stat_tile.dart';

class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stats",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 10,
          itemBuilder: (context, index) {
            if(index == 0) {
              return AddTile(addTapped: () => Navigator.of(context).pushNamed("/add_stat"), text: "ADD NEW STAT");
            }
            return StatTile();
          }
        )
      ),
    );
  }
}