import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;

class SushiListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.restaurant_menu,
            color: CONSTANTS.black,
          ),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: CONSTANTS.black,
            ),
            iconSize: 30.0,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Fresh Healthy",
              style: CONSTANTS.h1,
            )
          ],
        ),
      ),
    );
  }
}
