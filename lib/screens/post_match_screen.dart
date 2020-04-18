import 'package:flutter/material.dart';

class PostMatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post-Match"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.of(context).popUntil(ModalRoute.withName(("/"))),
          )
        ],
      ),
    );
  }
}