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
        child: Card(
            color: ColorPalette.primaryColor,
            elevation: 2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Kvalsund IL",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                        ),
                      ),
                    ),
                    SizedBox(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hif/Stein",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ScrollCounter(
                      width: 100,
                      height: 100,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    ScrollCounter(
                      width: 100,
                      height: 100,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                ),
                Text(
                  "1st half",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
