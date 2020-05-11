import 'package:flutter/material.dart';
import 'package:globescout_bloc_01/color_palette.dart';
import 'package:globescout_bloc_01/widgets/scroll_counter.dart';

class MatchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Container(
            child: Column(
              children: <Widget> [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ScrollCounter(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      backgroundColor: ColorPalette.primaryColor,
                      textColor: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-",
                          style: TextStyle(
                            color: ColorPalette.secondaryDarkColor,
                            fontSize: 70.0,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    ScrollCounter(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      backgroundColor: ColorPalette.primaryColor,
                      textColor: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "1st half",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
