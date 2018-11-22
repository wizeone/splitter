import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(new Splitter());

class Splitter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Splitter',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomePage(title: 'Splitter'),
    );
  }
}