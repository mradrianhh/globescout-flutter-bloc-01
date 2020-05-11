import 'package:flutter/material.dart';

class ScrollCounter extends StatefulWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final BorderRadius borderRadius;

  const ScrollCounter({Key key, this.width, this.height, this.backgroundColor, this.textColor, this.fontSize, this.fontWeight, this.borderRadius}) : super(key: key);

  @override
  _ScrollCounterState createState() => _ScrollCounterState();
}

class _ScrollCounterState extends State<ScrollCounter> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanEnd: (details) {
        if(details.velocity.pixelsPerSecond.dy > 0) {
          setState(() {
            _count--;
          });
        }else if(details.velocity.pixelsPerSecond.dy < 0){
          setState(() {
            _count++;
          });
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: widget.backgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 1.0),
              blurRadius: 2.0,
            )
          ], 
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kvalsund IL",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Text(
                    _count.toString(),
                    style: TextStyle(
                      color: widget.textColor,
                      fontSize: widget.fontSize,
                      fontWeight: widget.fontWeight,
                    )
                  ),
            ),
          ],
        ),
      ),
    );
  }
}