import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(Splitter());

class Splitter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splitter',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: HomePage(title: 'Splitter'),
    );
  }
}
