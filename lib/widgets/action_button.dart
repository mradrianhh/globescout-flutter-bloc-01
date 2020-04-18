import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';

class ActionButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const ActionButton({Key key, this.onTap, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: ColorPalette.secondaryColor,
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        color: ColorPalette.primaryColor,
        child: Center(
          child: Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
