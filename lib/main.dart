import 'package:flutter/material.dart';
import 'package:waste_collector/screens/adminNav.dart';
import 'package:waste_collector/screens/customer.dart';
import 'package:waste_collector/screens/customerNav.dart';
import 'package:waste_collector/screens/officerNav.dart';
import 'package:waste_collector/screens/officersTable.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:waste_collector/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        //    AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      title: 'Welcome',
      home: officer(),
    );
  }
}
