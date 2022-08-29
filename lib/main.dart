import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import './router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    // There are three different options of building the locations.
    // They are interchangeable, depending on personal taste (in this case).
    //
    // OPTION A:
    locationBuilder: simpleLocationBuilder,
    //
    // OPTION B:
    //locationBuilder: beamerLocationBuilder,
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
