import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () => Navigator.of(context).popAndPushNamed("/home"),
          child: Text(
            "LOGIN",
          ),
        ),
      ),
    );
  }
}