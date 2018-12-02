import 'package:flutter/material.dart';

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
      body: new Center(
        child:  new Column(
          children: <Widget>[
            new Text('Even Split'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New check',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}