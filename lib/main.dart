import 'package:flutter/material.dart';
import 'package:waste_collector/screens/welcome.dart';
import 'package:waste_collector/screens/login.dart';
import 'package:waste_collector/screens/signup.dart';
// import 'package:http/http.dart' as http;
// import 'src/waste_collector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: const login(),
    );
  }
}
