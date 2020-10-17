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
          margin: EdgeInsets.only(
            top: 80.0,
          ),
          padding: EdgeInsets.only(
            top: 70.0,
            left: 15.0,
            right: 15.0,
            bottom: 5.0,
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
              ],
            ),
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
              SizedBox(
                height: 5.0,
              ),
              Text(
                item.sushiSubTitle,
                style: TextStyle(
                  fontSize: 14.0,
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
        Positioned(
          top: 5.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: 130,
            width: 100,
            child: Image.asset(
              item.sushiImage,
            ),
          ),
        ),
      ],
    );
  }
}
