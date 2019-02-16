import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  OptionButton(this.text, this.onPress);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new RaisedButton(
        child: new Text(
          text,
          style: new TextStyle(
            fontSize: 24.0,
            fontFamily: 'Roboto',
          ),
        ),
        onPressed: onPress,
      ),
      width: 300.0,
      height: 72.0,
    );
  }
}