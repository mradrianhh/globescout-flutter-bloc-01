import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';

class AddTile extends StatelessWidget {
  final Function addTapped;
  final String text;

  const AddTile({Key key, @required this.addTapped, @required this.text})
      : super(key: key);

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
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          size: MediaQuery.of(context).size.width * 0.2
                        ),
                        Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )))));
  }
}
