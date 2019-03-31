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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Text(
              descriptionText + ': ',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Container(
            width: 100.0,
            child: TextField(
              autofocus: true,
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: inputFieldHint,
                filled: true,
                fillColor: Colors.grey[300],
              ),
              keyboardType: TextInputType.numberWithOptions(),
              onChanged: (String x) {},
            ),
          ),
        ],
      ),
    );
  }
}
