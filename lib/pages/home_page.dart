import 'package:flutter/material.dart';

import 'even_split_page.dart';
import 'split_by_person_page.dart';
import '../ui/option_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _routeToDivideEvenlyPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                EventSplitPage(key: widget.key)
        )
    );
  }

  void _routeToSplitByPersonPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SplitByPersonPage(key: widget.key)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OptionButton('Even Split', _routeToDivideEvenlyPage),
              Spacer(),
              OptionButton('Split By Person', _routeToSplitByPersonPage),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}