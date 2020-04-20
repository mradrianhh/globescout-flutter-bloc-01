import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/widgets/match_header.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.of(context).pushNamed("/post_match"),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: MatchHeader()
    );
  }
}