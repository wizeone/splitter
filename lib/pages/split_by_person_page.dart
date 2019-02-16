import 'package:flutter/material.dart';

class SplitByPersonPage extends StatefulWidget {
  SplitByPersonPage({Key key}) : super(key: key);

  final String title = "Split by person";

  @override
  _SplitByPersonPage createState() => new _SplitByPersonPage();
}

class _SplitByPersonPage extends State<SplitByPersonPage> {
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
        child:  ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            const ListTile(
              title: const Text('Item 1'),
            ),
            const ListTile(
              title: const Text('Item 2'),
            ),
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