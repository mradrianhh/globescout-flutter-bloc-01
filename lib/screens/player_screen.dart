import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            "Adrian Hardy Hansen",
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}