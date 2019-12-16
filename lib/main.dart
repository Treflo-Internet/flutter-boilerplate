import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/containers/HomePage/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => HomeIndex(),
          '/about': (context) => HomeIndex(),
        },
      );
}
