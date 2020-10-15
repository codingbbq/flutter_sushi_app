import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/models/list_data.dart';

class SushiCard extends StatelessWidget {
  final SushiListData item;

  const SushiCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 70.0,
            left: 15.0,
            right: 15.0,
            bottom: 15.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[50],
                  Colors.white,
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.sushiTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                item.sushiSubTitle,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r"$" + item.sushiPrice,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),

        // Images
        Positioned(
          left: 0,
          right: 0,
          top: -20.0,
          child: Container(
            height: 60.0,
            child: Placeholder(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
