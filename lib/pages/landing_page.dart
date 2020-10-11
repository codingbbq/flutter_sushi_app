import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: PageView(
          children: [
            Container(
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
                    "The World of Sushi",
                    style: CONSTANTS.h1,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Healthy and Delicious, it has become favorite of many all around the world!",
                    style: TextStyle(
                      color: CONSTANTS.text,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CONSTANTS.black,
        onPressed: () {},
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
