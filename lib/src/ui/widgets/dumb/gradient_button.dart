import 'package:chat_app_ui/src/ui/global/ui_helpers.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final double height;
  final String text;
  final Function() onPressed;
  final TextStyle textStyle;

  const GradientButton({
    @required this.text,
    this.height,
    @required this.onPressed,
    this.textStyle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      child: RaisedButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff279BCD),
                Color(0xff16CCB5),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(
              5.0,
            ),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 300.0,
              minHeight: 50.0,
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: blockSize(context) * 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
