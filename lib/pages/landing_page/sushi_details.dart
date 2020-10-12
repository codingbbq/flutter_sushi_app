import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;
import 'package:flutter_sushi_app/models/landing_data.dart';

class SushiDetails extends StatelessWidget {
  final SushiLandingData lp;

  const SushiDetails({Key key, this.lp}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30.0,
        right: 30.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            height: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20.0,
                    spreadRadius: 2.0,
                  )
                ]),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            lp.heading,
            style: CONSTANTS.h1,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            lp.subheading,
            style: TextStyle(
              color: CONSTANTS.text,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
