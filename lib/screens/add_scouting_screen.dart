import 'package:flutter/material.dart';

class AddScoutingScreen extends StatefulWidget {
  @override
  _AddScoutingScreenState createState() => _AddScoutingScreenState();
}

class _AddScoutingScreenState extends State<AddScoutingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Scouting"
        )
      ),
    );
  }
}