import 'package:flutter/material.dart';

import 'package:bbvaapp/src/pages/index_page.dart';
import 'package:bbvaapp/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BBVA',
      home: Scaffold(
        body: IndexPage()
        ),
    );
  }
}
