import 'package:flutter/material.dart';

import '../widgets/add_card.dart';
import '../widgets/player_tile.dart';
import '../widgets/scouting_tile.dart';

class MainScreen extends StatelessWidget {
  final int _playerCount = 10;
  final int _scoutingCount = 10; // Temporary variables to create a temporary list of player and scouting tiles.

  void _addPlayerTapped(BuildContext context) {
    Navigator.of(context).pushNamed("/add_player");
  }

  void _addScoutingTapped(BuildContext context) {
    Navigator.of(context).pushNamed("/add_scouting");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Globescout"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text("Item 1"), 
                onTap: () {
                  Navigator.pop(context);
                }
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: _playerCount,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Hero(
                            tag: "add_player_hero",
                            child: AddCard(
                              addTapped: () => _addPlayerTapped(context),
                              text: "ADD PLAYER",
                            ));
                      }
                      return PlayerTile();
                    },
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: _scoutingCount,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Hero(
                            tag: "add_scouting_hero",
                            child: AddCard(
                              text: "ADD SCOUTING",
                              addTapped: () => _addScoutingTapped(context),
                            ));
                      }
                      return ScoutingTile();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
