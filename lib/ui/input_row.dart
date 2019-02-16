import 'package:flutter/material.dart';

class InputRow extends StatelessWidget {
  final String descriptionText;
  final String inputFieldHint;

  final inputField = new Container();

  InputRow(this.descriptionText, this.inputFieldHint);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Expanded(
            child: new Text(
              descriptionText + ': ',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          new Container(
            width: 100.0,
            child: new TextField(
              autofocus: true,
              controller: new TextEditingController(),
              decoration: new InputDecoration(
                hintText: inputFieldHint,
                filled: true,
                fillColor: Colors.grey[300],
              ),
              keyboardType: new TextInputType.numberWithOptions(),
              onChanged: (String x) {},
            ),
          ),
        ],
      ),
    );
  }
}
