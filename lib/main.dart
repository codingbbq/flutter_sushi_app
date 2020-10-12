import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/pages/landing_page/landing_page.dart';
import 'package:flutter_sushi_app/pages/listing_page/sushi_listing.dart';

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
        '/sushiListing': (context) => SushiListingPage(),
      },
    );
  }
}
