import 'package:flutter/material.dart';

import '../ui/input_row.dart';

class EventSplitPage extends StatefulWidget {
  EventSplitPage({Key key}) : super(key: key);

  final String title = "Even Split";

  @override
  _EventSplitPage createState() => new _EventSplitPage();
}

class _EventSplitPage extends State<EventSplitPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ),
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(30.0),
        child: new Column(
          children: <Widget>[
            new InputRow('Cost of items', '\$0.00'),
            new InputRow('Tax', '\$0.00'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Calculate',
        child: Icon(Icons.check),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}