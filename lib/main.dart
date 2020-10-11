import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/pages/landing_page.dart';

void main() {
  runApp(SushiApp());
}

class SushiApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sushi App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
      },
    );
  }
}
