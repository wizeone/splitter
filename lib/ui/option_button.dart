import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  OptionButton(this.text, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
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