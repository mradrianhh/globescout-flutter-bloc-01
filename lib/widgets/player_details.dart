import 'package:flutter/material.dart';

class PlayerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.person,
            size: MediaQuery.of(context).size.width * 0.8,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Nationality: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "Height: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "Preferred Foot: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              VerticalDivider(
                thickness: 5.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Norway",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "180 cm",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "Right",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
