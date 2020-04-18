import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';
import 'package:globescout_bloc_01/widgets/action_button.dart';

import '../widgets/add_card.dart';
import '../widgets/player_tile.dart';
import '../widgets/scouting_tile.dart';

class MainScreen extends StatelessWidget {
  final int _playerCount = 10;
  final int _scoutingCount =
      10; // Temporary variables to create a temporary list of player and scouting tiles.

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
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Globescout",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              )),
                          Text("A scouting app",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: ColorPalette.secondaryColor,
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "Stats",
                          style: TextStyle(
                            fontSize: 22.0,
                          )
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("/stats");
                        }),
                    Divider(
                      thickness: 1.0,
                    ),
                    ListTile(
                      title: Text(
                        'Settings', 
                        style: TextStyle(
                          fontSize: 22.0,
                        )
                      ),
                      onTap: () {
                        Navigator.of(context).pushNamed("/settings");
                      },
                    ),
                    Divider(
                      thickness: 1.0,
                    ),
                  ],
                ),
              ),
              ActionButton(
                text: "LOG OUT",
                onTap: () => Navigator.of(context).popAndPushNamed("/login"),
              )
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
