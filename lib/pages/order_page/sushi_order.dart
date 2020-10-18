import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/constants/constants.dart' as CONSTANTS;
import 'package:flutter_sushi_app/models/list_data.dart';
import 'package:flutter_sushi_app/pages/order_page/custom_bottom_nav.dart';
import 'package:flutter_sushi_app/pages/order_page/order_details.dart';

class SushiOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: CONSTANTS.black,
          iconSize: 30.0,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.orange[300],
                child: Text(
                  "A",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
            bottom: 100.0,
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Order",
                style: CONSTANTS.h1,
              ),
              OrderDetails(item: sushiList[0]),
              OrderDetails(item: sushiList[1]),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery time", style: CONSTANTS.orderTxt),
                  Text("45 mins", style: CONSTANTS.orderVal),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Promo Code", style: CONSTANTS.orderTxt),
                  Text("FIRST30", style: CONSTANTS.orderVal),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: CONSTANTS.orderTxt),
                  Text(
                    r"$25.50",
                    style: CONSTANTS.orderVal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: CustomBottnOrderNavigation(),
    );
  }
}
