import 'package:flutter/material.dart';

class ScoutingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.people,
            size: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                "Stat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              Text(
                "Stat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              Text(
                "Stat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
                ],
              ),
              VerticalDivider(
                thickness: 5.0,
              ),
              Column(
                children: <Widget>[
                  Text(
                "value",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              Text(
                "value",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
              Text(
                "value",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                )
              ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}