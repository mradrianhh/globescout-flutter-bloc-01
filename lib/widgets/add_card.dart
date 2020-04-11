import 'package:flutter/material.dart';

import '../color_palette.dart';

class AddCard extends StatelessWidget {
  final Function addTapped;
  final String text;

  const AddCard({Key key, @required this.addTapped, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: addTapped,
        splashColor: ColorPalette.secondaryColor,
        child: Card(
          color: ColorPalette.primaryColor,
          child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.white,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        fontSize: 38.0,
                        color: Colors.white,
                      )
                    )
                  ],
                ))
        )
      )
    );
  }
}