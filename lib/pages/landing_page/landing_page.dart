import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;
import 'package:flutter_sushi_app/models/landing_data.dart';
import 'package:flutter_sushi_app/pages/landing_page/sushi_details.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sushiLp.length,
          itemBuilder: (context, index) => SushiDetails(lp: sushiLp[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CONSTANTS.black,
        onPressed: () {
          Navigator.pushNamed(context, '/sushiListing');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
