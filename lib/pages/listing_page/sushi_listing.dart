import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;
import 'package:flutter_sushi_app/models/list_data.dart';
import 'package:flutter_sushi_app/pages/listing_page/sushi_card.dart';
import 'package:flutter_sushi_app/pages/listing_page/sushi_tags.dart';

class SushiListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.bubble_chart,
            color: CONSTANTS.black,
          ),
          iconSize: 30.0,
          onPressed: () {
            Navigator.pop(context);
          },
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fresh Healthy",
              style: CONSTANTS.h1,
            ),
            Text(
              "Delicious Sushi",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 26.0,
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            // Tags
            SushiTags(),

            SizedBox(
              height: 20.0,
            ),

            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: sushiList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: MediaQuery.of(context).size.height / 1050,
                    mainAxisSpacing: 30.0,
                    crossAxisSpacing: 20.0,
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3),
                itemBuilder: (BuildContext context, int index) =>
                    SushiCard(item: sushiList[index]),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: CONSTANTS.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              size: 30.0,
            ),
            title: Text("Balance"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 30.0,
            ),
            title: Text("Chat"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }
}
