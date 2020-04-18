import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';

class StatTile extends StatefulWidget {
  @override
  _StatTileState createState() => _StatTileState();
}

class _StatTileState extends State<StatTile> {
  bool mode = false;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.horizontal,
      child: Card(
        color: ColorPalette.primaryColor,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Akselerasjon",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Switch(
                    value: mode,
                    onChanged: (bool newValue) {
                      setState(() {
                        mode = newValue;
                      });
                    },
                    activeColor: ColorPalette.secondaryColor,
                    inactiveThumbColor: ColorPalette.secondaryColor,
                  ),
                  Text(
                    "During",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
